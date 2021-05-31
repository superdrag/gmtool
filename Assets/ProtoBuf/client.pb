
•
client.protoPClientcommon.proto"(
S2C_ShutDwon
leftsec (Rleftsec"
S2C_ReloginKick"½
	C2S_Login
account (	Raccount
passwd (	Rpasswd
version (	Rversion
headicon (	Rheadicon
guest (Rguest
reconn (Rreconn
platform (	Rplatform"µ
	S2C_Login
account (	Raccount
accdbid (Raccdbid
sign (	Rsign
gateip (	Rgateip
gateport (Rgateport
time (Rtime
acccode (	Racccode"™
C2S_LoginGate
account (	Raccount
name (	Rname
accdbid (Raccdbid
sign (	Rsign
time (Rtime
version (	Rversion"Á
S2C_LoginGate
account (	Raccount
accdbid (Raccdbid
roleid (Rroleid
ip (	Rip
headicon (	Rheadicon

firstlogin	 (R
firstlogin
curtime
 (Rcurtime"—
S2C_LoginRoleData
coin (Rcoin
diamond (Rdiamond
vipcard (Rvipcard:
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlist"¨
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
S2C_ZeroRefresh"7
C2S_UseDiamod
num (Rnum
event (Revent"I
S2C_UseDiamod
ret (Rret
num (Rnum
event (Revent"
C2S_GetMailNew"*
S2C_GetMailNew
newmail (Rnewmail"
C2S_ShowMailList"B
S2C_ShowMailList.
maillist (2.PBase.PB_MailItemRmaillist"&
C2S_ReadMail
mailid (Rmailid"X
S2C_ReadMail
ret (Rret
mailid (Rmailid

mailstatus (R
mailstatus")
C2S_MailGetItem
mailid (Rmailid"[
S2C_MailGetItem
ret (Rret
mailid (Rmailid

mailstatus (R
mailstatus"
C2S_ShowTeamCardList"R
S2C_ShowTeamCardList:
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlist"$
C2S_DrawCard
boxid (Rboxid"\
S2C_DrawCard
ret (Rret:
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlist"1
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