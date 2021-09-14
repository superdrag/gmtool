
û-
LocalData.proto	LocalData"¹
Login
account (	Raccount
passwd (	Rpasswd
version (	Rversion
headicon (	Rheadicon
guest (Rguest
reconn (Rreconn
platform (	Rplatform"6
MainTask
id (Rid
progress (Rprogress"~
RoleItem
id (Rid
curnum (Rcurnum
extnum (Rextnum
	countdown (R	countdown
state (Rstate"7
Role/
roleList (2.LocalData.RoleItemRroleList"v
Currency1
list (2.LocalData.Currency.ListEntryRlist7
	ListEntry
key (	Rkey
value (Rvalue:8"~
BossRoleTask5
list (2!.LocalData.BossRoleTask.ListEntryRlist7
	ListEntry
key (Rkey
value (Rvalue:8"|
BossRoleAds4
list (2 .LocalData.BossRoleAds.ListEntryRlist7
	ListEntry
key (Rkey
value (Rvalue:8"n

BallerItem
level (Rlevel
progress (Rprogress
equip (Requip
starNum (RstarNum"‰
Baller/
list (2.LocalData.Baller.ListEntryRlistN
	ListEntry
key (Rkey+
value (2.LocalData.BallerItemRvalue:8"²
GiftPackItem
isActive (RisActive
buyNum (RbuyNum
overTime (RoverTime
	popupTime (R	popupTime

activeTime (R
activeTime
adNum (RadNum"
GiftPack1
list (2.LocalData.GiftPack.ListEntryRlistP
	ListEntry
key (Rkey-
value (2.LocalData.GiftPackItemRvalue:8"X
FacilityItem
curLevel (RcurLevel
time (Rtime
isBreak (RisBreak"‡
Room-
list (2.LocalData.Room.ListEntryRlistP
	ListEntry
key (Rkey-
value (2.LocalData.FacilityItemRvalue:8"3
	DailyTask
id (Rid
curNum (RcurNum"ª
AllDailyTask
isGet (RisGet5
list (2!.LocalData.AllDailyTask.ListEntryRlistM
	ListEntry
key (Rkey*
value (2.LocalData.DailyTaskRvalue:8"$
RecruitTourist
list (Rlist" 

DoubleTime
time (Rtime"C
AreaInfo
level (Rlevel!
upgrade_time (RupgradeTime"‘
AllAreaInfo4
list (2 .LocalData.AllAreaInfo.ListEntryRlistL
	ListEntry
key (Rkey)
value (2.LocalData.AreaInfoRvalue:8"C
RoomInfo
level (Rlevel!
upgrade_time (RupgradeTime"‘
AllRoomInfo4
list (2 .LocalData.AllRoomInfo.ListEntryRlistL
	ListEntry
key (Rkey)
value (2.LocalData.AreaInfoRvalue:8"'
BuilderFinishTime
list (Rlist"E
	YieldTime

updateTime (R
updateTime
curTime (RcurTime"3
YieldSingleInfo
id (	Rid
num (Rnum";
	YieldInfo.
list (2.LocalData.YieldSingleInfoRlist"8
TimeBeAttacked&
timeBeAttacked (RtimeBeAttacked"Q
TouristInfo
	touristID (R	touristID$
isUnconfirmed (RisUnconfirmed"@
UnconfirmedTourist*
list (2.LocalData.TouristInfoRlist"M
SettingInfo
language (	Rlanguage"
isShowBubble (RisShowBubble"˜
SingleHookInfo
roomID (RroomID
time (Rtime
isHook (RisHook
yield (Ryield
adNum (RadNum
baller (Rballer"—
AllHookInfo4
list (2 .LocalData.AllHookInfo.ListEntryRlistR
	ListEntry
key (Rkey/
value (2.LocalData.SingleHookInfoRvalue:8"•
SingleProductInfo
id (Rid
	milestone (R	milestone
star (Rstar
	isCollect (R	isCollect 
productTime (RproductTime" 
AllProductInfo7
list (2#.LocalData.AllProductInfo.ListEntryRlistU
	ListEntry
key (Rkey2
value (2.LocalData.SingleProductInfoRvalue:8"=
SingleEquipInfo
id (Rid
configID (RconfigID"š
OwnEquipInfo5
list (2!.LocalData.OwnEquipInfo.ListEntryRlistS
	ListEntry
key (Rkey0
value (2.LocalData.SingleEquipInfoRvalue:8"|
EquipIsLock4
list (2 .LocalData.EquipIsLock.ListEntryRlist7
	ListEntry
key (Rkey
value (Rvalue:8"

EquipIDNum
id (Rid"X
SingleEquipProduct
configID (RconfigID
time (Rtime
type (Rtype"£
AllEquipProduct8
list (2$.LocalData.AllEquipProduct.ListEntryRlistV
	ListEntry
key (Rkey3
value (2.LocalData.SingleEquipProductRvalue:8"W
ProductInfo$
canProductNum (RcanProductNum"
productIDNum (RproductIDNum"t
ResTime0
list (2.LocalData.ResTime.ListEntryRlist7
	ListEntry
key (	Rkey
value (Rvalue:8"
PassTaskState
id (Rid 
curProgress (RcurProgress&
targetProgress (RtargetProgress
isGet (RisGet"÷
	enemyItem
id (Rid
name (	Rname
fightNum (RfightNum#
rune_judgment (RruneJudgment!
rune_tactics (RruneTactics)
rune_cooperation (RruneCooperation#
rune_cohesive (RruneCohesive
head (	Rhead"C
	RankTop106
rankingList (2.LocalData.enemyItemRrankingList"G
	RankEnemy:
rankEnamyList (2.LocalData.enemyItemRrankEnamyList"$

RankRecord
record (Rrecord"5
	goodsItem
name (	Rname
state (Rstate"@

GoodsState2
	goodsList (2.LocalData.goodsItemR	goodsList"L
unlockedNewsItem
id (Rid
state (Rstate
time (Rtime"W
UnlockedNewsG
unlockedNewsList (2.LocalData.unlockedNewsItemRunlockedNewsList"7
LockingNews(
lockingNewsList (RlockingNewsList"s
PassExp
passExp (RpassExp
weekExp (RweekExp
week (Rweek 
seasonCount (RseasonCount"
Guide
list (Rlist"ó
	ArenaInfo
	curGameID (R	curGameID
	curRankID (R	curRankID
rankNum (RrankNum

rankAddNum (R
rankAddNum
helpNum (RhelpNum
helpSum (RhelpSum

peopleTime (R
peopleTime
	peopleNum (R	peopleNum"=
NormalCount
count (Rcount
curTime (RcurTime">
SpeedUpPower
power (Rpower
curTime (RcurTime" 
HeadID
headID (	RheadID"
	SpUseTime
time (Rtime"&
NormalAdsCount
count (Rcountbproto3