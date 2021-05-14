using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public abstract class View
{  
    private VIEWID viewId;
    public VIEWID ViewId { get { return viewId;} set {viewId = value;} }
    private GameObject viewRoot;
    public GameObject ViewRoot { get { return viewRoot;} set {viewRoot = value;} }
    private bool isCreateGo;
    public bool IsCreateGo{ get {return isCreateGo;} set {isCreateGo = value;} }
    private bool isShow;
    public bool IsShow{ get {return isShow;} set {isShow = value;} }

    public Action<View> onClickCallBack = null;

    public View()
    {
        this.viewRoot = null;
    }

    public abstract void OnCreateGo(System.Action action);

    public virtual void OnShow()
    {
        if(viewRoot != null)
        {
            Logger.Log("View OnShow:",viewId);
            viewRoot.SetActive(true);            
        }
        IsShow = true;
    }
    public virtual void OnHide()
    {
        if(viewRoot != null)
        {
            Logger.Log("View OnHide:",viewId);
            viewRoot.SetActive(false);            
        }
        IsShow = false; 
    }

    public virtual void OnUpdate()
    {
        
    }

    public virtual void OnFixedUpdate()
    {

    }

    public virtual void OnDestroy()
    {
        if (this.viewRoot != null)
        {
            GameObject.Destroy(this.viewRoot);            
        }
        this.viewRoot = null;
    }

    public virtual void SetPostion(Vector3 pos)
    {
        viewRoot.transform.localPosition = pos;            
    }

    public virtual void MovePostion(Vector3 pos)
    {
        viewRoot.transform.localPosition = pos;            
    }


}
