
do
local function New(a0,a2,a3,a4,a5,a6,a7)
	return {id=a0,cn=a2,en=a3,tc=a4,jp=a5,kr=a6,flag=a7,}
end
local WordTaskConfig = 
{
["task_button_10002"] = New("task_button_10002","领取奖励","Claim rewards","領取獎勵","奨励をもらう","보상 수령","wordtaskconfig"),
["task_reward"] = New("task_reward","奖励","rewards","獎勵","奨励","보상 수령","wordtaskconfig"),
["task_rewardget"] = New("task_rewardget","领取","Obtain","領取","タスクボーナス","퀘 스 트 보상","wordtaskconfig"),
["task_num"] = New("task_num","任务%s：","Quest %s :","任務%s：","タスク%s:","퀘 스 트% s:","wordtaskconfig"),
["task_name_faunlock"] = New("task_name_faunlock","建造%s","Build %s","建造%s","翻訳中","번역 중","wordtaskconfig"),
["task_name_faupgrade"] = New("task_name_faupgrade","升级{0}至{1}级","Upgrade {0} to level {1}","升級{0}至{1}級","翻訳中","번역 중","wordtaskconfig"),
["task_name_leaflets"] = New("task_name_leaflets","使用喇叭%s次","Use Loudspeaker %s time(s)","使用喇叭%s次","翻訳中","번역 중","wordtaskconfig"),
["task_name_leunlock"] = New("task_name_leunlock","引进课程%s","Unlock course %s","引進課程%s","翻訳中","번역 중","wordtaskconfig"),
["task_name_leupgrade"] = New("task_name_leupgrade","升级课程{0}至{1}级","Upgrade course {0} to level {1}","升級課程{0}至{1}級","翻訳中","번역 중","wordtaskconfig"),
["task_name_speedUp"] = New("task_name_speedUp","完整使用%s次时间加速器","Use Time Lapser %s time(s) fully","完整使用%s次時間加速器","翻訳中","번역 중","wordtaskconfig"),
["task_name_employee"] = New("task_name_employee","指派{0}名球员至{1}","Assign {0} player(s) to {1}","指派{0}名球員至{1}","翻訳中","번역 중","wordtaskconfig"),
["task_name_win"] = New("task_name_win","通关%s","Clear %s","通關%s","翻訳中","번역 중","wordtaskconfig"),
["task_name_allupgrade"] = New("task_name_allupgrade","将{0}全部设备升至{1}级","Upgrade all facilities of {0} to level {1}","將{0}全部設備升至{1}級","翻訳中","번역 중","wordtaskconfig"),
["task_name_areaunlock"] = New("task_name_areaunlock","解锁%s","Unlock %s","解鎖%s","翻訳中","번역 중","wordtaskconfig"),
}
TableMerge(WordConfig,WordTaskConfig)
end