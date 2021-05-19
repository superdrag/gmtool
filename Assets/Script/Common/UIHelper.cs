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

    public static Transform AddChild(Transform parent, Transform go)
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

        go.SetParent(parent.transform);

        go.localScale = Vector3.one;
        if( go.GetComponent<RectTransform>() )
        {
            go.GetComponent<RectTransform>().anchoredPosition = Vector3.zero;
            go.GetComponent<RectTransform>().offsetMin = Vector2.zero;
            go.GetComponent<RectTransform>().offsetMax = Vector2.zero;
        }
        go.localPosition = Vector3.zero;

        go.gameObject.layer = parent.gameObject.layer;        
        return go;
    }

    public static Transform AddChild(Transform parent, Transform go, Vector3 position)
    {
        Transform _go = AddChild(parent, go);
        if( _go != null )
        {
            _go.localPosition = position;
        }   
        return _go;
    }    

    public static Transform AddChild(Transform parent, Transform go, Vector3 position, Vector3 eAngle)
    {
        Transform _go = AddChild(parent, go);
        if( _go != null )
        {
            _go.localPosition = position;
            _go.localEulerAngles = eAngle;
        }        
        return _go;
    }

    public static Transform FindGo(Transform go, string path)  
    {
        Transform tf = go.Find(path.Trim());
        if (tf == null)
        {
            Logger.Error("Error FindGo Find ",path);
            return null;
        }
        return tf;
    }

    public static TT GetComponent<TT>(Transform go, string path) where TT : Component 
    {
        Transform _go = FindGo(go, path.Trim());
        if (_go == null)
        {
            Logger.Error("Error GetComponentTT Find ",path);
            return null;
        }
        return (TT)_go.GetComponent<TT>();
    }
    
}
