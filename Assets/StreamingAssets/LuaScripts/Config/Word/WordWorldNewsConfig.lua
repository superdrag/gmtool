
do
local function New(a0,a1,a2,a3,a4,a5)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,}
end
local WordWorldNewsConfig = 
{
["worldnews_title_1001"] = New("worldnews_title_1001","棒球娱乐","Entertainment","棒球娛樂","野球のエンターテイメント","야구 엔터테인먼트"),
["worldnews_title_1002"] = New("worldnews_title_1002","警方通告","Sheriff's Notice","警方通告","警察が発表した","경찰 통지"),
["worldnews_title_1003"] = New("worldnews_title_1003","新闻直播","Live News","新聞直播","ニュースの生放送","뉴스 라이브"),
["worldnews_title_1005"] = New("worldnews_title_1005","棒球新闻","Baseball News","棒球新聞","野球のニュース","야구 뉴스"),
["worldnews_title_1006"] = New("worldnews_title_1006","俱乐部通告","Club notice","俱樂部通告","クラブのお知らせ","클럽 공지 사항"),
["worldnews_describe_1001"] = New("worldnews_describe_1001","近日，废弃多时的棒球俱乐部重新翻新开业，棒球爱好者们表示相当期待他的发展，我们会持续关注！","A baseball club abandoned for a long reopened recently. Baseball fans say they are expecting its development. We'll put an eye on it!","近日，廢棄多時的棒球俱樂部重新翻新開業，棒球愛好者們表示相當期待他的發展，我們會持續關注！","最近、放棄された多くの時間野球クラブが改装され、野球ファンは、彼の開発を非常に楽しみにしていると言いました、そして、我々は常に注意を払います!","최근, 야구 클럽의 오랜 시간 동안 버려진 리노베이션 오픈, 야구 팬들은 그의 발전을 기대하고 있다고 말했다, 우리는 계속 지켜볼 것입니다!"),
["worldnews_describe_1002"] = New("worldnews_describe_1002","警方提醒广大市民朋友：近日小偷猖獗，在外出时一定要注意随身财产安全！","The Sheriff Office warns of thieves: Everyone needs to pay attention to the safety of their property! If you find anyone suspicious, call the police.","警方提醒廣大市民朋友：近日小偷猖獗，在外出時一定要注意隨身財產安全！","警察は、一般市民の友人に思い出させる:最近、泥棒が横行し、外出中に財産の安全に注意を払う必要があります!","경찰은 일반 대중의 친구를 생각 나게 : 최근 도둑이 만연, 외출 할 때 재산 안전에주의를 기울여야한다!"),
["worldnews_describe_1003"] = New("worldnews_describe_1003","近期有商家投诉出现新的捣蛋鬼——面具怪人变装赶走游客，我们会持续关注。","A nasty kind of 'Pests', so-called by local shops, who wears a mask and drives out customers, appears recently. We will keep following this.","市區突然興起變裝惡搞，近期有相當多的商家投訴變裝趕客現象，我們會持續關注。","都市部では、突然の変装の悪ふざけが台頭し、最近、多くのビジネスマンが変装の追い詰めについて苦情を申し立て、我々は引き続き注意を払います。","도시 지역에서 갑자기 위장 장난이 증가하고, 최근 많은 상인이 위장에 대해 불평하고, 우리는 계속 지켜볼 것입니다."),
["worldnews_describe_1004"] = New("worldnews_describe_1004","警方提醒：近期有一群热衷于潜入商户四处破坏的捣蛋鬼——磁吸男，请各商户注意辨别。","The Sheriff Office warns of danger: Recently, there is a group known as Magnetor who is raging shops in the local neighborhood.If you see one of them, let us know.","警方提醒：近期有一群熱衷於潛入商戶四處破壞的犯罪團夥在我市遊蕩，請各商戶注意辨別。","警察は警告しました:最近、商人の周りに潜入し、破壊することに熱心である犯罪グループのグループは、私たちの街をさまよっている、商人は識別に注意を払う必要があります。","경찰은 경고 : 최근 우리 도시를 배회하는 범죄 갱단의 파괴에 침투에 대한 열정이있다, 식별에주의를 기울이십시오."),
["worldnews_describe_1005"] = New("worldnews_describe_1005","为庆祝棒球协会入驻，协会即将举办职业棒球联赛，希望各大俱乐部和球队积极参加!","To celebrate the establishment of the Baseball Association, a game host by the association is about to start. We hope that major clubs and teams will participate!","為慶祝棒球協會入駐，協會即將舉辦職業棒球聯賽，希望各大俱樂部和球隊積極參加!","野球協会の入会を記念して、協会はプロ野球リーグを開催し、クラブやチームが積極的に参加することを期待しています!","야구협회 입단을 기념해 프로야구 리그를 앞두고 있어 주요 구단과 구단들이 적극적으로 참여하기를 바란다!"),
["worldnews_describe_1006"] = New("worldnews_describe_1006","近期天气炎热，各位棒球爱好者要谨防运动过量进入疲惫状态。","As the hot wave strikes the city, the weather has been very hot recently. Be careful of heatstroke while exercising.","近期天氣炎熱，各位棒球愛好者要謹防運動過量進入疲憊狀態。","最近の暑い天候では、野球ファンは過度の運動が疲労状態に入るのを警戒する必要があります。","요즘 날씨가 더우니까 야구 애호가들은 운동 과다로 지쳐가는 것을 조심해야 한다."),
["worldnews_describe_1007"] = New("worldnews_describe_1007","游客好感度提示：近期越来越多的游客开始关注俱乐部的安保工作。","Customer Impression tips: More and more tourists have recently begun to pay attention to Security Work.","遊客好感度提示：近期越來越多的遊客開始關注俱樂部的安保工作。","訪問者の好感度のヒント:最近、ますます多くの観光客がクラブのセキュリティに注意を払うようになった。","관광객의 호감도 팁 : 최근 점점 더 많은 관광객이 클럽의 보안에주의를 기울이기 시작했습니다."),
["worldnews_describe_1008"] = New("worldnews_describe_1008","游客好感度提示：近期越来越多的游客开始关注俱乐部的设备保养。","Customer Impression tips: More and more tourists have recently begun to pay attention to Infrastructure.","遊客好感度提示：近期越來越多的遊客開始關注俱樂部的設備保養。","訪問者の好感度のヒント:最近、ますます多くの観光客がクラブの機器のメンテナンスに注意を払うようになった。","관광객의 호감도 팁 : 최근 점점 더 많은 관광객이 클럽의 장비 유지 보수에주의를 기울이기 시작했습니다."),
["worldnews_describe_1009"] = New("worldnews_describe_1009","游客好感度提示：近期越来越多的游客开始关注俱乐部的消费体验。","Customer Impression tips: More and more tourists have recently begun to pay attention to Customer Experience.","遊客好感度提示：近期越來越多的遊客開始關注俱樂部的消費體驗。","訪問者の好感度のヒント:最近、ますます多くの観光客がクラブの消費体験に注目し始めています。","관광객의 호감도 팁 : 최근 점점 더 많은 관광객이 클럽의 소비 경험에주의를 기울이기 시작했습니다."),
["worldnews_describe_1010"] = New("worldnews_describe_1010","游客好感度提示：近期越来越多的游客开始关注俱乐部的服务态度。","Customer Impression tips: More and more tourists have recently begun to pay attention to Service Attitude.","遊客好感度提示：近期越來越多的遊客開始關注俱樂部的服務態度。","訪問者の好感度のヒント:最近、ますます多くの観光客がクラブのサービス態度に注意を払うようになった。","관광객의 호감도 팁 : 최근 점점 더 많은 관광객이 클럽의 서비스 태도에주의를 기울이기 시작했습니다."),
["worldnews_describe_1011"] = New("worldnews_describe_1011","游客好感度提示：近期越来越多的游客开始关注俱乐部的宣传力度。","Customer Impression tips: More and more tourists have recently begun to pay attention to Promotion Efforts.","遊客好感度提示：近期越來越多的遊客開始關注俱樂部的宣傳力度。","訪問者の好感度のヒント:最近、ますます多くの観光客がクラブの宣伝に注意を払っています。","관광객의 호감도 팁 : 최근 점점 더 많은 관광객이 클럽의 홍보에주의를 기울이기 시작했습니다."),
}
TableMerge(WordConfig,WordWorldNewsConfig)
end