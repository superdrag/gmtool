
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordDailyTaskConfig = 
{
["dailytask_task"] = New("dailytask_task","每日任务","Daily Quest","任務","仕事","직무","worddailyconfig"),
["dailytask_achievement"] = New("dailytask_achievement","成就","Achievement","成就","成果","성취","worddailyconfig"),
["dailytask_special"] = New("dailytask_special","特殊","Special","特殊","特殊な","특별한","worddailyconfig"),
["dailytask_tips"] = New("dailytask_tips","每天0点刷新","Refreshes everyday ","提示：任務每天0點刷新","注意：タスクは毎日0:00に更新されます","알림 : 작업은 매일 0:00에 새로 고쳐집니다.","worddailyconfig"),
["dailytask_name_10000"] = New("dailytask_name_10000","总任务","Quest List","總任務","トータルタスク","총 작업","worddailyconfig"),
["dailytask_pointtip"] = New("dailytask_pointtip","完成每日任务获取活跃值，活跃值到达一定数量可领取奖励","Complete daily quests to get Activity Points. Once Activity Points reach a certain amount, you can claim a reward.","完成每日任務獲取活躍值，活躍值到達一定數量可領取獎勵","アクティブな値を取得するために毎日のミッションを完了し、アクティブな値は、報酬を受け取るために一定の数に達します","일일 퀘스트를 완료하여 일정량의 활성 값을 획득하면 보상을 받을 수 있습니다","worddailyconfig"),
["dailytask_facility_upgrade"] = New("dailytask_facility_upgrade","升级%s次设备 ","Upgrade facilities %s time(s)","升級%s次設備 ","%s次デバイスをアップグレードする","%s 차 장치 업그레이드","worddailyconfig"),
["dailytask_lesson_upgrade"] = New("dailytask_lesson_upgrade","升级%s次课程 ","Upgrade courses %s time(s)","升級%s次課程 ","コースを%s回進級する","%s 차 과정 승급","worddailyconfig"),
["dailytask_defeat_villain"] = New("dailytask_defeat_villain","击退%s次捣蛋鬼","Repel 'Pests' %s times(s)","擊退%s次反派","数回の悪役を退ける","%s 회 악역 격퇴","worddailyconfig"),
["dailytask_clear_rubbish"] = New("dailytask_clear_rubbish","清理%s个垃圾","Clean up %s trash","清理%s個垃圾","ごみを%s個整理する","쓰레기 %s 개 치 우기","worddailyconfig"),
["dailytask_use_full_speedUp"] = New("dailytask_use_full_speedUp","完整使用时间加速器%s次","Use Time Lapser completely %s time(s)","完整使用時間加速器%s次","フル使用で加速%s回","완전 사용 가속 %s 회","worddailyconfig"),
["dailytask_stimulate_tourist"] = New("dailytask_stimulate_tourist","解决%s次顾客的虚弱状态","Relieve Weak Status of customers %s time(s)","解決%s次顧客的虛弱狀態","%s回顧客の虚弱状態を解決する。","%s 차 고객 의 허약 상태 해결","worddailyconfig"),
["dailytask_passenger_multiple"] = New("dailytask_passenger_multiple","使用%s次人山人海","Use Trending %s time(s)","使用%s次人山人海","何回使っても人だかりができます。","%s 회 인산인해 사용 하기","worddailyconfig"),
["dailytask_lamborghini"] = New("dailytask_lamborghini","获得%s次豪车老板的赞助","Get investments from Richer Runner %s time(s)","獲得%s次豪車老闆的贊助","%s回の高級車社長の賛助を得ました。","%s 차 럭 셔 리 차 사장 님 의 후원 을 받 았 습 니 다.","worddailyconfig"),
["dailytask_hand_leaflets"] = New("dailytask_hand_leaflets","使用%s次喇叭宣传","Use Loudspeaker to promote %s time(s)","使用%s次喇叭宣傳","%s回のスピーカーを使って宣伝します。","%s 회 나팔 로 홍보","worddailyconfig"),
["dailytask_hand_leaflets2"] = New("dailytask_hand_leaflets2","使用%s次报纸宣传","Use Newspaper to promote %s time(s)","使用%s次報紙宣傳","%s回の新聞を使って宣伝します。","%s 차 신문 홍보 이용","worddailyconfig"),
["dailytask_hand_leaflets3"] = New("dailytask_hand_leaflets3","使用%s次广播宣传","Use Radio to promote %s time(s)","使用%s次廣播宣傳","%s回放送で宣伝する","%s 차 방송 홍보 사용","worddailyconfig"),
["dailytask_win_league"] = New("dailytask_win_league","获得%s场联赛胜利","Win League Games %s time(s)","獲得%s場聯賽勝利","%sフィールドリーグに勝利した","리그 %s 승 을 거두다","worddailyconfig"),
["dailytask_join_league"] = New("dailytask_join_league","进行%s次联赛","Play League Games %s time(s)","進行%s次聯賽","%s次リーグをやる","%s 차 리 그 를 진행 하 다","worddailyconfig"),
["dailytask_train_player"] = New("dailytask_train_player","训练%s次球员","Train players %s time(s)","訓練%s次球員","%s‐回の選手を訓練する","%s 차 선수 훈련","worddailyconfig"),
["dailytask_plarer_upgrade"] = New("dailytask_plarer_upgrade","升级%s次球员","Upgrade players %s time(s)","訓練%s次球員","%s‐回の選手を訓練する","%s 차 선수 훈련","worddailyconfig"),
}
TableMerge(WordConfig,WordDailyTaskConfig)
end