
¤C
client.protoPClientcommon.proto")
S2C_ErrorCode
errcode (Rerrcode"
C2S_SocketHit")
S2C_SocketHit
curtime (Rcurtime"(
S2C_ShutDwon
leftsec (Rleftsec"
S2C_ReloginKick"×
	C2S_Login
account (	Raccount
passwd (	Rpasswd
version (	Rversion
headicon (	Rheadicon
guest (Rguest
reconn (Rreconn
platform (	Rplatform
country (	Rcountry"ß
	S2C_Login
account (	Raccount
accdbid (Raccdbid
sign (	Rsign
gateip (	Rgateip
gateport (Rgateport
time (Rtime
acccode (	Racccode
ret (Rret
retarg	 (Rretarg"±
C2S_LoginGate
account (	Raccount
name (	Rname
accdbid (Raccdbid
sign (	Rsign
time (Rtime
version (	Rversion
reconn (Rreconn"§
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
nickname (	Rnickname
ret (Rret"–
S2C_LoginRoleData
reconn (Rreconn
diamond (Rdiamond
newmail (Rnewmail$
drawcardcount (Rdrawcardcount
leaflet2 (Rleaflet2
leaflet3 (Rleaflet3:
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlistS
firstgiftlist (2-.PClient.S2C_LoginRoleData.FirstgiftlistEntryRfirstgiftlist&
randomcardlist (Rrandomcardlist(
randomcardcount (Rrandomcardcount

sevenlogin (R
sevenlogin
	sevengain (R	sevengainS
monthcardinfo (2-.PClient.S2C_LoginRoleData.MonthcardinfoEntryRmonthcardinfo
paylevel (RpaylevelV
activegitflist (2..PClient.S2C_LoginRoleData.ActivegitflistEntryRactivegitflistT
FirstgiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8@
MonthcardinfoEntry
key (Rkey
value (Rvalue:8U
ActivegitflistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8"%
S2C_ZeroRefresh
time (Rtime"%
S2C_WeekRefresh
time (Rtime"&
S2C_MonthRefresh
time (Rtime"0
S2C_UpdateDiamod
	diamodnum (R	diamodnum":
S2C_UpdateCurrency
type (	Rtype
num (Rnum"i
C2S_UseDiamod
num (Rnum
event (Revent
params (Rparams
goodsid (Rgoodsid"{
S2C_UseDiamod
ret (Rret
num (Rnum
event (Revent
params (Rparams
goodsid (Rgoodsid"<
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
teamcardlist (2.PBase.PB_TeamCardInfoRteamcardlist"
C2S_DrawCardInfo"ä
S2C_DrawCardInfo"
drawfreetime (Rdrawfreetime

unlocktime (R
unlocktime,
drawcountleaflet1 (Rdrawcountleaflet1,
drawcountleaflet2 (Rdrawcountleaflet2,
drawcountleaflet3 (Rdrawcountleaflet3*
drawgainleaflet1 (Rdrawgainleaflet1*
drawgainleaflet2 (Rdrawgainleaflet2*
drawgainleaflet3 (Rdrawgainleaflet3"<
C2S_DrawCard
boxid (Rboxid
cardid (Rcardid"h
S2C_DrawCard
ret (Rret
boxid (Rboxid
cardid (Rcardid
rewards (	Rrewards"G
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
cardid (Rcardid"
C2S_UpdateCard"
S2C_UpdateCard",
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
C2S_GetShopInfo"¤
S2C_GetShopInfo
curtime (Rcurtime&
dayrefreshtime (Rdayrefreshtime(
weekrefreshtime (Rweekrefreshtime*
monthrefreshtime (Rmonthrefreshtime$
drawcardcount (RdrawcardcountQ
firstgiftlist (2+.PClient.S2C_GetShopInfo.FirstgiftlistEntryRfirstgiftlistK
daygiftlist (2).PClient.S2C_GetShopInfo.DaygiftlistEntryRdaygiftlistN
weekgiftlist (2*.PClient.S2C_GetShopInfo.WeekgiftlistEntryRweekgiftlistQ
monthgiftlist (2+.PClient.S2C_GetShopInfo.MonthgiftlistEntryRmonthgiftlist;
shoprancardlist (2.PBase.PB_RanCardRshoprancardlistT
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
value (2.PBase.PB_GiftPackRvalue:8"D
S2C_UpdateShopGift.
giftinfo (2.PBase.PB_GiftPackRgiftinfo"
C2S_GetMonthCardInfo"Ê
S2C_GetMonthCardInfoV
monthcardinfo (20.PClient.S2C_GetMonthCardInfo.MonthcardinfoEntryRmonthcardinfoV
monthcardtime (20.PClient.S2C_GetMonthCardInfo.MonthcardtimeEntryRmonthcardtime@
MonthcardinfoEntry
key (Rkey
value (Rvalue:8@
MonthcardtimeEntry
key (Rkey
value (Rvalue:8"9
C2S_GainMonthCardItem 
monthcardid (Rmonthcardid"K
S2C_GainMonthCardItem
ret (Rret 
monthcardid (Rmonthcardid"E
C2S_GainItemDaily
taskid (Rtaskid
vipcard (Rvipcard"W
S2C_GainItemDaily
ret (Rret
taskid (Rtaskid
vipcard (Rvipcard"
C2S_TaskDaliyInfo"/
S2C_TaskDaliyInfo
gainlist (Rgainlist"%
C2S_SevenLoginGet
day (Rday"Q
S2C_SevenLoginGet
ret (Rret
day (Rday
rewards (	Rrewards"7
C2S_GainLeafet2
num (Rnum
type (Rtype"I
S2C_GainLeafet2
ret (Rret
num (Rnum
type (Rtype"%
C2S_GetGiftInfo
type (Rtype"º
S2C_GetGiftInfo
type (RtypeB
giftlist (2&.PClient.S2C_GetGiftInfo.GiftlistEntryRgiftlistO
GiftlistEntry
key (Rkey(
value (2.PBase.PB_GiftPackRvalue:8".
C2S_ClientUnlock
unlockid (Runlockid"`
S2C_ClientUnlock
ret (Rret
unlockid (Runlockid

unlocktime (R
unlocktime"(
C2S_GainDrawSumRewards
id (Rid":
S2C_GainDrawSumRewards
ret (Rret
id (Rid"]
C2S_IOSPayCheck
payid (Rpayid
paycode (	Rpaycode
platform (	Rplatform"S
S2C_IOSPayCheck
ret (Rret
payid (Rpayid
paytype (Rpaytype"G
C2S_IOSPayCondition
payid (Rpayid
platform (	Rplatform"W
S2C_IOSPayCondition
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
data (Rdata"F
C2S_UploadMainTask
taskid (Rtaskid
taskarg (Rtaskarg"X
S2C_UploadMainTask
ret (Rret
taskid (Rtaskid
taskarg (Rtaskarg"
C2S_TestMsg"
S2C_TestMsg
ret (Rret"8
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