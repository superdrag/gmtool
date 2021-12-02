
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordTipsConfig = 
{
["tip_confirm"] = New("tip_confirm","确定","Confirm","確定","を選択します","확정 하 다.","wortipsconfig"),
["tip_cancel"] = New("tip_cancel","取消","Cancel","取消","キャンセル","취소 하 다.","wortipsconfig"),
["tip_get"] = New("tip_get","恭喜获得","Congratulations！","恭喜獲得","おめでとうございます","획득 을 축하합니다","wortipsconfig"),
["tip_accept"] = New("tip_accept","接受","OK","接受","受け入れる","받다","wortipsconfig"),
["tip_refuse"] = New("tip_refuse","不了谢谢","No, thanks","不了謝謝","ありがとうございます","아니요, 감사합니다.","wortipsconfig"),
["tip_toget"] = New("tip_toget","获取","Obtain","獲取","取得","획득","wortipsconfig"),
["tip_freeget"] = New("tip_freeget","免费获取","Get for FREE","免費獲取","無料","무료 획득","wortipsconfig"),
["tip_adddown"] = New("tip_adddown","此操作永久有效","This operation is permanent","此操作永久有效","この操作は常に有効です。","이 동작 은 영구적 으로 유효 합 니 다.","wortipsconfig"),
["tip_news"] = New("tip_news","信息","Info","資訊","資訊","획득","wortipsconfig"),
["currency_notEnough"] = New("currency_notEnough","%s数量不足","Insufficient %s","%s數量不足","%sの数が足りません","%s 수량 부족","wortipsconfig"),
["machine_max"] = New("machine_max","设备已升至满级！","Facility level MAX!","已經到達最大建造等級","最大建造レベルに達しました。","이미 최대 건조 레벨 에 도달 하 였 습 니 다","wortipsconfig"),
["cooling_time"] = New("cooling_time","恢复时间：%s","Recovery Time: %s","恢復時間： %s","回復時間:%s","회복 시간:%s","wortipsconfig"),
["speed_up"] = New("speed_up","立即补满","Recover Now","補滿加速","スピードを埋める","충전 가속","wortipsconfig"),
["speed_introduction"] = New("speed_introduction","观看视频就可以补满时间加速器哦！","Watching Ad can recover Time Lapser!","觀看廣告就可以補滿加速條哦！","広告を見るとスピードバーが補えますよ。","광 고 를 보면 가속 바 를 채 울 수 있 습 니 다!","wortipsconfig"),
["speed_upcooling"] = New("speed_upcooling","距离刷新还有%s","Refresh after %s","距離刷新還有%s","更新まであと%s","리 셋 까지%s 남 았 습 니 다",""),
["employee_rest"] = New("employee_rest","%s正在休息，请等待哦","%s is resting. Please wait.","%s正在休息，請等待哦","%sは休憩中ですので、待ってください。","%s 휴식 중, 대기 하 세 요","wortipsconfig"),
["employee_busy"] = New("employee_busy","%s正忙，请耐心等待哦","%s is busy. Please wait.","%s正忙，請耐心等待哦","%sが忙しいので、待ってください。","%s 바 쁘 니 기 다 려 주세요","wortipsconfig"),
["leaflet_max"] = New("leaflet_max","喇叭数量已经到达上限，请先使用一些吧！","Loudspeaker has reached its MAX number. Use some first.","喇叭數量已經到達上限，請先使用一些吧！","スピーカーの数が上限に達しました。とりあえず使ってください。","나팔 수량 이 상한 에 도 달 했 습 니 다. 우선 사용 하 세 요!","wortipsconfig"),
["miss_10001"] = New("miss_10001","缺少%s","Needs %s","缺少%s","%sが足りません","%s 부족","wortipsconfig"),
["miss_10002"] = New("miss_10002","当前%s数量不足","Current %s is insufficient","當前%s數量不足","現在%sの数が足りません","현재%s 수량 부족","wortipsconfig"),
["equipment_damage"] = New("equipment_damage","设备损坏","Facility broken","設備損壞","設備が壊れる","장치 손상","wortipsconfig"),
["equipment_tips"] = New("equipment_tips","设备已经损坏了，赶紧处理一下吧！","Facility is broken. Hurry and fix it!","設備已經損壞了，趕緊處理一下吧！","設備が壊れました。早く処理してください。","설비 가 이미 파손 되 었 으 니 서둘러 처리 합 시다!","wortipsconfig"),
["equipment_find"] = New("equipment_find","找修理工","Find a Repairman","找修理工","修理工をさがす","수리 공 을 찾다","wortipsconfig"),
["equipment_fix"] = New("equipment_fix","直接修理","Repair anyway","快去修理","早く修理に行きなさい","빨리 수리 해.","wortipsconfig"),
["equipment_time"] = New("equipment_time","冷却时间","CD time","冷卻時間","冷却時間","쿨 링 타임","wortipsconfig"),
["equipment_free"] = New("equipment_free","修理次数","Number of repairs","空閒人數","空き人数","남 은 인원수",""),
["equipment_freetime"] = New("equipment_freetime","修理次数，每解锁一个工作位置增加一次。","The number of repairs increases every time a working position is unlocked.","","","",""),
["equipment_watch"] = New("equipment_watch","观看短短的视频，就可以直接修理设备！","Watching Ad can fix your facility immediately!","觀看短短的廣告，就可以直接修理設備！","短い広告を見ると、直接設備を修理できます。","짧 은 광 고 를 보면 설 비 를 직접 수리 할 수 있 습 니 다!","wortipsconfig"),
["tip_repair"] = New("tip_repair","工人们都在休息中","Repairmen are resting.","工人們都在休息中","労働者たちはみな休憩中です。","노동자 들 은 모두 쉬 고 있다.",""),
["tip_build"] = New("tip_build","工人们都在忙碌中,稍等一会吧","Repairmen are buy. Please wait.","工人們都在忙碌中,稍等一會吧","労働者たちは皆忙しい中で、ちょっと待ってください。","일꾼 들 이 바 쁘 니 조금 만 기 다 려 주세요.",""),
["tip_min"] = New("tip_min","分钟","min","分鐘","分","분.",""),
["tip_sec"] = New("tip_sec","秒","sec","秒","秒","초.",""),
["tip_hour"] = New("tip_hour","小时","h","小時","時間","시간.",""),
["tip_day"] = New("tip_day","天","day","天","日","일",""),
["tip_room"] = New("tip_room","房间未解锁","The room is locked","房間未解鎖","部屋の鍵が解除されていません","방 이 잠 겨 있 지 않 습 니 다.",""),
["tip_success"] = New("tip_success","成功","Success","成功","成功","성공 하 다.",""),
["tip_failure"] = New("tip_failure","失败","Failure","失敗","失敗","실패 하 다.",""),
["tip_fin"] = New("tip_fin","完成","Complete","完成","完了","완성 하 다.",""),
["tip_nolock"] = New("tip_nolock","%s未解锁","%s is locked","%s未解鎖","%sロックが解除されていません","%s 잠 금 해제 되 지 않 음",""),
["tip_receiv"] = New("tip_receiv","俱乐部持续收益","Idle income","俱樂部持續收益","クラブ継続収益","클럽 지속 수익",""),
["tip_noyielding"] = New("tip_noyielding","暂无可领取奖励","No rewards available","當前未獲取收益","現在、収益は得られていません","현재 수익을 얻지 못했습니다",""),
["tip_long"] = New("tip_long","俱乐部持续收益累计时间最多%s小时","Idle income lasts for up to %s hours","收益最長累計%s分鐘","収益最大累積%s分","수익 최 장 누적%s 분",""),
["tip_operat"] = New("tip_operat","您的棒球俱乐部已持续运营%s分钟","Your Club has kept idle income for %s minutes","您的棒球俱樂部已持續運營%s分鐘","あなたの野球クラブは%s分間運営しています。","당신 의 야구 클럽 은 이미%s 분 동안 계속 운영 되 었 습 니 다.",""),
["tip_direct"] = New("tip_direct","直接领取","Receive directly","直接領取","直接受け取る","직접 수령",""),
["tip_per"] = New("tip_per","每分钟奖励收入：%s","Reward income per minute: %s","每分鐘獎勵收入：%s","毎分の賞与収入：%s","분당 보상 수입:%s",""),
["tip_total"] = New("tip_total","当前持续收益总时长：%s","Current total duration of continuous income: %s","當前持續收益總時長：%s","現在の継続収益の総時間長：%s","현재 지속 수익 총 시간:%s",""),
["tip_hir"] = New("tip_hir","雇佣经理能增加持续收益总时长哦！","Hiring a Manager can increase the total duration of sustained earnings!","雇傭經理能增加持續收益總時長哦！","雇用マネージャーは継続収益を増やすことができます。","사장 을 고용 하면 지속 적 인 수익 을 증가 시 킬 수 있 습 니 다. 총 시간 입 니 다!",""),
["tip_timere"] = New("tip_timere","剩余时间","Time left","剩餘時間","残り時間","남 은 시간",""),
["tip_tour"] = New("tip_tour","图鉴","Atlas","圖鑒","図鑑","도감",""),
["tip_norepair"] = New("tip_norepair","没有修理工，去请球员来帮忙吧！","There is no repairman, go and ask the players to help!","還沒有招聘修理工哦，快去請他來幫忙吧","修理の人はまだ募集していません。早く彼を呼んでください。","아직 수리 공 을 모집 하지 않 았 으 니 어서 가서 그 에 게 도움 을 청 하 세 요.",""),
["tip_needwait"] = New("tip_needwait","设备已损坏。","Facility broken","設備已經損壞了，先請維修工來維修吧！","設備が壊れました。まず修理員を呼んで修理してください。","설비 가 이미 파손 되 었 으 니, 먼저 수리 공 에 게 수리 해 주세요!",""),
["tip_shut"] = New("tip_shut","关闭","Close","關閉","閉じる","닫다",""),
["tip_scree"] = New("tip_scree","点击屏幕继续","Tap to continue","點擊螢幕繼續","スクリーンをクリックして続けます","화면 클릭 계속",""),
["tip_exchange"] = New("tip_exchange","钻石兑换","Diamond exchange","鑽石兌換","ダイヤモンド","다이아몬드 교환",""),
["tip_lecelsort"] = New("tip_lecelsort","按等级排序","Sort by level","按等級排序","等級別にソート","등급 별 정렬",""),
["tip_starsort"] = New("tip_starsort","按星级排序","Sort by star rating","按星級排序","星順に並べ替える","별표 순 으로 정렬 하 다",""),
["tip_qualitysort"] = New("tip_qualitysort","按稀有度排序","Sort by rarity","按稀有度排序","希少度で並べ替え","희귀 도 에 따라 정렬 하 다",""),
["tip_positionsort"] = New("tip_positionsort","按站位排序","Sort by position","按站位排序","駅順に並べ替える","역 위치 에 따라 정렬 하 다",""),
["tip_powersort"] = New("tip_powersort","按战斗力排序","Sort by power","按戰鬥力排序","戦闘力でソート","전투력 에 따라 정렬",""),
["tip_vpcard"] = New("tip_vpcard","游客好评数量，建造和升级设备可获取","Customer Review can be gained by building or upgrading facilities.","遊客好評數量","観光客の好評数","관광객 호평 수량",""),
["tip_cash_use"] = New("tip_cash_use","游客使用设备掉落的钞票","Bills customers paid after using facilities.","遊客使用設備產出鈔票","設備を使ってお金を産み出す","관광객 들 은 설 비 를 이용 하여 지 폐 를 산출 한다.",""),
["tip_cash"] = New("tip_cash","设备每分钟持续产出的钞票，大厅前台可领取","Bills are paid every minute. Gain them at the Front Counter of the Lobby.","每分鐘產出的鈔票","一分おきの札","분당 산출 된 지폐",""),
["tip_ba_wt"] = New("tip_ba_wt","保安工作时间","Guard working","保安工作時間","安全勤務時間","보안 근무 시간",""),
["tip_ba_rt"] = New("tip_ba_rt","保安休息时间","Guard breaking","保安休息時間","安全休憩時間","보안 휴식 시간",""),
["tip_sy_wt"] = New("tip_sy_wt","收银员工作时间","Cashier working","收銀員工作時間","レジ時間","수금 원 근무 시간",""),
["tip_sy_rt"] = New("tip_sy_rt","收银员休息时间","Cashier breaking","收銀員休息時間","レジの休憩時間","수금 원 휴식 시간",""),
["tip_bj_wt"] = New("tip_bj_wt","清洁工工作时间","Cleaner working","保潔員工作時間","清掃員の勤務時間","청소부 근무 시간",""),
["tip_bj_rt"] = New("tip_bj_rt","清洁工休息时间","Cleaner breaking","保潔員休息時間","清掃員の休憩時間","청소부 휴식 시간",""),
["tip_xs_wt"] = New("tip_xs_wt","销售员工作时间","Seller working","銷售員工作時間","販売員の勤務時間","판매원 근무 시간",""),
["tip_xs_rt"] = New("tip_xs_rt","销售员休息时间","Seller breaking","銷售員休息時間","販売員の休憩時間","판매원 휴식 시간",""),
["tip_fw_wt"] = New("tip_fw_wt","啦啦队员工作时间","Cheerleader working","服務員工作時間","従業員の勤務時間","근무 시간",""),
["tip_fw_rt"] = New("tip_fw_rt","啦啦队员休息时间","Cheerleader breaking","服務員休息時間","従業員の休憩時間","종업원 휴식 시간",""),
["tip_w1"] = New("tip_w1","工作中","Working","工作中","仕事中","작업 중",""),
["tip_r1"] = New("tip_r1","休息中","Breaking","休息中","休憩中です","휴식 중",""),
["tip_fr"] = New("tip_fr","空闲中","Free","空閒中","空き中","한가 중",""),
["tip_wt"] = New("tip_wt","工作时间","Working Hours","工作時間","勤務時間","근무 시간",""),
["tip_rt"] = New("tip_rt","休息时间","Break Time","休息時間","休憩時間","휴식 시간",""),
["tip_mainvipcard"] = New("tip_mainvipcard","<size=26><color=#aa5f9b>游客的好评数量</color></size>\n代表了俱乐部的实力，建造和升级新设备可获取更多的好评数量。","<size=26><color=#aa5f9b>Review</color></size>\n indicates level of your Club. Increase it by building or upgrading facilities.","<b>遊客的好評數量</b>代表了俱樂部的實力\n建造和升級新設備可獲取更多的好評數量。","観光客の好評数</b>はクラブの実力を代表して新しい設備を建設してアップグレードして、より多くの好評を得ることができます。","관광객 들 의 호평 수량  는 클럽 의 실력 을 대표 합 니 다 새로운 설 비 를 건설 하고 업그레이드 하면 더 많은 호평 수량 을 얻 을 수 있 습 니 다.",""),
["tip_maincash"] = New("tip_maincash","<size=26><color=#aa5f9b>钞票</color></size>通用货币，可用于升级设备和课程，球员训练，竞技场比赛等。主线任务挂机，完成任务等可获取大量钞票。","<size=26><color=#aa5f9b>Bills</color></size> are widely used money in upgrading facilities and courses, player training, game battle. Completing main quest or idling can obtain more bills.","<b>鈔票</b>可用於升級設備和課程等，鈔票上限1000000k。","お札は設備や課程のアップグレードなどに利用できます。お札の上限は1000キロです。"," 지폐 는 설비 와 과정 등 을 업그레이드 하 는 데 사용 할 수 있 고 지폐 상한 선 은 1000000 k 입 니 다.",""),
["tip_maingem"] = New("tip_maingem","<size=26><color=#aa5f9b>钻石</color></size>可用于特殊资源的购买。任务可获取，也可以通过商城购买或礼包获取。","<size=26><color=#aa5f9b>Diamonds</color></size> are used to purchase special resources. Completing quests and buying from Shop can obtain more diamonds.","<b>寶石</b>商城購買，可用於特殊資源的購買。","宝石ショッピングモールで購入すれば、特殊資源の購入に利用できます。"," 보석상점 에서 구 매, 특수 자원 의 구 매 에 사용.",""),
["tip_coin"] = New("tip_coin","<size=26><color=#aa5f9b>比特币</color></size>棒球场和装备商城的高级货币，可用于设备升级。","<size=26><color=#aa5f9b>Byte Coin</color></size> is a premium currency obtained by baseball stadiums and Gear Shop, which can be used for equipment upgrades.","硬幣，競技場和裝備商城產出，可用於設備升級。","コイン、競技場と装備商城が産出して、設備のアップグレードに使えます。","동전, 경기장 과 장비 상점 에서 생산, 장비 승급 에 사용.",""),
["tip_em_wt"] = New("tip_em_wt","员工工作时间","Staff working hours","員工工作時間","従業員の勤務時間","직원 근무 시간",""),
["tip_em_rt"] = New("tip_em_rt","员工休息时间","Staff breaking time","員工休息時間","従業員の休憩時間","종업원 휴식 시간",""),
["tip_audienceup"] = New("tip_audienceup","观众人数上限","Maximum number of audience","觀眾人數上限","観客数の上限","시청자 수 상한 선",""),
["tip_sensitivewords"] = New("tip_sensitivewords","<color=#ff2a00>俱乐部名包含敏感词</color>","<color=#ff2a00>Illegal club name</color>","<color=#ff2a00>俱樂部名包含敏感詞</color>","クラブ名には敏感語が含まれています。"," 클럽 이름 에 민감 한 단어 포함",""),
["tip_named"] = New("tip_named","点击文本框输入名字","Tap and input a name","點擊文本框輸入名字","テキストボックスをクリックして名前を入力します。","텍스트 상 자 를 클릭 하여 이름 입력",""),
["tip_vie_eff"] = New("tip_vie_eff","每分钟进入停车场的观众数","Number of audience entering Parking Lot per minute","每分鐘進入停車場觀眾數","分ごとに駐車場に入る観客数","분당 주차장 진입 관중 수",""),
["tip_doubletitle"] = New("tip_doubletitle","人山人海","Crowded","人山人海","黒山の人だかり","인산인해",""),
["tip_doubleinstructions"] = New("tip_doubleinstructions","观看视频在特定时间内人流量翻倍！","Watching Ad to double your customers in a specialized time!","觀看視頻在特定時間內人流量翻倍！","ビデオを見て、特定の時間内に人の流れが倍になります。","동 영상 시청 은 특정 시간 에 유 동량 이 배로 늘 었 습 니 다!",""),
["tip_doublemax"] = New("tip_doublemax","人流量提升至%s%%，最大%s小时","People flow increased to %s%%, max %s hours.","人流量提升至%s%%，最大%s小時","人の流量は%s%に上げて、最大%s時間","유 동량%s%%%, 최대%s 시간 으로 증가",""),
["tip_upgread"] = New("tip_upgread","所有设备到达%s级","All facilities reach level %s","所有設備到達%s級","すべてのデバイスは%sレベルに達しました。","모든 장치%s 레벨 달성",""),
["tip_upgreadtitle"] = New("tip_upgreadtitle","竞技场进阶","Stadium Upgrade","競技場進階","競技場の階段","경기장 진급",""),
["head_unlock"] = New("head_unlock","获得%s后解锁该头像","Unlock this icon by obtaining %s","獲得%s後解鎖該頭像","%sを取得したら画像をロックします。","%s 획득 후 이 프로필 잠 금 해제",""),
["function_unit_pp"] = New("function_unit_pp","%","%","%","%","%",""),
["function_unit_ps"] = New("function_unit_ps","/秒","/s","/秒","/s","/s",""),
["function_unit_s"] = New("function_unit_s","秒","s","秒","s","s",""),
["function_unit_pm"] = New("function_unit_pm","/分","/m","/分","/m","/m",""),
["function_unit_m"] = New("function_unit_m","分","m","分","m","m",""),
["function_unit_ph"] = New("function_unit_ph","/时","/h","/時","/h","/h",""),
["function_unit_h"] = New("function_unit_h","小时","h","小時","h","h",""),
["function_unit_none"] = New("function_unit_none","","","","","",""),
["tip_bubbles"] = New("tip_bubbles","建造气泡常驻","Always show build bubbles","氣泡常駐","気泡常駐","기포 가 상주 하 다",""),
["letter_tittle"] = New("letter_tittle","邮箱","Mailbox","郵箱","メールボックス","메 일 박스",""),
["letter_empty"] = New("letter_empty","现在没有可收取的邮件哦！","Nothing new here.","現在沒有可收取的郵件哦！","今は受け取るメールがありません。","지금 받 을 메 일이 없어 요!",""),
["letter_delete"] = New("letter_delete","一键删除","One tap delete.","一鍵刪除","キーで削除","원 클릭 삭제",""),
["letter_get"] = New("letter_get","一键领取","One tap obtain.","一鍵領取","ワンタッチで受け取る","원 클릭 수령",""),
["title_manager"] = New("title_manager","管理","Management","管理","管理","관리 하 다.",""),
["title_area"] = New("title_area","区域","Area","區域","エリア","구역",""),
["title_work"] = New("title_work","经营","Operating","經營","経営する","경영 하 다.",""),
["onhook_title"] = New("onhook_title","持续运营收益","Idle Income","持續運營收益","経営収益","경영 수익",""),
["onhook_time"] = New("onhook_time","运营时间","Idle time","運營時間","運営時間","운영 시간",""),
["onhook_max"] = New("onhook_max","最大","Max","最大","最大","최대",""),
["onhook_get"] = New("onhook_get","领取","Obtain","領取","受け取ります","받다",""),
["onhook_done"] = New("onhook_done","已获取奖励","Obtained","已獲取獎勵","ボーナスを取得しました","보상 획득",""),
["onhook_up"] = New("onhook_up","增加时间","Time increased","增加收益","収益を上げる","수익 을 늘리다",""),
["onhook_double"] = New("onhook_double","翻倍","Doubled","翻倍","倍","두 배",""),
["onhook_triple"] = New("onhook_triple","翻三倍","Tripled","翻三倍","三倍","세 배",""),
["newspaper_add"] = New("newspaper_add","今日免费宣传次数已用完，看广告可以获得额外宣传次数哦！","Today's free promotion times have been used up. You can get extra times by watching the advertisement!","今日免費宣傳次數已用完，看廣告可以獲得額外宣傳次數哦！","今日は無料の宣伝回数がなくなりました。広告を見たら、追加の宣伝回数が得られます。","오늘 무료 홍보 횟수 가 이미 소 진 되 었 습 니 다. 광 고 를 보면 추가 홍보 횟수 를 얻 을 수 있 습 니 다!",""),
["newspaper_refrash"] = New("newspaper_refrash","今日剩余次数:%s","Remaining times today: %s","今日剩餘次數:%s","今日の残り回数:%s","오늘 남 은 횟수:%s",""),
["newspaper_need"] = New("newspaper_need","需要","Need","需要:","必要:","필요했어",""),
["newspaper_refrashless"] = New("newspaper_refrashless","今日广告补充次数已用尽，请明天再来","No more Ad for today. Please come back tomorrow.","今日广告补充次数已用尽，请明天再来","今日の広告の補充回数はすでに尽きました。明日また来てください。","오늘 광고 보충 횟수 가 이미 소 진 되 었 으 니 내일 다시 오 세 요.",""),
["tip_notice"] = New("tip_notice","提示","Notice","提示","ヒント","제시 하 다.",""),
["tip_seize"] = New("tip_seize","当前位置已有球员上阵","Position assigned","當前位置已有球員上陣","当座はもう選手が出陣しました","현재 위치 에 이미 선수 가 출전 하 였 다.",""),
["tip_diamondunlock"] = New("tip_diamondunlock","是否使用钻石提前解锁？","Pay Diamonds to unlock?","是否使用鑽石解鎖？","ダイヤモンドでロックを解除しますか？","다이 아 로 자 물 쇠 를 풀 까요?",""),
["tip_hookspeedup"] = New("tip_hookspeedup","是否使用钻石快速完成？","Pay Diamonds to finish now?","是否使用鑽石快速完成？","ダイヤモンドを使って早く完成したいですか？","다이 아 를 사용 하여 빨리 완성 하 시 겠 습 니까?",""),
["tip_workchange"] = New("tip_workchange","该球员正在{0}担任{1}，是否将其换下？","Player is already serving as a {1} in the {0}. Sure to reassign?","該球員正在{0}擔任{1}，是否將其換下？","この選手は他の敵で働いています。交替しますか？","이 선 수 는 다른 적 에서 일 하고 있 는데, 교체 합 니까?",""),
["tip_onhook"] = New("tip_onhook","二人同时训练经验收益增加10%","Two-person training experience increases by 10%","兩人同時訓練經驗收益增加10%","二人が同時に訓練した経験による収益は10%増加した。","2 인 동시 훈련 경험 치 수익 10% 증가",""),
["tip_onhookthree"] = New("tip_onhookthree","三人同时训练经验收益增加30%","Three-person training experience increases by 30%","三人同時訓練經驗收益增加30%","三人が同時に訓練した経験による収益は30%増加した。"," 3 인 동시 훈련 경험 치 수익 30% 증가",""),
["tip_diamonunlock"] = New("tip_diamonunlock","提前解锁","Unlock now","提前解鎖","早期解除","잠 금 미리 풀기",""),
["tip_roomlock"] = New("tip_roomlock","该房间未解锁","This room is locked","該房間未解鎖","この部屋はロックが解除されていません","이 방 은 잠 금 이 풀 리 지 않 았 습 니 다.",""),
["tip_training"] = New("tip_training","该球员正在别的房间训练","This player now training in another room.","該球員正在別的房間訓練","その選手は別の部屋で練習している","그 선수는 다른 방에서 훈련을하고 있다",""),
["title_startgame"] = New("title_startgame","点击开始游戏","START","點擊開始遊戲","クリックしてゲームを開始します","클릭 하여 게임 시작",""),
["title_connect"] = New("title_connect","连接中...","Connecting…","連接中...","接続中..","연결 중...",""),
["tip_maxlevel"] = New("tip_maxlevel","球员已满级","Player level max","球員已滿級","選手はもう級がいっぱいです","선수 가 이미 만 급 되 었 다",""),
["tip_enoughhook"] = New("tip_enoughhook","当前未安排球员","No player is assigned yet.","當前未安排球員","現在プレイヤーを配置していません。","현재 미 배정 선수",""),
["tip_skip"] = New("tip_skip","跳过","Skip","跳過","スキップ","건너뛰다",""),
["tip_edge"] = New("tip_edge","请理性娱乐适度消费","Take it easy.","請理性娛樂適度消費","理性娯楽を適度に消費してください。","이성 적 인 오락 으로 적당 한 소 비 를 하 세 요.",""),
["mailget"] = New("mailget","获得物品","Get items","獲得物品","アイテムを取得","가져옵니다",""),
["tip_diamon"] = New("tip_diamon","钻石不足，是否前往购买？","More Diamonds are required, do you want to purchase them?","鑽石不足，是否前往購買？","ダイヤモンドが足りない、購入に向かっていますか?","다이아몬드가 충분하지 않은 경우 구매하시겠습니까?",""),
["tip_diamonbuy"] = New("tip_diamonbuy","是否使用钻石购买？","Pay with Diamonds?","是否使用鑽石購買？","ダイヤモンドで購入しますか?","다이아몬드로 구매하시겠습니까?",""),
["tip_fat"] = New("tip_fat","击败捣蛋鬼们获取汉堡能量，使用汉堡能使一段时间内所有游客变成胖游客。胖游客使用设备会获取双倍收益。","Drive out “Pests” to obtain Burger Gage. Use Burger to turn customers into Big Guys for a while.Big Guys bring us more revenue of using facilities.","擊殺敵人獲取漢堡能量，漢堡能使一段時間內所有遊客變成胖遊客。","一定期間のすべての訪問者を脂肪の訪問者に変えることができるハンバーガーのエネルギーを得るために敵を殺す。","시간이 지남에 따라 모든 관광객을 뚱뚱한 관광객으로 만들 수있는 함부르크 에너지를 얻기 위해 적을 죽일.",""),
["tip_all"] = New("tip_all","俱乐部整体收益","Total income of Club","俱樂部整體收益","クラブの全体的な利益","클럽의 전반적인 수익",""),
["tip_processed"] = New("tip_processed","正在处理订单，请稍候","The purchase is being processed.","正在處理訂單，請稍候。","注文が処理されるまでお待ちください","주문이 처리되고 있습니다",""),
["tip_make"] = New("tip_make","开始制作%s","Start crafting %s","開始製作%s","%sの作成を開始しました","%s 만들기를 시작합니다",""),
["tip_unlockarena"] = New("tip_unlockarena","拥有%s个球员(%s/%s)","Own %s players (%s/%s)","擁有%s個球員(%s/%s)","%s個のプレイヤーを持つ(%s/%s)","%s 플레이어(%s/%s)",""),
["tip_player"] = New("tip_player","球员数量不足","Insufficient players","球員數量不足","選手の数が少ない","선수 수가 부족하다",""),
["tip_exp"] = New("tip_exp","球员训练可获得的经验值","Player training EXP.","球員訓練可獲得的經驗值","プレーヤーのトレーニングで得られる経験値","플레이어 훈련에서 얻을 수 있는 경험치입니다",""),
["tip_parkingnum"] = New("tip_parkingnum","停车场的车位数量","Number of parking spaces in the Parking Lot","停車場的車位數量","駐車場の駐車スペースの数","주차장의 주차 공간 수입니다",""),
["tip_topenergy"] = New("tip_topenergy","精力值上限","Energy limit","精力值上限","エネルギー値の上限","최대 에너지 값입니다",""),
["tip_equipsale_maxnum"] = New("tip_equipsale_maxnum","购买装备人数上限","Maximum number of people to purchase equipment","購買裝備人數上限","購入する機器の最大数","최대 장비 구매 인원",""),
["tip_show_stock"] = New("tip_show_stock","展柜同容量上限","The upper limit of the same capacity of the showcase","展櫃同容量上限","ショーケースは容量の上限です","쇼케이스 용량 한도",""),
["tip_replasic"] = New("tip_replasic","塑料的自动恢复速度","Automatic recovery speed of plastic","塑膠的自動恢復速度","プラスチックの自動回復速度","플라스틱의 자동 복구 속도",""),
["tip_rewood"] = New("tip_rewood","木材的自动恢复速度","Automatic recovery speed of wood","木材的自動恢復速度","木材の自動回復速度","목재의 자동 복구 속도",""),
["tip_reiron"] = New("tip_reiron","钢铁的自动恢复速度","Automatic recovery speed of steel","鋼鐵的自動恢復速度","鋼鉄の自動回復速度","강철의 자동 복구 속도",""),
["tip_recloth"] = New("tip_recloth","布料的自动恢复速度","Automatic recovery speed of fabric","布料的自動恢復速度","布の自動回復速度","천의 자동 복구 속도입니다",""),
["tip_releather"] = New("tip_releather","皮革的自动恢复速度","Automatic recovery speed of leather","皮革的自動恢復速度","革の自動回復速度","가죽의 자동 복구 속도",""),
["tip_renylon"] = New("tip_renylon","尼龙的自动恢复速度","Automatic recovery speed of nylon","尼龍的自動恢復速度","ナイロンの自動回復速度","나일론의 자동 복구 속도",""),
["tip_topplastic"] = New("tip_topplastic","仓库中塑料的上限","The upper limit of plastic in the warehouse","倉庫中塑膠的上限","倉庫内のプラスチックの上限","창고의 플라스틱 상한입니다",""),
["tip_topwood"] = New("tip_topwood","仓库中木材的上限","The upper limit of wood in the warehouse","倉庫中木材的上限","倉庫内の木材の上限","창고의 목재 상한입니다",""),
["tip_topiron"] = New("tip_topiron","仓库中钢铁的上限","The upper limit of steel in the warehouse","倉庫中鋼鐵的上限","倉庫内の鉄鋼の上限","창고의 강철 상한입니다",""),
["tip_topcloth"] = New("tip_topcloth","仓库中布料的上限","The upper limit of cloth in the warehouse","倉庫中布料的上限","倉庫内の布の上限","창고의 천에 대한 상한입니다",""),
["tip_topleather"] = New("tip_topleather","仓库中皮革的上限","The upper limit of leather in the warehouse","倉庫中皮革的上限","倉庫内の革の上限","창고의 가죽 상한",""),
["tip_topnylon"] = New("tip_topnylon","仓库中尼龙的上限","The upper limit of nylon in the warehouse","倉庫中尼龍的上限","倉庫内のナイロンの上限","창고의 나일론 한도",""),
["tip_cleanliness"] = New("tip_cleanliness","游客好感度中的场馆卫生","Venue hygiene in the Customers' Favorability","遊客好感度中的場館衛生","訪問者は、会場の衛生の好感度を持っています","관광객의 호감도에 있는 장소 위생",""),
["tip_safety"] = New("tip_safety","游客好感度中的安保工作","Security work in the Customers' Favorability","遊客好感度中的安保工作","訪問者の好感度のセキュリティ","관광객의 호감도에서의 보안 업무",""),
["tip_SQI"] = New("tip_SQI","游客好感度中的服务态度","Service attitude in the Customers' Favorability","遊客好感度中的服務態度","訪問者の好感度のサービス態度","관광객의 호감도에서의 서비스 태도",""),
["tip_ardor"] = New("tip_ardor","游客好感度中的消费体验","Consumer experience in the Customers' Favorability","遊客好感度中的消費體驗","訪問者の好感度の消費経験","관광객의 호감도에서의 소비 체험",""),
["tip_upkeep"] = New("tip_upkeep","游客好感度中的设备保养","Infrastructure in the Customers' Favorability","遊客好感度中的設備保養","訪問者の好感度の機器のメンテナンス","관광객의 호감도에 있는 설비의 유지 보수",""),
["tip_consume"] = New("tip_consume","游客好感度中的宣传力度","Promotion efforts in the Customers' Favorability","遊客好感度中的宣傳力度","観光客の好感度のプロパガンダ","관광객의 호감도에서의 홍보의 강도",""),
["tip_biticon"] = New("tip_biticon","比特币，棒球场和装备商城可获取","Bit Coin. Available in Stadium and Gear Shop.","比特幣，棒球場和裝備商城可獲取","ビットコイン、野球場、ギアモールを利用できます","비트코인, 야구장, 장비 몰에서 사용할 수 있습니다",""),
["tip_shop_card"] = New("tip_shop_card","设备每分钟持续产出的比特币","Byte Coins are continuously produced by the device every minute.","設備每分鐘持續產出的比特幣","デバイスが毎分継続的に生成するビットコイン","장치가 분당 지속적으로 생산하는 비트 코인입니다",""),
["tip_complete"] = New("tip_complete","所有任务已完成","All tasks have been completed","所有任務已完成","すべてのタスクが完了しました","모든 작업이 완료되었습니다",""),
["tip_insufficient"] = New("tip_insufficient","未达到领取条件","Insufficient conditions","未達到領取條件","受け取り条件に達していません","수령 조건이 충족되지 않았습니다",""),
["tip_item"] = New("tip_item","剩余道具不足","Insufficient items","剩餘道具不足","残りの小道具が足りない","남은 소품이 부족합니다",""),
["mail_time"] = New("mail_time","%s%s前","%s%s ago","%s%s前","%s%s より前","%s%s 이전",""),
["mail_lapse"] = New("mail_lapse","%s%s后失效","Invalid after %s%s","%s%s後失效","%s%s は無効になります","%s%s이(가) 만료되었습니다",""),
["tip_playerwork"] = New("tip_playerwork","球员工作状态","Staff status","球員工作狀態","プレーヤーの作業状態","플레이어의 작업 상태입니다",""),
["tip_download"] = New("tip_download","需要下载%s，是否现在下载？","A %s download is required. Download now?","需要下載%s，是否現在下載？","%sをダウンロードする必要がありますが、今すぐダウンロードしますか?","%s을(를) 다운로드해야 합니다. 지금 다운로드하시겠습니까?",""),
["tip_net"] = New("tip_net","网络异常，请检查网络后重试。","Network error. Please check your network and try again.","網路異常，請檢查網路後重試。","ネットワークに異常がある場合は、ネットワークを確認してからやり直してください。","네트워크 예외, 네트워크를 확인하고 다시 시도하십시오.",""),
["mail_reissue"] = New("mail_reissue","由于平台问题，您的物品没有及时到账，现在给您补发。","For some reasons of the app market, your items were not generated in time. Here are them.","由於平臺問題，您的物品沒有及時到賬，現在給您補發。","プラットフォームの問題のため、あなたのアイテムは時間内に到着しませんでした、そして、今あなたに再発行します。","플랫폼 문제로 인해, 당신의 항목은 시간에 도착하지 않았다, 지금 당신에게 재발급을 제공합니다.",""),
["tip_equipunlock"] = New("tip_equipunlock","开启装备商城后解锁","Unlock when the Gear Shop is open","開啟裝備商城後解鎖","ギアモールを開いた後、ロックを解除します","장비 마켓플레이스를 연 후 잠금을 해제합니다",""),
["tip_enoughequip"] = New("tip_enoughequip","无可用装备","No equipment available","無可用裝備","利用可能なギアはありません","사용 가능한 장비가 없습니다",""),
["tip_bestequip"] = New("tip_bestequip","当前已是最好装备","It is currently the best equipment","當前已是最好裝備","現在、最高のギアです","현재 최고의 장비입니다",""),
["tip_copy"] = New("tip_copy","复制成功","The replication was successful","複製成功","コピーは成功しました","복제에 성공했습니다",""),
["tip_locked"] = New("tip_locked","当前未解锁","It is not currently unlocked","當前未解鎖","現在ロック解除されていません","현재 잠금 해제되지 않았습니다",""),
["tip_lockedeffect"] = New("tip_lockedeffect","未解锁","Locked","未解鎖","ステップアップじょーけん条件をみたさ満たさない","상승 조건을 충족시키지 못함",""),
["tip_unableriseorder"] = New("tip_unableriseorder","未满足升阶条件","Insufficient upgrade conditions","未滿足升階條件  ","","",""),
}
TableMerge(WordConfig,WordTipsConfig)
end