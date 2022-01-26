//using DG.Tweening;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Object = UnityEngine.Object;
using System.Globalization;

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
            go.GetComponent<RectTransform>().localPosition = new Vector3( go.GetComponent<RectTransform>().localPosition.x, go.GetComponent<RectTransform>().localPosition.y, 0 );
    
        }
        else
        {
            go.localPosition = Vector3.zero;
        }        

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

    public static Transform FindTF(Transform go, string path)  
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
        Transform _go = FindTF(go, path.Trim());
        if (_go == null)
        {
            Logger.Error("Error GetComponentTT Find ",path);
            return null;
        }
        return (TT)_go.GetComponent<TT>();
    }

    public static void SetSprite(Image image, string path)
    {
        if (image == null)
        {
            Logger.Error("Image = null path="+path);
            return;
        }

        if (string.IsNullOrEmpty(path)) {
            image.sprite = null;
            Logger.Error("sprite Path = null ");
            return;
        }

        Texture2D tt = ResMgr.LoadRes<Texture2D>(path);
        Sprite sprite = Sprite.Create(tt, new Rect(0, 0, tt.width, tt.height), Vector2.zero);
        image.sprite = sprite;
    }  
    
    public static void SetColor(Image image, string colorString)
    {
        string[] colors = colorString.Split('/');
        image.color = new Color32(Byte.Parse(colors[0]),Byte.Parse(colors[1]),Byte.Parse(colors[2]),Byte.Parse(colors[3]));        
    }

    public static void SetColor(Text text, string colorString)
    {
        string[] colors = colorString.Split('/');
        text.color = new Color32(Byte.Parse(colors[0]),Byte.Parse(colors[1]),Byte.Parse(colors[2]),Byte.Parse(colors[3]));  
    }

}
