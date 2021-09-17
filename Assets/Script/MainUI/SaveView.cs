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

public class SaveView : View
{
    private static SaveView ins = null;

    private Button queryBtn;
    private Button modBtn;
    private InputField accountText;
    public Transform Content;
    private Dropdown dropdown;
    private int dropdownIndex;
    private InputField dataText;


    public static SaveView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new SaveView();
            }
            return ins;
        }
    }

    private SaveView()
    {
        Logger.Log("SaveView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/SaveView").transform;
        UIHelper.AddChild(UIMgr.UIMain, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        queryBtn = bg.Find("btnGroup/queryBtn").GetComponent<Button>();  
        EventTriggerListener.Get(queryBtn.gameObject).onClick = onClickQuery;

        modBtn = bg.Find("btnGroup/modBtn").GetComponent<Button>();  
        EventTriggerListener.Get(modBtn.gameObject).onClick = onClickMod;        

        accountText = bg.Find("btnGroup/InputField").GetComponent<InputField>();

        Content = bg.Find("Scroll View/Viewport/Content");
        dataText = Content.Find("InputField").GetComponent<InputField>();

        dropdown = bg.Find("btnGroup/Dropdown").GetComponent<Dropdown>();
        dropdown.onValueChanged.AddListener( onDropDownHandle );        
    }

    override public void OnShow(params object[] args)
    {        
        onClickQuery(queryBtn.gameObject);

        RectTransform rect = Content.transform.GetComponent<RectTransform>();
        //rect.sizeDelta = new Vector2(0, (float)RecordModel.Instance.coreList.Count * (float)73.6 );
    }

    private void onClickQuery(GameObject go)
    {
        dropdown.ClearOptions();

        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = accountText.text;
        pb.Querytype = (int)PHP_QUERY.CLIENTSAVELIST;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);  
    }

    private void onClickMod(GameObject go)
    {
        string file = dropdown.options[dropdownIndex].text;
        
        //byte[] bytes = System.Text.Encoding.Default.GetBytes(dataText.text);

        C2S_GMCommand pb = new C2S_GMCommand();
        pb.Commandid = (int)PHP_COMMAMD.CLIENTSAVE;
        pb.Acclist.Add(accountText.text);
        pb.Params.Add(file);
        pb.Params.Add(dataText.text);

        // if (file == "Currency")
        // {
        //     Currency cy = new Currency();
        //     Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(bytes);
        //     cy.MergeFrom(pbStream);
        //     byte[] data = System.Text.Encoding.Default.GetBytes(cy.ToString());
        //     pb.Data = Google.Protobuf.ByteString.CopyFrom(data);
        // }
        
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_GMCOMMAND,pb);          
    }

    public void AddDropData(PB_ParamStrDict rst)
    {
        Dropdown.OptionData od1 = new Dropdown.OptionData();
        od1.text = rst.Dict["file"];
        Logger.Log("AddDropData click.........." + od1.text);
        dropdown.options.Add(od1);            
    }

    public void SetDataText(string file,string data)
    {
        Logger.Log("SetDataTex" + data);
        dataText.text = data;

        // if (file == "Currency" )
        // {
        //     Currency cy = new Currency();
        //     //byte[] bytes = System.Text.Encoding.Default.GetBytes(s);
        //     Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(bytes);
        //     cy.MergeFrom(pbStream);
        //     //Output.Log("unpack pb <--- ",msgid, pb.ToString());
        //     Logger.Log("SetDataTex" + cy.ToString());
        //     dataText.text = cy.ToString();
        // }   
        // if (file == "OwnEquipInfo" )
        // {
        //     OwnEquipInfo cy = new OwnEquipInfo();
        //     //byte[] bytes = System.Text.Encoding.Default.GetBytes(s);
        //     Google.Protobuf.CodedInputStream pbStream = new Google.Protobuf.CodedInputStream(bytes);
        //     cy.MergeFrom(pbStream);
        //     //Output.Log("unpack pb <--- ",msgid, pb.ToString());
        //     Logger.Log("SetDataTex" + cy.ToString());
        //     dataText.text = cy.ToString();
        // }                
    }

    private void onDropDownHandle(int index)
    {
        Logger.Log("onDropDownHandle  "+dropdown.options[index].text);
        dropdownIndex = index;
        C2S_GMQueryNormalInfo pb = new C2S_GMQueryNormalInfo();
        pb.Account = accountText.text;
        pb.Params2.Add(dropdown.options[index].text);
        pb.Querytype = (int)PHP_QUERY.CLIENTSAVEDATA;
        NetMgr.SendMsg(MSGID.MSG_CL2PHP_QUERYNORMALINFO,pb);          
    }
}
