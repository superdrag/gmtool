
Ñ
client.protoPClientcommon.proto"(
S2C_ShutDwon
leftsec (Rleftsec"
S2C_ReloginKick"‰
	C2S_Login
account (	Raccount
passwd (	Rpasswd
version (	Rversion
headicon (	Rheadicon
guest (Rguest"›
	S2C_Login
account (	Raccount
accdbid (Raccdbid
sign (	Rsign
gateip (	Rgateip
gateport (Rgateport
time (Rtime"—
C2S_LoginGate
openid (	Ropenid
name (	Rname
accdbid (Raccdbid
sign (	Rsign
time (Rtime
version (	Rversion"ß
S2C_LoginGate
account (	Raccount
userid (Ruserid
roleid (Rroleid
ip (	Rip
headicon (	Rheadicon
sex (Rsex"
registertime (Rregistertime 
phonenumber (	Rphonenumber

firstlogin	 (R
firstlogin
coin (Rcoin
diamond (Rdiamond
vipcard (Rvipcard
curtime (Rcurtime"¨
C2S_StoreBaseInfo
coin (Rcoin
taskid (Rtaskid
taskarg (Rtaskarg"
facilitylist (Rfacilitylist

lessonlist (R
lessonlistJ

employlist (2*.PClient.C2S_StoreBaseInfo.EmploylistEntryR
employlist=
EmploylistEntry
key (Rkey
value (Rvalue:8"
S2C_ZeroRefresh"!
C2S_UseDiamod
num (Rnum"3
S2C_UseDiamod
ret (Rret
num (Rnum"
C2S_ShowMailList"B
S2C_ShowMailList.
mailList (2.PBase.PB_MailItemRmailList"&
C2S_OpenMail
mailId (RmailId"B
S2C_OpenMail
mailId (RmailId
itemList (	RitemList"1
C2S_PhoneHomeOnline
isOnline (RisOnline"I
S2C_PhoneHomeOnline
userId (RuserId
isOnline (RisOnline"%
C2S_GetItemList
type (Rtype"R
S2C_BackItemList
type (Rtype*
itemList (2.PBase.PB_ItemRitemList"
C2S_GetEquipList"A
S2C_BackEquipList,
	equipList (2.PBase.PB_ItemR	equipList"%
C2S_GetTaskList
type (Rtype"R
S2C_BackTaskList
type (Rtype*
taskList (2.PBase.PB_TaskRtaskList"
C2S_GetCounterList"J
S2C_BackCounterList3
counterList (2.PBase.PB_CounterRcounterList"(
C2S_SendChat
content (	Rcontent"D
S2C_PushSendChat
userId (RuserId
content (	Rcontent"=
C2S_SendVoice
content (Rcontent
flag (Rflag"U
S2C_PushVoice
userId (RuserId
content (Rcontent
flag (Rflag"S
C2S_CheatCard 
cheatCards1 (	RcheatCards1 
cheatCards2 (	RcheatCards2"E
C2S_GetHallUserInfo
gameId (RgameId
userId (RuserId"
C2S_NoticeInfo"n
S2C_NoticeInfo$
noticecontent (	Rnoticecontent
	starttime (R	starttime
endtime (Rendtime"1
C2S_BindPhone 
phoneNumber (	RphoneNumber"1
S2C_BindPhone 
phoneNumber (	RphoneNumber"4
C2S_BindInviteCode

inviteCode (R
inviteCode"x
S2C_BindInviteCode

inviteName (	R
inviteName

inviteCode (R
inviteCode"
inviteUserId (RinviteUserIdbproto3