using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LoginModel {


    private static LoginModel ins;

    public static LoginModel Instance
    {
        get
        {
          if(ins==null)
          {
              ins=new LoginModel();
          }     
          return ins; 
        }
    }

    public string Account;
    public int RoleId;
    public string LoginIP;
    public int LoginPort;
    public string LoginGateIP;
    public int LoginGatePort;
    public int LoginSign;
    public int LoginGateTime;
    public int Permission;

    public string record_url;

    public void GetShuju()
    {
        
    }
    






}
