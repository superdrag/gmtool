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
  
    public bool opt_debug_mode = false;
    public PUBLISH_ID opt_publishid = PUBLISH_ID.NONE;

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
        GData.DebugMode = this.opt_debug_mode;
        GData.PublishId = this.opt_publishid;

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
  

        // LuaCall.Test1();
        // string aa=  LuaCall.GetShopNameById(11001);
        //Logger.Warn("111111111111111 ",aa);
 
        ResMgr.Instance.Init();
        ResMgr.Instance.StartAppResCheck(OnResLoadOver);//LUA代码必须
        
    }

    public void OnResLoadOver()
    {
        Logger.Log("OnResLoadOver...."); 
        LuaMgr.Init();
        LuaCall.Test1();

        GlobalModel.InitConfig();

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
        Logger.Log("GMApp Start..........");

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
        // Dictionary<int,string> aa = new Dictionary<int, string>();
        // Dictionary<int,string> bb = new Dictionary<int, string>();
        // Dictionary<int,string> cc = new Dictionary<int, string>();

        // aa[11] = "aa1";
        // aa[12] = "aa2";

        // bb[11] = "bb1";

        // foreach (var item in aa)
        // {
        //     cc.Add(item.Key,item.Value  );
        // }
        // foreach (var item in bb)
        // {
        //     cc.Add(item.Key,item.Value  );
        // }     

        // foreach (var item in cc)
        // {
        //     Logger.Log("ccccccc ",item.Key,item.Value);
        // }   

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
