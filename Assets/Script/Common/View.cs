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
    protected Transform viewRoot;
    public Transform ViewRoot { get { return viewRoot;} }
    private bool isCreateGo;
    public bool IsCreateGo{ get {return isCreateGo;} set {isCreateGo = value;} }
    private bool isShow;
    public bool IsShow{ get {return isShow;} set {isShow = value;} }

    public Action<View> onClickCallBack = null;

    public View()
    {
        this.viewRoot = null;
    }

    public abstract void OnCreateGo();

    public abstract void OnShow(params string[] args);

    public virtual void OnHide()
    {

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
        viewRoot.localPosition = pos;            
    }

    public virtual void MovePostion(Vector3 pos)
    {
        viewRoot.localPosition = pos;            
    }


}
