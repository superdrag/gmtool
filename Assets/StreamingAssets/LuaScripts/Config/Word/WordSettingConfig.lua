
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordSettingConfig = 
{
["text_font"] = New("text_font","CHS.ttf","EN.ttf","CHS.ttf","JPN.otf","NotoSansCJKsc-Bold.otf","wordsetconfig"),
["set_name_10001"] = New("set_name_10001","设置","Option","設置","セットアップ","설정","wordsetconfig"),
["set_name_10002"] = New("set_name_10002","音量","Volume","音量","ボリューム","음량","wordsetconfig"),
["set_name_10003"] = New("set_name_10003","音效","SE","音效","効果音","음향 효과","wordsetconfig"),
["set_name_10004"] = New("set_name_10004","音乐","BGM","音樂","音楽","음악","wordsetconfig"),
["set_name_10005"] = New("set_name_10005","其他","more","其他","その他","다른","wordsetconfig"),
["set_name_10006"] = New("set_name_10006","恢复","Restore","恢復","戻す","복원","wordsetconfig"),
["set_name_10007"] = New("set_name_10007","遇到问题","Trouble shooting","遇到問題","遭遇問題","만남 문제","wordsetconfig"),
["set_name_10008"] = New("set_name_10008","语言（%s)","Language（%s)","語言（%s)","言語（%s)","언어（%s)","wordsetconfig"),
["set_name_10009"] = New("set_name_10009","语言设置","Language Settings","語言設置","言語設定","언어 설정","wordsetconfig"),
["set_name_10010"] = New("set_name_10010","您确定要更改语言吗？","Sure to change language?","您確定要更改語言嗎？","言語を変更してもよろしいですか？","언어를 변경 하시겠습니까?","wordsetconfig"),
["set_name_10011"] = New("set_name_10011","取消","Cancel","取消","キャンセル","취소","wordsetconfig"),
["set_name_10012"] = New("set_name_10012","是","Confirm","是","はい","예","wordsetconfig"),
["set_name_10013"] = New("set_name_10013","账号","Account","賬號","アカウント","계정","wordsetconfig"),
["title_id"] = New("title_id","ID号","ID","ID號","ID","ID","wordsetconfig"),
["button_copy"] = New("button_copy","复制","Copy","複製","コピー","복사합니다","wordsetconfig"),
["title_optionid"] = New("title_optionid","ID号:%s","ID:%s","ID號:%s","ID:%s","ID:%s","wordsetconfig"),
}
TableMerge(WordConfig,WordSettingConfig)
end