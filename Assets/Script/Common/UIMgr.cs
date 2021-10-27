
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum VIEWID
{
    //-------------------------------
    ALERTINFO = 1,
    BLANK = 2,
    //-------------------------------
    LOGIN   = 11, 
    
    //-------------------------------
    MENU = 21,
    TITLE = 22,
    Recharge = 31,
    Mail = 32,
    MailSend = 33,

    Limit = 35,
    LimitNew = 36,  

    GMAcc = 38,
    GMAccNew = 39, 
    
    CoreView = 41,
    CoreSumView = 42,
    RecordView = 43,

    PayView = 45,
    SaveView = 46,
    TaskView = 47,
    PayGiftView = 48,
    DiamondView = 49,
    FuncView = 51,
    CardView = 52,



    //-------------------------------
}

public static class UIMgr
{
    private static Transform uiRoot;
    private static Transform uiBG; 
    private static Transform uiMain;
    private static Transform uiMenu;
    private static Transform uiPop;
    private static Transform mask;
    private static Dictionary<VIEWID, View> viewDict;
    public static VIEWID curViewDataId;
    

    ////////////////////////////

    public static void InitReg()
    {
        //COMMON        
        RegisterUI(VIEWID.ALERTINFO,AlertInfoView.Instance);
        RegisterUI(VIEWID.BLANK,BlankView.Instance);
        //LOGIN
        RegisterUI(VIEWID.LOGIN,LoginView.Instance);

        RegisterUI(VIEWID.MENU,MenuView.Instance);   
        RegisterUI(VIEWID.TITLE,TitleView.Instance);   
         
        RegisterUI(VIEWID.Recharge,RechargeView.Instance);    
        RegisterUI(VIEWID.Mail,MailView.Instance);
        RegisterUI(VIEWID.MailSend,MailSendView.Instance);

        RegisterUI(VIEWID.CoreView,CoreView.Instance);
        RegisterUI(VIEWID.CoreSumView,CoreSumView.Instance);        

        RegisterUI(VIEWID.PayView,PayView.Instance);

        RegisterUI(VIEWID.Limit,LimitView.Instance);
        RegisterUI(VIEWID.LimitNew,LimitNewView.Instance);

        RegisterUI(VIEWID.GMAcc,GMAccView.Instance);
        RegisterUI(VIEWID.GMAccNew,GMAccNewView.Instance);    

        RegisterUI(VIEWID.RecordView,RecordView.Instance);

        RegisterUI(VIEWID.SaveView,SaveView.Instance);

        RegisterUI(VIEWID.FuncView,FuncView.Instance);
        RegisterUI(VIEWID.TaskView,TaskView.Instance);

        RegisterUI(VIEWID.PayGiftView,PayGiftView.Instance);
        RegisterUI(VIEWID.DiamondView,DiamondView.Instance);

        RegisterUI(VIEWID.CardView,CardView.Instance);
        
    }    

    public static void Init()
    {
       
        uiRoot = GameObject.Find("UICanvas").transform;
        uiBG = GameObject.Find("UICanvas/UIBG").transform;
        uiMain = GameObject.Find("UICanvas/UIMain").transform;        
        uiMenu = GameObject.Find("UICanvas/UIMenu").transform;  
        uiPop = GameObject.Find("UICanvas/UIPop").transform;

        // mask = GameObject.Find("UIRoot/Mask").transform;
        // if (mask != null)
        // {
        //     mask.gameObject.SetActive(false);
        // }        
        //uiBG = uiRoot.transform.Find("UIBG").GetComponent<Image>();
        viewDict = new Dictionary<VIEWID, View>();   
        InitReg(); 
        InitAllUI();

        //GetUI(VIEWID.DIALOG_SIMPLE).OnCreateGo();    
        //GetUI(VIEWID.DIALOG_SIMPLE).OnHide();    
    }

    public static Transform UIRoot { get { return uiRoot; } }
    public static Transform UIBG { get { return uiBG; } }
    public static Transform UIMain { get { return uiMain; } }
    public static Transform UIMenu { get { return uiMenu; } }
    public static Transform UIPop { get { return uiPop; } }

    public static void InitAllUI()
    {
        foreach (var dic in viewDict)
        {
            var view = dic.Value;
            view.IsCreateGo = false;
            view.IsShow = false;
            view.OnDestroy();
        }
        // if (mask != null)
        // {
        //     mask.gameObject.SetActive(false);
        // }
    }    

    public static void RegisterUI(VIEWID viewId, View view)
    {       
        if (view == null)
        {
            Debug.LogError("RegisterUI view null " + viewId);
            return;
        }

        if (viewDict.ContainsKey(viewId))
        {
            Debug.LogError("RegisterUI has reg:" + viewId);
            return;
        }
     
        view.ViewId = viewId;
        viewDict.Add(viewId, view);                        
    }    


    public static void ShowUI(VIEWID viewId, params object[] args)
    {        
        View view = GetUI(viewId);
        if(view == null)
        {
            Debug.LogError("ShowUI no find:" + viewId);
            return;            
        }

        if(!view.IsCreateGo)
        {          
            view.OnCreateGo();
            if(view.ViewRoot == null)
            {
                Debug.LogError("ShowUI OnCreateGo fail:" + viewId);
                return;
            } 
            view.IsCreateGo = true;
        }
      
        if(view.IsShow)
        {                 
            Debug.Log( "ShowUI has show:" + viewId );    
            return;                                                
        }

        Logger.Log("View OnShow:",viewId);
        view.OnShow(args);  
        //view.ViewRoot.GetComponent<RectTransform>().anchoredPosition = Vector3.zero;
        view.ViewRoot.gameObject.SetActive(true); 
        view.IsShow = true;              
    }    

    public static void RefreshUI(VIEWID viewId)
    {        
        View view = GetUI(viewId);
        if(view == null)
        {
            Debug.LogError("RefreshUI no find view:" + viewId);
            return;            
        }

        if(!view.IsCreateGo || view.ViewRoot == null)
        {          
            Debug.LogError("RefreshUI No CreateGo :" + viewId);
            return;
        }
      
        // if(!view.IsShow)
        // {                 
        //     Debug.Log( "ShowUI No Show:" + viewId );    
        //     return;                                                
        // }

        Logger.Log("View RefreshUI:",viewId);
        view.OnShow();             
    }    


    public static void HideUI(VIEWID viewId)
    {
        View view = GetUI(viewId);
        if(view == null)
        {
            Debug.LogError("HideUI no find:" + viewId);
            return;            
        }        

        if(!view.IsShow)
        {
            Debug.Log( "HideUI no show:" + viewId );
            return;
        }   

        if(null == view.ViewRoot)
        {
            Debug.LogError("HideUI ViewRoot null:" + viewId);
            return;
        }   

        Logger.Log("View OnHide:",viewId);
        view.OnHide();
        view.ViewRoot.gameObject.SetActive(false);  
        view.IsShow = false;                      
    }

    public static View GetUI(VIEWID viewID)
    {
        if (!viewDict.ContainsKey(viewID))
        {
            Logger.Error("GetUIView no find:" + viewID);
            return null;        
        }
   
        return viewDict[viewID];
    }  

    public static T GetUI<T>(VIEWID viewID) where T: View
    {               
        return (T)GetUI(viewID);                
    }    

    public static void DestroyUI(VIEWID viewID)
    {
        if (viewDict.ContainsKey(viewID))
        {
            var view = viewDict[viewID];
            view.OnDestroy();
            view.IsCreateGo = false;
            view.IsShow = false;
        }
        else
        {
            Debug.LogError("DestroyUI No Find UI:" + viewID);
        }
    }

    public static void DoUpdate()
    {
        if( viewDict == null ) return;
        foreach (var dic in viewDict)
        {
            VIEWID id = dic.Key;
            View view = dic.Value;
            if(view == null)
            {
                Logger.Error("UIMgr update view null id:"+id);
            }
            if (view.IsShow)
            {
                view.OnUpdate();
            }
        }
    }

    public static void DoFixedUpdate()
    {
        // foreach (var dic in viewDict)
        // {
        //     var view = dic.Value;
        //     if (view.IsShow)
        //     {
        //        view.OnFixedUpdate();
        //     }
        // }
    }
 
    public static void SetServTitle(string servName)
    {
        Text servtxt = uiBG.Find("servText").GetComponent<Text>();
        servtxt.text = servName;
    }
}
