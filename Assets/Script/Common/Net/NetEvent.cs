using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public enum NET_EVENT
{
    SOCKET_CONNECT = 1,
    SOCKET_CLOSE = 2,
}

namespace Net
{
    public class NetEvent
    {
        private NET_EVENT eventId = 0;

        private Action<int> eventFunc = null;

        private int eventArg = 0;

        public NetEvent(NET_EVENT id, Action<int> func, int arg)
        {
            eventId = id;
            eventFunc = func;
            eventArg = arg;        
        }

        public void DoEvent()
        {
            if(NetEnv.NET_LOG)Debug.Log("NetEvent DoEvent <====" + eventId);
            if (eventFunc == null)
            {
                if(NetEnv.NET_LOG)Debug.LogError("MsgEvent DoEvent eventFunc null eventid:" + eventId);
                return;
            }
            eventFunc(eventArg);
        }

    }
}
