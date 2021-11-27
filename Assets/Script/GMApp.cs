using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Net;
//using Google.Protobuf;
//using UnityEngine.SceneManagement;
//using System.Collections.Concurrent;

public class GMApp : MonoBehaviour {

    // Use this for initialization
  
    private static GMApp instance;    

    public static GMApp Instance
    {
        get
        {
            return instance;
        }
    }

    void Awake()
    {
        Screen.sleepTimeout = SleepTimeout.NeverSleep;
        this.AppInit();
    }

    private void AppInit()
    {
        Logger.Init(GFunc.AppLogPath());
    
        DontDestroyOnLoad(this);
        //DontDestroyOnLoad(Camera.main);
        //DontDestroyOnLoad(GameObject.Find("Directional Light"));
        DontDestroyOnLoad(GameObject.Find("UICamera"));
        DontDestroyOnLoad(GameObject.Find("UICanvas"));
        DontDestroyOnLoad(GameObject.Find("LocalCache"));        
        instance = this; 

        AppConfig.Instance.InitLoad();
        Timer.Instance.Init();
        NetMgr.Init();//消息处理相关类
        GlobalModel.Instance.Init();
        RecordModel.Instance.Init();
        GFunc.Init();
        LuaMgr.Init();

        // LuaCall.Test1();
        // string aa=  LuaCall.GetShopNameById(11001);
        //Logger.Warn("111111111111111 ",aa);
 
        ResMgr.Instance.Init();
        AllRigstMsgRegedit();
        OnInitFinish();     
        
    }

    private void OnInitFinish()
    {
        UIMgr.Init();      

        Image img = UIMgr.UIBG.GetComponent<Image>();
        img.enabled = true;

        UIMgr.ShowUI(VIEWID.LOGIN);
    }

    private void AllRigstMsgRegedit()
    {
        GlobalCtl.Instance.MsgRegedit(); 
        LoginCtl.Instance.MsgRegedit();
    }

    void Start () {
        //Logger.Log("GMApp Start..........");

        //ScreenFix();


        
        test();        
    }
	
    // Update is called once per frame
	void Update () 
    {
        Timer.Instance.DoUpdate();
	}

    void FixedUpdate()
    {
        NetMgr.DoFixUpdate(); 
        Timer.Instance.DoFixUpdate();               
    }

    private void OnApplicationQuit()
    {
        Logger.Log("app quit");
        NetMgr.NetClose();
    }

    private void ScreenFix()
    {
        var scaler = GameObject.Find("UIRoot").transform.GetComponent<CanvasScaler>();
        float ManualWidth = scaler.referenceResolution.x;
        float ManualHeight = scaler.referenceResolution.y;
        if (System.Convert.ToSingle(Screen.width) / Screen.height > System.Convert.ToSingle(ManualWidth) / ManualHeight)
        {
            scaler.matchWidthOrHeight = 1;
        }
        else
        {
            scaler.matchWidthOrHeight = 0;
        }
    }


    private void test()
    {
        // float aa = (float)10.22473 + 1637921848 -1637921858;
        // Logger.Log("111111111111111 aaa",aa);

        //string IVString = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";//IV

        // string aa = AES.Encrypt2("4353","ae125efkk4_54eeff444ferfkny6oxi8");
        // Logger.Log("1111111111111111111", aa);

        // string aaa = AES.AESEncrypt("1234");
        // Logger.Log("1111111111111111111xxx", aaa);

        // string bb = AES.AESDEncrypt(aaa);
        // Logger.Log("2222222222222222222", bb);


        //byte[] wwww = new byte[NetEnv.MSG_RECV_LEN];
        
        //Logger.Log("ssssssssssss", wwww.Length);

        //AppConfig.LoadJsonFile( GFunc.AppRunPath() + "app_server.json");

        //AppConfig.LoadJsonFile( "Assets/app_config.json");

        // Dictionary<int,GameObject> dict1 = new Dictionary<int, GameObject>();
        // dict1[1] = new  GameObject();
        // dict1[1] = null;

        // List<int> listA = new List<int>();
        // listA.Add(1);
        // listA.Add(2);
        // listA.Add(2);
        // listA.Add(3);
        // listA.Remove(2);
        
        // for (int i = 0; i < listA.Count; i++)
        // {
        //     Debug.Log("list remove :"+listA[i]);    
        // }
        
    }
}
