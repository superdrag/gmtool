using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Net
{
    public class NetEnv
    {
        public static bool NET_LOG = true;
        public static int MSG_HEAD_LEN = 10;      
        public static int MSG_PACKET_LEN = 32767;
        public static int MSG_BODY_LEN = MSG_PACKET_LEN - MSG_HEAD_LEN;
        public static int MSG_STR_LEN = 30000;
        public static int MSG_RECV_LEN = MSG_PACKET_LEN * 2;
        public static int MSG_SPLIT_LEN = MSG_PACKET_LEN;

        public static int MSG_EVENT_SOCKET_CONN = 11;
        public static int MSG_EVENT_SOCKET_CLOSE = 12;
    }
}
