protoc -I=.  --csharp_out=./../Script/Proto common.proto
#protoc -I=.  --csharp_out=./../Script/Proto client.proto
protoc -I=.  --csharp_out=./../Script/Proto php.proto

#protoc -o ../LuaScripts/Proto/Common.pb common.proto
#protoc -o ../LuaScripts/Proto/Client.pb client.proto
#protoc -o ../LuaScripts/Proto/PHP.pb php.proto

pause
exit