
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,}
end
local WordItemConfig = 
{
["item_name_10001"] = New("item_name_10001","普通沙漏","Ordinary hourglass","普通沙漏","普通の砂時計","일반 모래시계"),
["item_name_10002"] = New("item_name_10002","高级沙漏","Advanced hourglass","高級沙漏","高級砂時計","고급 모래시계"),
["item_name_10003"] = New("item_name_10003","稀有沙漏","Rare hourglass","稀有沙漏","希少砂時計","희귀 한 모래시계"),
["item_name_10004"] = New("item_name_10004","史诗沙漏","Epic hourglass","史詩沙漏","史詩砂時計","에 픽 모래시계"),
["item_name_10005"] = New("item_name_10005","传奇沙漏","Legendary hourglass","傳奇沙漏","伝説の砂時計","전설 모래시계"),
["item_name_10006"] = New("item_name_10006","初级礼盒","Primary gift box","初級禮盒","初級ギフト？ボックス","초급 선물 상자"),
["item_name_10007"] = New("item_name_10007","中级礼盒","Intermediate gift box","中級禮盒","中級ギフトボックス","중급 선물 상자"),
["item_name_10008"] = New("item_name_10008","高级礼盒","Advanced gift box","高級禮盒","ギフト？ボックス","고급 선물 상자"),
["item_name_10009"] = New("item_name_10009","初级兑换券","Primary exchange coupon","初級兌換券","初級引換券","초급 교환 권"),
["item_name_10010"] = New("item_name_10010","中级兑换券","Intermediate certificate","中級兌換券","中級引換券","중급 교환 권"),
["item_name_10011"] = New("item_name_10011","高级兑换券","Advanced exchange coupon","高級兌換券","高級為替券","고급 교환 권"),
["item_name_2001"] = New("item_name_2001","经验小药瓶","EXP Tube","經驗藥水","経験薬","경험용 약물"),
["item_name_2002"] = New("item_name_2002","经验药瓶","EXP Bottle","經驗藥水","経験薬","경험용 약물"),
["item_name_2003"] = New("item_name_2003","经验药罐","EXP Jar","經驗藥水","経験薬","경험용 약물"),
["item_name_2004"] = New("item_name_2004","经验大药罐","EXP Pitcher","經驗藥水","経験薬","경험용 약물"),
["description_name_10001"] = New("description_name_10001","减少队员训练时间30s","Reduce the standby time of team members by 10s","减少隊員待機時間10s","隊員の待機時間を10 s減らす","멤버 대기 시간 감소 10s"),
["description_name_10002"] = New("description_name_10002","减少队员训练时间60s","Reduce the standby time of team members by 20s","减少隊員待機時間20s","隊員の待機時間を20 s減らす","멤버 대기 시간 감소 20s"),
["description_name_10003"] = New("description_name_10003","减少队员训练时间120s","Reduce the standby time of team members by 30s","减少隊員待機時間30s","隊員の待機時間を30 s減らす","멤버 대기 시간 감소 30s"),
["description_name_10004"] = New("description_name_10004","减少队员训练时间300s","Reduce the standby time of team members by 40s","减少隊員待機時間40s","隊員の待機時間を40 s減らす","멤버 대기 시간 감소 40s"),
["description_name_10005"] = New("description_name_10005","减少队员训练时间600s","Reduce the standby time of team members by 50s","减少隊員待機時間50s","隊員の待機時間を50 s減らす","멤버 대기 시간 감소 50s"),
["description_name_10006"] = New("description_name_10006","可以开出少量奖励","You can offer a small reward","可以開出少量獎勵","少しのご褒美を出すことができます","소량의 보상 을 열 수 있 습 니 다"),
["description_name_10007"] = New("description_name_10007","可以开出一些奖励","You can give some rewards","可以開出一些獎勵","いくつか奨励を出すことができます","보상 을 드 립 니 다"),
["description_name_10008"] = New("description_name_10008","可以开出大量奖励","You can offer a lot of rewards","可以開出大量獎勵","大量の奨励を出すことができます","대량 보상 을 열 수 있 습 니 다"),
["description_name_10009"] = New("description_name_10009","用来打开初级礼盒","Used to open the primary exchange certificate","用來打開初級兌換券","初級両替券を開けます","초급 교환 권 열기"),
["description_name_10010"] = New("description_name_10010","用来打开中级礼盒","Used to open the intermediate coupon","用來打開中級兌換券","中級引換券を開くために使います","중급 교환 권 열기"),
["description_name_10011"] = New("description_name_10011","用来打开高级礼盒","Used to open a premium coupon","用來打開高級兌換券","高級両替券を開けます","고급 교환 권 열기"),
["source_name_10001"] = New("source_name_10001","职业棒球场一阶联赛产出","Arena first level league output","競技場一階聯賽產出","競技場1次リーグ産出","경기장 1 단계 리그 산출"),
["source_name_10002"] = New("source_name_10002","职业棒球场二阶联赛产出","Arena second level league output","競技場二階聯賽產出","競技場二次リーグ産出","경기장 2 단계 리그 산출"),
["source_name_10003"] = New("source_name_10003","职业棒球场三阶联赛产出","Arena third level league output","競技場三階聯賽產出","競技場三次リーグ産出","경기장 3 단계 리그 산출"),
["source_name_10004"] = New("source_name_10004","职业棒球场四阶联赛产出","Arena fourth level league output","競技場四階聯賽產出","競技場四次リーグ産出","경기장 4 단계 리그 산출"),
["source_name_10005"] = New("source_name_10005","职业棒球场五阶联赛产出","Arena fifth level league output","競技場五階聯賽產出","競技場5次リーグ産出","경기장 5 단계 리그 산출"),
["source_name_10006"] = New("source_name_10006","职业棒球场一阶联赛产出","Arena first level league output","競技場一階聯賽產出","競技場1次リーグ産出","경기장 1 단계 리그 산출"),
["source_name_10007"] = New("source_name_10007","职业棒球场二阶联赛产出","Arena second level league output","競技場二階聯賽產出","競技場二次リーグ産出","경기장 2 단계 리그 산출"),
["source_name_10008"] = New("source_name_10008","职业棒球场三阶联赛产出","Arena third level league output","競技場三階聯賽產出","競技場三次リーグ産出","경기장 3 단계 리그 산출"),
["source_name_10009"] = New("source_name_10009","职业棒球场一阶联赛产出","Arena first level league output","競技場一階聯賽產出","競技場1次リーグ産出","경기장 1 단계 리그 산출"),
["source_name_10010"] = New("source_name_10010","职业棒球场二阶联赛产出","Arena second level league output","競技場二階聯賽產出","競技場二次リーグ産出","경기장 2 단계 리그 산출"),
["source_name_10011"] = New("source_name_10011","职业棒球场三阶联赛产出","Arena third level league output","競技場三階聯賽產出","競技場三次リーグ産出","경기장 3 단계 리그 산출"),
["description_name_2001"] = New("description_name_2001","球员升级道具，使用后为球员增加微量经验值","Players upgrade props.Increase a minim amount of player EXP after use.","使用後增加微量經驗值","使用後にわずかな経験値が増える","사용 후 미량 경험치가 증가한다"),
["description_name_2002"] = New("description_name_2002","球员升级道具，使用后为球员增加少量经验值","Players upgrade props.Increase a small amount of player EXP after use.","使用後增加少量經驗值","使用すると経験値が少し増える","사용 후 소량의 경험치가 증가합니다"),
["description_name_2003"] = New("description_name_2003","球员升级道具，使用后为球员增加大量经验值","Players upgrade props.Increase a large amount of player EXP after use.","使用後增加大量經驗值","使うと経験値が大きく増える","사용 후 경험치가 많이 증가합니다"),
["description_name_2004"] = New("description_name_2004","球员升级道具，使用后为球员增加巨量经验值","Players upgrade props.Increase a giant amount of player EXP after use.","使用後增加巨量經驗值","使用すると膨大な経験値が増える","사용 후 많은 양의 경험치가 증가합니다"),
["item_name_3001"] = New("item_name_3001","随机普通卡包","Random normal card pack","隨機綠卡","ランダムグリーンカード","임의의 그린 카드"),
["item_name_3002"] = New("item_name_3002","随机稀有卡包","Random rare card pack","隨機藍卡","ランダムブルーカード","임의의 파란색 카드"),
["item_name_3003"] = New("item_name_3003","随机史诗卡包","Random elite card pack","隨機紫卡","ランダム紫色のカード","임의의 보라색 카드"),
["item_name_3004"] = New("item_name_3004","随机传说卡包","Random epic card pack","隨機橙卡","ランダムオレンジカード","랜덤 오렌지 카드"),
["description_name_3001"] = New("description_name_3001","使用后立即获得一张普通品质的球员或者建筑","Get a normal player or building by random after use","使用後立即獲得一張普通品質的球員或者建築","使用後すぐにランダムなグリーンカードを取得します","사용 후 즉시 무작위 영주권을 받으십시오"),
["description_name_3002"] = New("description_name_3002","使用后立即获得一张稀有品质的球员或者建筑","Get a rare player or building by random after use","使用後立即獲得一張稀有品質的球員或者建築","使用直後にランダムなブルーカードを入手してください","사용 후 즉시 무작위 블루 카드를 받으십시오"),
["description_name_3003"] = New("description_name_3003","使用后立即获得一张史诗品质的球员或者建筑","Get an elite player or building by random after use","使用後立即獲得一張史詩品質的球員或者建築","使用直後にランダムな紫色のカードを取得します","사용 후 즉시 무작위 보라색 카드를 받으십시오"),
["description_name_3004"] = New("description_name_3004","使用后立即获得一张传说卡品质的球员或者建筑","Get an epic player or building by random after use","使用後立即獲得一張傳說卡品質的球員或者建築","使用後すぐにランダムなオレンジカードを取得します","사용 후 즉시 무작위 오렌지 카드를 받으십시오"),
["item_name_3005"] = New("item_name_3005","时间沙漏","Time-glass","時間電池","タイム電池","시간 전지"),
["description_name_3005"] = New("description_name_3005","一个能让时间加速器直接补满的神奇沙漏，可通过活动获取。","A magical Time-glass that can fill up the Time Lasper instantly. Available in the events.","時間加速器的專用電池，使用後補滿時間加速器的電量。","時間加速器の専用電池は、使用後に時間加速器の電気量を満たします。","시간 가속기 의 전용 배 터 리 는 사용 후 시간 가속기 의 전 기 를 채 웁 니 다"),
}
TableMerge(WordConfig,WordItemConfig)
end