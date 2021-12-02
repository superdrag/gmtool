
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordEmployeeConfig = 
{
["employee_name_10001"] = New("employee_name_10001","保安","Guard","警衛","ガード","가드","wordempconfig"),
["employee_name_10002"] = New("employee_name_10002","修理工","Repairman","修理工","修理工","수리공","wordempconfig"),
["employee_name_10003"] = New("employee_name_10003","清洁工","Cleaner","清潔工","クリーナー","청소기","wordempconfig"),
["employee_name_10004"] = New("employee_name_10004","服务员","Waiter","服務員","ウェイター","웨이터","wordempconfig"),
["employee_name_10005"] = New("employee_name_10005","销售员","Salesman","銷售員","売り手","파는 사람","wordempconfig"),
["employee_name_10006"] = New("employee_name_10006","啦啦队员","Cheerleader","啦啦隊員","チアリーディング","치어리더","wordempconfig"),
["employee_name_10007"] = New("employee_name_10007","收银员","Cashier","收銀員","レジ","출납원","wordempconfig"),
["villain_name_10001"] = New("villain_name_10001","小偷","Thief","小偷","泥棒","도둑","wordempconfig"),
["villain_name_10002"] = New("villain_name_10002","磁吸男","Magnetor","萬磁王","マグニートー","마그네토","wordempconfig"),
["villain_name_10003"] = New("villain_name_10003","面具怪人","Mask-man","變相怪傑","変装したオタク","변장 한 괴짜","wordempconfig"),
["villain_name_10004"] = New("villain_name_10004","地产大亨","Oildullah","土豪","地元の大物","지역 거물","wordempconfig"),
["villain_name_10005"] = New("villain_name_10005","投资人","Richer Runner","土豪","地元の大物","지역 거물","wordempconfig"),
["villain_introduction_10005"] = New("villain_introduction_10005","老板对你的工作很满意并带来了一笔资金！","Investor is satisfied with your work and invests more!","這位老板希望可以投資你的棒球場！","このオーナーはあなたの野球場に投資したいと思っています!","이 사장이 당신의 야구장에 투자할 수 있기를 희망한다.","wordempconfig"),
["emp_rest"] = New("emp_rest","休息中","Resting","休息中","休憩","휴식","wordempconfig"),
["emp_ing"] = New("emp_ing","工作中","Working","工作中","職場で","직장에서","wordempconfig"),
["select_player"] = New("select_player","选择球员","Select player","選擇球員","選手を選ぶ","선 수 를 선택 하 다","wordempconfig"),
}
TableMerge(WordConfig,WordEmployeeConfig)
end