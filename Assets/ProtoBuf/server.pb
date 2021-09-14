
â'
server.protoPServercommon.proto"
WD2DB_WorldOnLinkDB"i
DB2WD_WorldOnLinkDB"
battleseason (Rbattleseason.
maillist (2.PBase.PB_MailItemRmaillist"ï
LN2DB_LoginCheckAcc
account (	Raccount
passwd (	Rpasswd
nickname (	Rnickname
headicon (	Rheadicon
guest	 (Rguest"t
DB2LN_LoginBcakRet
ret (Rret
account (	Raccount
accdbid (Raccdbid
newuser (Rnewuser"F
LN2MT_GetLowGate
account (	Raccount
accdbid (Raccdbid"ç
MT2LN_BackLowGate
account (	Raccount
accdbid (Raccdbid
gateip (	Rgateip
gateport (Rgateport
ret (Rret"n
GT2WD_LoginWorld
account (	Raccount
accdbid (Raccdbid
ip (	Rip
reconn (Rreconn"©
WD2DB_GetInitRoleData
gateid (Rgateid
account (	Raccount
accdbid (Raccdbid
ip (	Rip
	logintime (R	logintime
reconn (Rreconn"æ
DB2WD_DBLoadInitRoleData
gateid (Rgateid
account (	Raccount
accdbid (Raccdbid

playerdbid (R
playerdbid
ip (	Rip
logintv (Rlogintv
reconn (Rreconn

playername (	R
playername
sex (Rsex
prof (Rprof
unionid (Runionid"
firstlogintv (Rfirstlogintv 
lastlogintv (Rlastlogintv$
lastofflinetv (Rlastofflinetv
coin (Rcoin
diamond (Rdiamond
vipcard (Rvipcard"
battlepasstv (Rbattlepasstv

fundpasstv (R
fundpasstv$
drawcardcount (Rdrawcardcount
leaflet3 (Rleaflet3

counterstr (	R
counterstr
cardstr (	Rcardstr
fundstr  (	Rfundstr
passstr! (	Rpassstr
gmailstr" (	Rgmailstr"
firstgiftstr) (	Rfirstgiftstr

daygiftstr* (	R
daygiftstr 
weekgiftstr+ (	Rweekgiftstr"
monthgiftstr, (	Rmonthgiftstr 
timegiftstr- (	Rtimegiftstr$
randomcardstr. (	Rrandomcardstr"“
LG2DB_SavePlayerData
account (	Raccount
accdbid (Raccdbid

playerdbid (R
playerdbid

playername (	R
playername
sex
 (Rsex
prof (Rprof$
lastlogintime (Rlastlogintime(
lastofflinetime (Rlastofflinetime&
firstlogintime (Rfirstlogintime"
battlepasstv (Rbattlepasstv

fundpasstv (R
fundpasstv$
drawcardcount (Rdrawcardcount

counterstr (	R
counterstr
cardstr (	Rcardstr
fundstr (	Rfundstr
passstr (	Rpassstr
gmailstr (	Rgmailstr"
firstgiftstr (	Rfirstgiftstr

daygiftstr  (	R
daygiftstr 
weekgiftstr! (	Rweekgiftstr"
monthgiftstr" (	Rmonthgiftstr 
timegiftstr# (	Rtimegiftstr$
randomcardstr$ (	Rrandomcardstr
coin) (Rcoin
diamond* (Rdiamond
vipcard+ (Rvipcard
leaflet3, (Rleaflet3")
WD2DB_RefreshDBData
type (Rtype"j
DB2WD_DBLoadInitRoleMail

playerdbid (R
playerdbid.
maillist (2.PBase.PB_MailItemRmaillist"P
LG2GT_SetGateLogicId

playerdbid (R
playerdbid
account (	Raccount"b
GT2LG_SetGateLogicId
ret (Rret

playerdbid (R
playerdbid
account (	Raccount"f
WD2DB_SavePlayerMail

playerdbid (R
playerdbid.
maillist (2.PBase.PB_MailItemRmaillist";
S2C_ResetBattleSeason"
battleseason (Rbattleseason"ä
WD2DB_IOSPayRecord
account (	Raccount
platfrom (	Rplatfrom
country (	Rcountry
order (	Rorder
paynum (Rpaynum
paytime (Rpaytime
event (Revent
status (Rstatus
payid	 (Rpayid
paycode
 (	Rpaycode"b
WD2DB_SaveUpload
filename (	Rfilename
data (Rdata

playerdbid (R
playerdbid"@
DB2WD_SaveUpload
ret (Rret
filename (	Rfilename"P
WD2DB_SaveDownload
filename (	Rfilename

playerdbid (R
playerdbid"V
DB2WD_SaveDownload
ret (Rret
filename (	Rfilename
data (Rdata"y
PHP2WD_GMSendMail
mailtype (Rmailtype
account (	Raccount.
maildata (2.PBase.PB_MailItemRmaildata"x
WD2DB_GMSendMail
mailtype (Rmailtype
account (	Raccount.
maildata (2.PBase.PB_MailItemRmaildata"Y
DB2PHP_GMSendMail
ret (Rret
finish (Rfinish
mailtype (Rmailtype"E
PHP2DB_GMQueryAllMail
type (Rtype
account (	Raccount"]
DB2PHP_GMQueryAllMail
type (Rtype0
maillist (2.PBase.PB_MailItemExRmaillist"G
PHP2WD_GMDeleteMail
mailid (	Rmailid
account (	Raccount",
WD2DB_GMDeleteMail
mailid (	Rmailid"?
DB2PHP_GMDeleteMail
ret (Rret
mailid (	Rmailid"±
WD2HTTP_IOSPayCheck
account (	Raccount

playerdbid (R
playerdbid
payid (Rpayid
paycode (	Rpaycode
paytype (Rpaytype
repair (Rrepair"ﬂ
HTTP2WD_IOSPayCheck
ret (Rret
account (	Raccount

playerdbid (R
playerdbid
payid (Rpayid
paycode (	Rpaycode
paytype (Rpaytype
payorder (	Rpayorder
repair (Rrepair"-
WD2LOG_Record
	recordstr (	R	recordstrbproto3