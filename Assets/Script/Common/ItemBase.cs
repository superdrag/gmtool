using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public abstract class ItemBase
{  
    public Transform root;
    public Transform Root { get { return root;} }
    private bool isCreateGo;
    public bool IsCreateGo{ get {return isCreateGo;} set {isCreateGo = value;} }
    private bool isShow;
    public bool IsShow{ get {return isShow;} set {isShow = value;} }

    public Action<ItemBase> onClickCallBack = null;

    public List<string> titleData = new List<string>();

    public List<List<string>> itemDataList = new List<List<string>>();

    public ItemBase()
    {
        this.root = null;
    }

    public virtual void Create()
    {
        
    }

    public virtual void SetOnClick()
    {
        EventTriggerListener.Get(root.gameObject).onClick = OnClickItem;
    }

    public virtual void SetGoName(string name)
    {
        root.gameObject.name = name;
    }    

    // public virtual void OnDestroy()
    // {
    //     if (this.root != null)
    //     {
    //         GameObject.Destroy(this.root);            
    //     }
    //     this.root = null;
    // }

    public virtual void OnClickItem(GameObject go)
    {
        //Logger.Log("111111111111111111111111111111111");
    }   
}
