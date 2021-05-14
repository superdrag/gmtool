
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum VIEWID
{
    //-------------------------------
    DIALOG_ALERT = 1,
    //-------------------------------
    LOGIN   = 11, 
    //-------------------------------
    HALL_BG    = 51,
    HALL_CREATEGAME    = 52,
    HALL_CREATEROOM    = 53, 
    //-------------------------------
    ROOM_BG      = 101,    
    ROOM_MENU    = 102,  
    ROOM_CHEATCARD   = 108, 
    //-------------------------------  
    MAH_ROLEINFO = 1001,
    MAH_CARD_POOL = 1002,
    MAH_THINK_LIST = 1003,

    //-------------------------------
    POKER_DDZ_ROLEINFO    = 2001,
}

public static class UIMgr
{
    private static GameObject uiRoot;
    private static GameObject uiBG;
    private static GameObject uiGame;    
    private static GameObject uiMain;
    private static GameObject uiEff;
    private static GameObject uiPop;
    private static GameObject uiAlert;
    private static GameObject mask;
    private static Dictionary<VIEWID, View> viewDict;
    

    ////////////////////////////

    public static void InitReg()
    {
        //COMMON        
        RegisterUI(VIEWID.DIALOG_ALERT,AlertMsgView.Instance);

        //LOGIN
        RegisterUI(VIEWID.LOGIN,LoginView.Instance);        
    }    

    public static void Init()
    {
       
        uiRoot = GameObject.Find("UIRoot");
        uiBG = GameObject.Find("UIRoot/UIBG");
        uiGame = GameObject.Find("UIRoot/UIGame");
        uiMain = GameObject.Find("UIRoot/UIMain");        
        uiEff = GameObject.Find("UIRoot/UIEff");
        uiPop = GameObject.Find("UIRoot/UIPop");
        uiAlert = GameObject.Find("UIRoot/UIAlert");

        mask = GameObject.Find("UIRoot/Mask");
        if (mask != null)
        {
            mask.SetActive(false);
        }        
        //uiBG = uiRoot.transform.Find("UIBG").GetComponent<Image>();
        viewDict = new Dictionary<VIEWID, View>();   
        InitReg(); 
        InitAllUI();

        //GetUI(VIEWID.DIALOG_SIMPLE).OnCreateGo();    
        //GetUI(VIEWID.DIALOG_SIMPLE).OnHide();    
    }

    public static GameObject UIRoot { get { return uiRoot; } }
    public static GameObject UIBG { get { return uiBG; } }
    public static GameObject UIGame { get { return uiGame; } }
    public static GameObject UIMain { get { return uiMain; } }
    public static GameObject UIEff { get { return uiEff; } }
    public static GameObject UIPop { get { return uiPop; } }
    public static GameObject UIAlert { get { return uiAlert; } }

    public static void InitAllUI()
    {
        foreach (var dic in viewDict)
        {
            var view = dic.Value;
            view.IsCreateGo = false;
            view.IsShow = false;
            view.OnDestroy();
        }
        if (mask != null)
        {
            mask.SetActive(false);
        }
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

    public static void CreateUIGo(VIEWID viewId)
    {
        View view = GetUI(viewId);
        if(view == null)
        {
            Debug.LogError("CreateUIGo no find:" + viewId);
            return;            
        }
        
        if(view.IsCreateGo == true)
        {
            Debug.LogError("CreateUIGo has create:" + viewId);
            return;                
        }
        
        view.OnCreateGo( ()=> {
            view.IsCreateGo = true;
            view.OnHide();
        } ) ; 
 
    } 

    public static void ShowUI(VIEWID viewId, Action action = null)
    {        
        View view = GetUI(viewId);
        if(view == null)
        {
            Debug.LogError("ShowUI no find:" + viewId);
            return;            
        }

        if (!view.IsCreateGo)
        {          
           view.OnCreateGo( () => {
                view.IsCreateGo = true;
                if (!view.IsShow)
                {    
                    view.IsCreateGo = true;            
                    view.OnShow(); 
                    if( action != null )
                    {
                        action();
                    }           
                }                
            } );            
        }
        else 
        {            
            if (!view.IsShow)
            {                
                view.OnShow();  
                if( action != null )
                {
                    action();
                }                             
            }
        }
    }    

    public static void HideUI(VIEWID viewId)
    {
        View view = GetUI(viewId);
        if(view == null)
        {
            Debug.LogError("HideUI no find:" + viewId);
            return;            
        }        

        if(view.IsShow)
        {
            Debug.Log("HideUI ---------------:" + viewId);
            view.OnHide(); 
        }        
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
            Debug.LogError("无效ViewID:" + viewID);
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
 
}
