using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

using NPOI.XSSF.UserModel;
using UnityEngine.UI;
using NPOI.HSSF.UserModel;
using NPOI.HSSF.Util;
using NPOI.SS.UserModel;

public static class ExcelHelper
{
	 public static void Init()
	 {
		Logger.Log("ExcelHelper init");
		//XSSFWorkbook Mybook = new XSSFWorkbook("path");

		string path = GFunc.AppRunPath() + "/1.xlsx";
	
		FileStream MyAddress = new FileStream(path, FileMode.CreateNew);

		HSSFWorkbook MyWorkbook = new HSSFWorkbook();

 		HSSFSheet Sheet01 = (HSSFSheet)MyWorkbook.CreateSheet("表一");

		
        //写入到文件流
        MyWorkbook.Write(MyAddress);
        //关闭
        MyWorkbook.Close();
        //关闭文件流
        MyAddress.Dispose();
	 } 

	 public static void ExportCore()
	 {
		//string path = GFunc.AppRunPath() + "/核心数据.xlsx";

		string path = Application.dataPath + "/../核心数据.xlsx";

		if (File.Exists(path))
		{
			File.Delete(path);
		}
	
		FileStream MyAddress = new FileStream(path, FileMode.CreateNew,FileAccess.ReadWrite);

		HSSFWorkbook MyWorkbook = new HSSFWorkbook();

 		HSSFSheet Sheet01 = (HSSFSheet)MyWorkbook.CreateSheet("data1");

		CoreItem coreTitle = CoreView.Instance.titleItem;		
		
		HSSFRow row_title = (HSSFRow)Sheet01.CreateRow(0);
		for (int j = 0; j < coreTitle.infoList.Count; j++)
		{
			HSSFCell cell = (HSSFCell)row_title.CreateCell(j);
			cell.SetCellValue(coreTitle.infoList[j].text);
		}		

		int row_num = CoreView.Instance.dataItemList.Count;

		for (int i = 0; i < row_num; i++)
		{
			HSSFRow row = (HSSFRow)Sheet01.CreateRow(i+1);
			for (int j = 0; j < coreTitle.infoList.Count; j++)
			{
				HSSFCell cell = (HSSFCell)row.CreateCell(j);

				//Logger.Log("row col",i,j);

				//cell.SetCellValue("数值"+i*j);					

				string s = CoreView.Instance.dataItemList[i].infoList[j].text;
				cell.SetCellValue(s);
			}
		}

        //写入到文件流
        MyWorkbook.Write(MyAddress);
        //关闭
        MyWorkbook.Close();
        //关闭文件流
        MyAddress.Dispose();		

		UIMgr.ShowUI(VIEWID.ALERTINFO,"导出成功"); 
	 }


	public static void ExportCoreSum()
	{
		//string path = GFunc.AppRunPath() + "/核心数据.xlsx";

		string path = Application.dataPath + "/../核心数据总览.xlsx";

		if (File.Exists(path))
		{
			File.Delete(path);
		}

		FileStream MyAddress = new FileStream(path, FileMode.CreateNew,FileAccess.ReadWrite);

		HSSFWorkbook MyWorkbook = new HSSFWorkbook();

		HSSFSheet Sheet01 = (HSSFSheet)MyWorkbook.CreateSheet("data1");

		List<Text> coreTitle = CoreSumView.Instance.titleList;		
		
		HSSFRow row_title = (HSSFRow)Sheet01.CreateRow(0);
		for (int j = 0; j < coreTitle.Count; j++)
		{
			HSSFCell cell = (HSSFCell)row_title.CreateCell(j);
			cell.SetCellValue(coreTitle[j].text);
		}		


		HSSFRow row = (HSSFRow)Sheet01.CreateRow(1);
		for (int j = 0; j < coreTitle.Count; j++)
		{
			HSSFCell cell = (HSSFCell)row.CreateCell(j);

			//Logger.Log("row col",i,j);

			//cell.SetCellValue("数值"+i*j);					

			string s = CoreSumView.Instance.infoList[j].text;
			cell.SetCellValue(s);
		}
		

		//写入到文件流
		MyWorkbook.Write(MyAddress);
		//关闭
		MyWorkbook.Close();
		//关闭文件流
		MyAddress.Dispose();		

		UIMgr.ShowUI(VIEWID.ALERTINFO,"导出成功"); 
	}
}