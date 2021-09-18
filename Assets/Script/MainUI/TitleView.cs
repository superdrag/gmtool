using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;
using Net;

using PPhp;

public class TitleView : View
{
    private static TitleView ins = null;

    private Button queryBtn;
    private Button exportBtn;

    private Dropdown dropdown_country;
    private Dropdown dropdown_platform;
    private Dropdown dropdown_date1;
    private Dropdown dropdown_date2;


    public static TitleView Instance
    {
        get
        {
            if (ins == null)
            {
                ins = new TitleView();
            }
            return ins;
        }
    }

    private TitleView()
    {
        Logger.Log("TitleView Construct Call");
    }

    override public void OnCreateGo()
    {        
        viewRoot = ResMgr.CreateGo("Prefab/TitleView").transform;
        UIHelper.AddChild(UIMgr.UIMenu, viewRoot);  

        Transform bg = viewRoot.Find("bg");

        queryBtn = bg.Find("Button1").GetComponent<Button>();  
        EventTriggerListener.Get(queryBtn.gameObject).onClick = onClickQuery;

        exportBtn = bg.Find("Button2").GetComponent<Button>();  
        EventTriggerListener.Get(exportBtn.gameObject).onClick = onClickExport;
        
        dropdown_country = bg.Find("DropdownCountry").GetComponent<Dropdown>();        
        dropdown_country.onValueChanged.AddListener( onChooseCountry );        

        dropdown_platform = bg.Find("DropdownPlatform").GetComponent<Dropdown>();        
        dropdown_platform.onValueChanged.AddListener( onChoosePlatform );     

        dropdown_date1 = bg.Find("DropdownDate1").GetComponent<Dropdown>();        
        dropdown_date1.onValueChanged.AddListener( onChooseDate1 );     

        dropdown_date2 = bg.Find("DropdownDate2").GetComponent<Dropdown>();        
        dropdown_date2.onValueChanged.AddListener( onChooseDate2 );   
    }

    override public void OnShow(params object[] args)
    {        
        //onClickQuery(queryBtn.gameObject);
        Logger.Log("xxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        Text text = dropdown_country.transform.Find("Label").GetComponent<Text>();     
        Logger.Log("xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+text);         
        text.text = "CN" ;        
    }


    private void onClickQuery(GameObject go)
    {
        View view = UIMgr.GetUI(MenuView.curViewId);
        view.DoClickQuery();
    }

    private void onClickExport(GameObject go)
    {

    }

    private void onChooseCountry(int index)
    {

    }

    private void onChoosePlatform(int index)
    {

    }

    private void onChooseDate1(int index)
    {

    }
    private void onChooseDate2(int index)
    {

    }


}
