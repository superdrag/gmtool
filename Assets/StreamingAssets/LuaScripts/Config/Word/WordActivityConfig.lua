
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,}
end
local WordActivityConfig = 
{
["sign_text_1001"] = New("sign_text_1001","第1天","Day 1","第1天","1日目","1일차"),
["sign_text_1002"] = New("sign_text_1002","第2天","Day 2","第2天","2日目","2일차"),
["sign_text_1003"] = New("sign_text_1003","第3天","Day 3","第3天","3日目","3일차"),
["sign_text_1004"] = New("sign_text_1004","第4天","Day 4","第4天","4日目","4일차"),
["sign_text_1005"] = New("sign_text_1005","第5天","Day 5","第5天","5日目","5일차"),
["sign_text_1006"] = New("sign_text_1006","第6天","Day 6","第6天","6日目","6일차"),
["sign_text_1007"] = New("sign_text_1007","第7天","Day 7","第7天","7日目","7일차"),
["title_sign"] = New("title_sign","七日登录","7 Days Login","七日登錄","ログイン","7일등록"),
["tip_month"] = New("tip_month","1.激活后，玩家可立即获取对应的钻石。\n \n2.每次购买可增长月卡时长：30天\n \n3.激活后，玩家每日可免费领取专属奖励。","1.Once Activated, you can gain a corresponding amount of Diamonds.\n \n2.Multiple purchasing will extend the duration for 30 Days.\n \n3.Once activated, You can claim a special daily bonus every day.","1.啟動後，玩家可立即獲取對應的鑽石。\n \n2.每次購買可增長月卡時長：30天\n \n3.啟動後，玩家每日可免費領取專屬獎勵。","1.アクティブにすると、プレイヤーは即座に対応するダイヤモンドを取得することができます。\n \n2.月極定期券を買うたびに長い時間：30日間\n \n3.アクティブにしてから、プレーヤーは毎日無料で専属奨励金を受け取ることができます。","1. 활성화 후, 유 저 는 즉시 대응 하 는 다이 아 를 획득 할 수 있 습 니 다.\n \n2. 매번 구 매 시 월 정액 증가 시간: 30 일\n \n3. 활성화 후, 유 저 는 매일 전속 보상 을 무료 로 수령 할 수 있 습 니 다."),
["tip_monthday"] = New("tip_monthday","剩余%s天","%s day(s) left","剩餘%s天","残り%s日間","남 은%s일"),
["tip_monthdayly"] = New("tip_monthdayly","月卡","Monthly Pass","月卡","月極カード","월 정액"),
["title_gloves"] = New("title_gloves","无限手套","Infinity Glove","無限手套","グローブ","무한 장갑"),
["title_ball"] = New("title_ball","水晶棒球","Crystal Ball","水晶棒球","水晶野球","수정 야구"),
["monthly_get"] = New("monthly_get","立即获取","Get It Now","立即獲取","すぐに取得します","즉시 획득"),
["monthly_perday"] = New("monthly_perday","每日可领","Available every day","每日可領","毎日もらうことができます","매일 수령 가능"),
["monthly_alph"] = New("monthly_alph","自动处理顾客的疲惫状态","Automatically deal with the exhaustion of customers.","自動處理顧客的疲憊狀態","お客様の疲れを自動処理します。","고객 의 피로 상 태 를 자동 으로 처리 하 다."),
["monthly_auto"] = New("monthly_auto","自动捡起地上的钞票","Automatically collects bills","自動撿起地上的鈔票","地面の札を自動で拾う","땅 위의 지 폐 를 자동 으로 줍다."),
["monthly_already"] = New("monthly_already","已领取","Obtained","已領取","受け取り済み","이미 수령"),
["monthly_buy"] = New("monthly_buy","购买","Purchase","購買","買います","사다"),
["title_Goldenbat"] = New("title_Goldenbat","黄金球棒","Golden Bat","黃金球棒","ゴールドバット","황금 방망이"),
["title_back"] = New("title_back","返利！","VALUE","返利！","リベート！","리베이트"),
["tip_Goldenbat"] = New("tip_Goldenbat","购买黄金球棒后才可领取","Available after purchasing the Golden Bat","購買黃金球棒後才可領取","ゴールドバットを購入した後にのみピックアップすることができます","골드 배트를 구입한 후에만 수령할 수 있습니다"),
}
TableMerge(WordConfig,WordActivityConfig)
end