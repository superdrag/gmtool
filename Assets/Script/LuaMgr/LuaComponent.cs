using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using UnityEngine;
using UnityEngine.EventSystems;
using XLua;

public class LuaComponent : MonoBehaviour, IPointerClickHandler, IPointerDownHandler, IDragHandler, 
    IPointerUpHandler,IEndDragHandler, IPointerEnterHandler, IPointerExitHandler
{
    public RectTransform uiRootTran; 
    private RectTransform goRect;          
    Vector2 offset = new Vector3();    //用来得到鼠标和图片的差值 
    protected static bool initialize = false;

    internal static float lastGCTime = 0;
    internal const float GCInterval = 1;//1 second 

    private Action luaStart;
    private Action luaUpdate;
    private Action luaOnDestroy;

    private Action luaOnClick;
    private Action luaOnDown;
    private Action luaOnUp;
    private Action luaOnDrag;
    private Action luaOnEndDrag;
    private Action luaOnMoveIn;
    private Action luaOnMoveOut;    

    private LuaTable scriptEnv;    

    public void Init()
    {
        initialize = true;
    }
    protected void Awake()
    {
        //UnityEngine.Debug.Log("LuaComponent Awake name..." +this.name);

        scriptEnv = LuaMgr.LuaEnv.NewTable();
        // 为每个脚本设置一个独立的环境，可一定程度上防止脚本间全局变量、函数冲突
        LuaTable meta = LuaMgr.LuaEnv.NewTable();
        meta.Set("__index", LuaMgr.LuaEnv.Global);
        scriptEnv.SetMetaTable(meta);
        meta.Dispose();

        scriptEnv.Set("self", this);

        string luaPath = "";
        List<string> pathList = GFunc.GetDirFiles(GFunc.AppRunPath()+ ResMgr.LOAD_LUA_DIR);
        foreach (var _path in pathList)
        {
            if(System.IO.Path.GetFileNameWithoutExtension(_path) == this.name )
            {
                luaPath = _path;
                UnityEngine.Debug.Log("LuaComponent luaPath....................." +_path);
                break;
            }
        }
        string strLuaContent = File.ReadAllText(luaPath);        
        
        LuaMgr.LuaEnv.DoString(strLuaContent, this.name , scriptEnv);

        //UnityEngine.Debug.Log("name.text..." +this.name);

        Action luaAwake = scriptEnv.Get<Action>("awake");
        scriptEnv.Get("start", out luaStart);
        scriptEnv.Get("update", out luaUpdate);
        scriptEnv.Get("ondestroy", out luaOnDestroy);

        scriptEnv.Get("onClick", out luaOnClick);   
        scriptEnv.Get("onDown", out luaOnDown);
        scriptEnv.Get("onUp", out luaOnUp);         
        scriptEnv.Get("onDrag", out luaOnDrag);
        scriptEnv.Get("onEndDrag", out luaOnEndDrag);     
        scriptEnv.Get("onMoveIn", out luaOnMoveIn);
        scriptEnv.Get("onMoveOut", out luaOnMoveOut);                  

        if (luaAwake != null)
        {
            luaAwake();
        }        
       
    }
    protected void Start()
    {
        if (luaStart != null)
        {
            luaStart();
        }
    }
     
    void Update()
    {
        //UnityEngine.Debug.Log("c udpate");
        if (luaUpdate != null)
        {
            luaUpdate();
        }
        if (Time.time - lastGCTime > GCInterval)
        {
            LuaMgr.LuaEnv.Tick();
            lastGCTime = Time.time;
        }
    }

    protected void OnDestroy()
    {
        if (luaOnDestroy != null)
        {
            luaOnDestroy();
        }
        luaOnDestroy = null;
        luaUpdate = null;
        luaStart = null;

        luaOnDrag = null;
        luaOnEndDrag = null;

        scriptEnv.Dispose();
    }


    ///-----------------------------------------------------------------------------------

    public void OnPointerClick(PointerEventData eventData)
    {
        if(luaOnClick != null)
        {
            luaOnClick();
        }
        Debug.Log("OnPointerClick");
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        Debug.Log("OnPointerDown");
        if(luaOnDown != null)
        {
            luaOnDown();
        }        
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        Debug.Log("OnPointerUp");
        if(luaOnUp != null)
        {
            luaOnUp();
        } 
    }

    public void OnDrag(PointerEventData eventData)   
    {
        //Debug.Log("OnDrag............ "); 

        Vector2 mouseDrag = eventData.position;   //当鼠标拖动时的屏幕坐标
        Vector2 uguiPos = new Vector2();   //用来接收转换后的拖动坐标

        bool isRect = RectTransformUtility.ScreenPointToLocalPointInRectangle(uiRootTran, mouseDrag, eventData.enterEventCamera, out uguiPos);

        if (isRect)
        {
            goRect.anchoredPosition = offset + uguiPos;
        }
        if(luaOnDrag != null)
        {
            luaOnDrag();
        }
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        Debug.Log("OnEndDrag");
        if(luaOnEndDrag != null)
        {
            luaOnEndDrag();
        } 
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        Debug.Log("OnPointerEnter");
        if(luaOnMoveIn != null)
        {
            luaOnMoveIn();
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        Debug.Log("OnPointerExit");
        if(luaOnMoveOut != null)
        {
            luaOnMoveOut();
        }
    }    
 


}

