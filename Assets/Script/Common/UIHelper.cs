//using DG.Tweening;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Object = UnityEngine.Object;

/// <summary>
///     UI管理器
/// </summary>
public class UIHelper
{
    private static UIHelper instance;

    public static UIHelper Instance
    {
        get
        {
            if (instance == null)
                instance = new UIHelper();
            return instance;
        }
    }

    public static GameObject AddChild(GameObject parent, GameObject go)
    {
        if( parent == null )
        {
            Logger.Error("UIHelper AddChild parent null");
            return null;
        }

        if( go == null )
        {
            Logger.Error("UIHelper AddChild go null");
            return null;
        }

        Transform t = go.transform;
        //t.parent = parent.transform;
        t.SetParent(parent.transform);
        t.localScale = Vector3.one;
        go.layer = parent.layer;        
        return go;
    }

    public static GameObject AddChild(GameObject parent, GameObject go, Vector3 position)
    {
        GameObject _go = AddChild(parent, go);
        if( _go != null )
        {
            _go.transform.localPosition = position;
        }   
        return _go;
    }    

    public static GameObject AddChild(GameObject parent, GameObject go, Vector3 position, Vector3 eAngle)
    {
        GameObject _go = AddChild(parent, go);
        if( _go != null )
        {
            _go.transform.localPosition = position;
            _go.transform.localEulerAngles = eAngle;
        }        
        return _go;
    }

    public static GameObject FindGo(GameObject go, string path)  
    {
        Transform tf = go.transform.Find(path.Trim());
        if (tf == null)
        {
            Logger.Error("Error FindGo Find ",path);
            return null;
        }
        return tf.gameObject;
    }

    public static TT GetComponent<TT>(GameObject go, string path) where TT : Component 
    {
        GameObject _go = FindGo(go, path.Trim());
        if (_go == null)
        {
            Logger.Error("Error GetComponentTT Find ",path);
            return null;
        }
        return (TT)_go.GetComponent<TT>();
    }
    
}
