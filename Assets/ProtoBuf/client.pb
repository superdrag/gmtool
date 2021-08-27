
¥+
client.protoPClientcommon.proto")
S2C_ErrorCode
errcode (Rerrcode"
C2S_SocketHit")
S2C_SocketHit
curtime (Rcurtime"(
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
acccode (	Racccode"±
C2S_LoginGate
account (	Raccount
name (	Rname
accdbid (Raccdbid
sign (	Rsign
time (Rtime
version (	Rversion
reconn (Rreconn"•
S2C_LoginGate
account (	Raccount
accdbid (Raccdbid
roleid (Rroleid
ip (	Rip
headicon (	Rheadicon
reconn (Rreconn

firstlogin	 (R
firstlogin
curtime
 (Rcurtime

dayRefresh (R
dayRefresh
nickname (	Rnickname"ˆ
S2C_LoginRoleData
reconn (Rreconn
diamond (Rdiamond
newmail (Rnewmail$
drawcardcount (Rdrawcardcount
leaflet3 (Rleaflet3:
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlistS
firstgiftlist (2-.PClient.S2C_LoginRoleData.FirstgiftlistEntryRfirstgiftlistT
FirstgiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8"
S2C_ZeroRefresh"%
S2C_WeekRefresh
time (Rtime"&
S2C_MonthRefresh
time (Rtime"0
S2C_UpdateDiamod
	diamodnum (R	diamodnum":
S2C_UpdateCurrency
type (	Rtype
num (Rnum"O
C2S_UseDiamod
num (Rnum
event (Revent
params (Rparams"a
S2C_UseDiamod
ret (Rret
num (Rnum
event (Revent
params (Rparams"<
C2S_WatchAdv
event (Revent
params (Rparams"<
S2C_WatchAdv
event (Revent
params (Rparams"%
C2S_SetNickName
name (	Rname"%
S2C_SetNickName
name (	Rname"
C2S_GetMailNew"*
S2C_GetMailNew
newmail (Rnewmail"
C2S_ShowMailList"B
S2C_ShowMailList.
maillist (2.PBase.PB_MailItemRmaillist"&
C2S_ReadMail
mailid (	Rmailid"V
S2C_ReadMail
ret (Rret
mailid (	Rmailid
	mailstate (R	mailstate")
C2S_MailGetItem
mailid (	Rmailid"Y
S2C_MailGetItem
ret (Rret
mailid (	Rmailid
	mailstate (R	mailstate"
C2S_MailDeleteRead".
S2C_MailDeleteRead
dellist (	Rdellist"
C2S_MailAllRead"-
S2C_MailAllRead
readlist (	Rreadlist"
C2S_ShowTeamCardList"R
S2C_ShowTeamCardList:
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlist"D
C2S_DrawCard
boxid (Rboxid

areaunlock (R
areaunlock"P
S2C_DrawCard
ret (Rret
boxid (Rboxid
rewards (	Rrewards"G
C2S_UpLevelCard
cardid (Rcardid
	cardlevel (R	cardlevel"Y
S2C_UpLevelCard
ret (Rret
cardid (Rcardid
	cardlevel (R	cardlevel",
C2S_ResetLevelCard
cardid (Rcardid">
S2C_ResetLevelCard
ret (Rret
cardid (Rcardid",
C2S_FundTaskFinish
taskid (Rtaskid">
S2C_FundTaskFinish
ret (Rret
taskid (Rtaskid"
C2S_GetFundTaskList"M
S2C_GetFundTaskList
fundpass (Rfundpass
fundlist (Rfundlist"
C2S_PassInfo"Ž
S2C_PassInfo
passtime (Rpasstime
tasklist (Rtasklist 
seasoncount (Rseasoncount$
seasonleftsec (Rseasonleftsec"
C2S_BuyPass";
S2C_BuyPass
ret (Rret
passtime (Rpasstime"E
C2S_GetPassItem
taskid (Rtaskid
tasktype (Rtasktype"W
S2C_GetPassItem
ret (Rret
taskid (Rtaskid
tasktype (Rtasktype"
C2S_GetShopInfo"ç
S2C_GetShopInfo
curtime (Rcurtime&
dayrefreshtime (Rdayrefreshtime(
weekrefreshtime (Rweekrefreshtime*
monthrefreshtime (Rmonthrefreshtime$
drawcardcount (RdrawcardcountQ
firstgiftlist (2+.PClient.S2C_GetShopInfo.FirstgiftlistEntryRfirstgiftlistK
daygiftlist (2).PClient.S2C_GetShopInfo.DaygiftlistEntryRdaygiftlistN
weekgiftlist (2*.PClient.S2C_GetShopInfo.WeekgiftlistEntryRweekgiftlistQ
monthgiftlist (2+.PClient.S2C_GetShopInfo.MonthgiftlistEntryRmonthgiftlistT
FirstgiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8R
DaygiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8S
WeekgiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8T
MonthgiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8"]
C2S_IOSPayCheck
payid (Rpayid
paycode (	Rpaycode
platform (	Rplatform"S
S2C_IOSPayCheck
ret (Rret
payid (Rpayid
paytype (Rpaytype"@
C2S_SaveUpload
filename (	Rfilename
data (Rdata">
S2C_SaveUpload
ret (Rret
filename (	Rfilename".
C2S_SaveDownload
filename (	Rfilename"T
S2C_SaveDownload
ret (Rret
filename (	Rfilename
data (Rdata"8
C2S_TestRecharge
type (Rtype
num (Rnum"8
S2C_TestRecharge
type (Rtype
num (Rnum"G
C2S_TestGetTeamCard
cardid (Rcardid
cardnum (Rcardnum"G
S2C_TestGetTeamCard
cardid (Rcardid
cardnum (Rcardnum"%
C2S_GetTaskList
type (Rtype"R
S2C_BackTaskList
type (Rtype*
taskList (2.PBase.PB_TaskRtaskList"
C2S_GetCounterList"J
S2C_BackCounterList3
counterList (2.PBase.PB_CounterRcounterListbproto3