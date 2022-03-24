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

    public static int startTime = 0;
    public static int endTime = 0;
    public static string country = "ALL";
    public static string platform = "ALL";

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
        RectTransform rect = viewRoot.transform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(0,-40);

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
        //Logger.Log("xxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        Text text = dropdown_country.transform.Find("Label").GetComponent<Text>();     
        //Logger.Log("xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+text);         
        text.text = "CN" ;      

        dropdown_country.ClearOptions();
        for (int i = 0; i < RecordModel.countryList.Count; i++)
        {
            Dropdown.OptionData od1 = new Dropdown.OptionData();
            od1.text = RecordModel.countryList[i];
            dropdown_country.options.Add(od1); 
        } 

        dropdown_platform.ClearOptions();
        for (int i = 0; i < RecordModel.platformList.Count; i++)
        {
            Dropdown.OptionData od1 = new Dropdown.OptionData();
            od1.text = RecordModel.platformList[i];
            dropdown_platform.options.Add(od1); 
        }         

        List<int> list = new List<int>();
        foreach (var item in RecordModel.FileDict)
        {
            list.Add(item.Key);
        }

        if (list.Count > 0)
        {
            dropdown_date1.ClearOptions();
            for (int i = 0; i < list.Count; i++)
            {
                Dropdown.OptionData od1 = new Dropdown.OptionData();
                od1.text = list[i].ToString();
                dropdown_date1.options.Add(od1);             
            }

            //onChooseDate1(0);

            int revIndex = 0;
            dropdown_date2.ClearOptions();
            for (int i = list.Count - 1; i >= 0 ; i--)
            {
                Dropdown.OptionData od2 = new Dropdown.OptionData();
                od2.text = list[i].ToString();
                dropdown_date2.options.Add(od2);    

                revIndex++;
                if (revIndex == 9)
                {
                    onChooseDate1(i);                 
                }                    
            }
           
            onChooseDate2(0);          

            // startTime = list[0];
            // endTime = list[list.Count-1];            
        }

        //dropdown_date2.options[0].text = "aaaaaaaaaaaaa"; 

        // Text text11 = dropdown_date2.transform.Find("Label").GetComponent<Text>();     
        // Logger.Log("666666666666666666"+text11);         
        // text11.text = "dropdown_date2.options[dropdown_date2.options.Count-1].text";

        //onClickExport(null);
    }

    public void SetInitDate(int start, int end)
    {
        // onChooseDate1(start);  

        // dropdown_date1.value = start;

        // onChooseDate2(end);

        // dropdown_date2.value = end;
    }

    private void onClickQuery(GameObject go)
    {
        View view = UIMgr.GetUI(MenuView.curViewId);
        view.DoClickQuery(startTime,endTime);
    }

    private void onClickExport(GameObject go)
    {
        View view = UIMgr.GetUI(MenuView.curViewId);
        view.DoClickExport();        
    }

    private void onChooseCountry(int index)
    {
        if (RecordModel.countryList.Count <= 0)
        {
            return;
        }
        country = RecordModel.countryList[index];
    }   

    private void onChoosePlatform(int index)
    {
        if (RecordModel.platformList.Count <= 0)
        {
            return;
        }       
        platform = RecordModel.platformList[index];
    }

    private void onChooseDate1(int index)
    {
       startTime = Convert.ToInt32(dropdown_date1.options[index].text);
       dropdown_date1.value = index;
    }
    private void onChooseDate2(int index)
    {
        endTime = Convert.ToInt32(dropdown_date2.options[index].text);
        dropdown_date2.value = index;
    }


}
