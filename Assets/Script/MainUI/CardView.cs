using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using Net;
using PPhp;
using PBase;
using LocalData;

public class CardView : View
{
    private static CardView ins = null;

    private Button drawBtn;
    private InputField drawIF;
    private Text drawIFText;
    private Text dataText;
    private InputField dataIF;
    public Transform Content;
   
    public static CardView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new CardView();
            }
            return ins;
        }
    }

    private CardView()
    {
        Logger.Log("CardView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/CardView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        Content = bg.Find("Scroll View/Viewport/Content");
        dataText = Content.Find("Text").GetComponent<Text>();  
        dataIF = Content.Find("InputField").GetComponent<InputField>();  

        drawBtn = bg.Find("Button").GetComponent<Button>(); 
        drawBtn.onClick.AddListener(onClickDraw);
        drawIF = bg.Find("InputField").GetComponent<InputField>();  
        drawIFText = bg.Find("InputField/Text").GetComponent<Text>(); 


    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);
        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        //rect.sizeDelta = new Vector2(0, (float)RecordModel.Instance.coreList.Count * (float)73.6 );
    }

    override public void DoClickQuery(int start, int end)
    {
 
    }

    override public void DoClickExport()
    {

    }   

    public void onClickDraw()
    {
        Logger.Log("11111111111111111 "+drawIFText.text);
        //int num = Convert.ToInt32(drawIFText.text); 

        C2S_GMCommand pb = new C2S_GMCommand();
        pb.Commandid = (int)PHP_COMMAMD.DRAWCARD;
        pb.Params.Add(drawIFText.text);
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMCOMMAND,pb); 
    }   

    public void AddItem(string taskData)
    {               

    }

    public void SetDataText(S2C_GMCommand _pb)
    {
        dataIF.text = "";
        for (int i = 0; i < _pb.Params.Count; i++)
        {
            dataIF.text = dataIF.text + _pb.Params[i] + "\n";
        }    

        // dataText.text = "";
        // for (int i = 0; i < _pb.Params.Count; i++)
        // {
        //     dataText.text = dataText.text + _pb.Params[i] + "\n";
        // }          
    }

}
