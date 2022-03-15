﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Reflection;
using System;

using Net;
using PPhp;
using PBase;

public class PayCoreItem
{
    public Transform view;
    public List<Text> infoList = new List<Text>();

    public void Create()
    {        
        view = ResMgr.CreateGo("Prefab/PayCoreItem").transform;
        Transform bg = view.Find("bg");

        for (int i = 0; i < bg.childCount; i++)
        {
            infoList.Add(bg.GetChild(i).GetComponent<Text>());
        }
    }

    public void Show(int dayIndex)
    {
        CoreData coreData = RecordModel.coreList[dayIndex];

        infoList[0].text = coreData.date; 
        infoList[1].text = coreData.newUser.ToString();

        for (int i = 0; i < 15; i++)
        {
            infoList[i+2].text = "";
        }

        for (int i = 0; i < 14; i++)
        {
            if (coreData.newUser <= 0)
            {
                continue;
            }  

            int remainNum = coreData.newUser ;  

            if (i > 0)
            {
                remainNum = coreData.remainDict[i];    
            }

            if( coreData.payAccLTV[i+1] != -1 )
            {
                string row1 = "NA";
                //if ( i > 0 && remainNum != -1)
                {
                    row1 = remainNum.ToString();
                }                
                string row2 = (coreData.payAccLTV[i+1] /coreData.newUser / 100.0).ToString("F2");
                string row3 = "(" +  GFunc.US2CentInt(coreData.payAccLTV[i+1])  + ")";
                string row4 = (coreData.adsAccLTV[i+1]*1.0 / remainNum ).ToString("F2");
                string row5 = "(" +  (coreData.adsAccLTV[i+1])  + ")";

                infoList[i+2].text = row1 + "\n" + row2 + "\n" + row3 + "\n" + row4 + "\n" + row5;
            }
        }

        if( coreData.payAccLTV[30] != -1 )
        {
            infoList[16].text = (coreData.payAccLTV[30] /coreData.newUser / 100.0).ToString("F2") + "\n(" +  GFunc.US2CentInt(coreData.payAccLTV[30])  + ")"; 
        }
        
    }

    public void SetTittle()
    {
        infoList[0].text = "统计日期";
        infoList[1].text = "新增注册用户";
        infoList[2].text = "当日";
        infoList[3].text = "次日";
        infoList[4].text = "3日";
        infoList[5].text = "4日";
        infoList[6].text = "5日";
        infoList[7].text ="6日";
        infoList[8].text ="7日";
        infoList[9].text ="8日";
        infoList[10].text ="9日";
        infoList[11].text ="10日";
        infoList[12].text ="11日";
        infoList[13].text ="12日";
        infoList[14].text ="13日";
        infoList[15].text ="14日";
        infoList[16].text = "30日";
    }    


}
