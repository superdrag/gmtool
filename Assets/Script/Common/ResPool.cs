using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

///// 用于预加载

public class ResPool
{
    private static ResPool ins;
    public static ResPool Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new ResPool();
            }
            return ins;
        }
    }    

    private Dictionary<string, UnityEngine.Object> assetDict = new Dictionary<string, UnityEngine.Object>();
    public static int RES_OUTOF_SECOND = 60 * 30;

    public bool HasResObj(string assetPath)
    {
        //Output.Log("ResMgr GetResObj .............",path.ToString());
        if( assetDict.ContainsKey(assetPath) )
        {            
            return true;
        }
        return false;
    }

    public UnityEngine.Object GetResObj(string assetPath)
    {
        //Output.Log("ResMgr GetResObj .............",path.ToString());

        //string assetPath = ResMgr.LOAD_RES_DIR + resPath.ToLower() + GData.ResABExName;

        if( !assetDict.ContainsKey(assetPath) )
        {
            Logger.Error("ResMgr GetResObj no find path.............",assetPath);
            return null;
        }
        return assetDict[assetPath];
    }

    public void AddResObj(string assetPath, UnityEngine.Object obj)
    {
        if( !assetDict.ContainsKey(assetPath) )          
        {
            Logger.Log("ResMgr AddResObj!!!!!!!!! .............",assetPath);
            assetDict[assetPath] = obj;
        }
        else
        {
            Logger.Error("ResMgr AddResObj has path.............",assetPath);
        }
    }

    public void ClearAllRes()
    {
        assetDict.Clear();
    }

}


