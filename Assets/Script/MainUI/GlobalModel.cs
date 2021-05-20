using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlobalModel {


    private static GlobalModel ins;

    public static GlobalModel Instance
    {
        get
        {
          if(ins==null)
          {
              ins=new GlobalModel();
          }     
          return ins; 
        }
    }

    public int RoleId;
    public string LoginGateIP;
    public int LoginGatePort;
    public int LoginSign;
    public int LoginGateTime;


    public void GetShuju()
    {
        
    }
    






}
