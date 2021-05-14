using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using PBase;
using PClient;


public class LoginScene : MonoBehaviour {

    //LoginView loginView = new LoginView();
    //LoginCtl loginCtl = new LoginCtl();

    // Use this for initialization
    void Start () {
        Logger.Log("LoginScene Start..........开始搞起");   


        UIMgr.ShowUI(VIEWID.LOGIN);
    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void OnDestroy()
    {
        Logger.Log("LoginScene OnDestroy................");

        // GameObject bg1 = GameObject.Find("Login_bg");
        // // GameObject bg2 = GameObject.Find("icon-gameName");

        // bg1.SetActive(false);


        // GameObject.Destroy(bg1);
        // DestroyObject(bg2);
           
    }

}
