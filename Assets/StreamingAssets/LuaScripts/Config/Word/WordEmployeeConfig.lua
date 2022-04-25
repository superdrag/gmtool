
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,cn=a1,en=a2,jp=a3,tw=a4,de=a5,ru=a6,fr=a7,it=a8,es=a9,pt=a10,kr=a11,}
end
local WordEmployeeConfig = 
{
["employee_name_10001"] = New("employee_name_10001","保安","Guard","警備員","保安","Wächter","Охранник","Garde","Guardia","Guardia","Guarda",""),
["employee_name_10002"] = New("employee_name_10002","修理工","Mechanic","整備士","修理工","Mechaniker","Механик","Mécanicien","Meccanico","Mecánico","Mecânica",""),
["employee_name_10003"] = New("employee_name_10003","清洁工","Janitor","清掃員","清潔工","Hausmeister","Уборщик","Concierge","Inserviente","Conserje","Auxiliar",""),
["employee_name_10004"] = New("employee_name_10004","服务员","Waiter","店員","服務員","Kellner","Официант","Serveur","Cameriere","Camarero","Empregado de mesa",""),
["employee_name_10005"] = New("employee_name_10005","销售员","Salesperson","営業","銷售員","Verkäufer","Продавец","Vendeur","Addetto alle vendite","Vendedor","Vendedor",""),
["employee_name_10006"] = New("employee_name_10006","啦啦队员","Cheerleader","応援団","啦啦隊員","Cheerleader","Чирлидер","Pom Pom Girl","Cheerleader","Animador","Líder de claque",""),
["employee_name_10007"] = New("employee_name_10007","收银员","Cashier","レジ","收銀員","Kassierer","Кассир","Caissier","Cassiere","Cajero","Caixeiro",""),
["villain_name_10001"] = New("villain_name_10001","小偷","Thief","万引き","小偷","Dieb","Вор","Voleur","Ladro","Ladrón","Thief",""),
["villain_name_10002"] = New("villain_name_10002","磁吸男","Magnetor","マグネッター","磁吸男","Magnetor","Магнитофон","Magnétor","Magnetor","Imán","Íman",""),
["villain_name_10003"] = New("villain_name_10003","面具怪人","Masked Man","マスクマン","面具怪人","Maskenmann","Человек в маске","Homme masqué","Uomo mascherato","Hombre enmascarado","Homem mascarado",""),
["villain_name_10004"] = New("villain_name_10004","地产大亨","Oildullah","不動産大手アブラデュラ","地產大亨","Oildullah","Оилдуллах","Oildullah","Oildullah","Oildullah","Oildullah",""),
["villain_name_10005"] = New("villain_name_10005","投资人","Investor","投資者","投資人","Investor","Инвестор","Investisseur","Investitore","Inversor","Investidor",""),
["villain_name_10006"] = New("villain_name_10006","合伙人","Material Merchant","パートナー","合夥人","Material-Händler","Торговец материалами","Marchand de matériaux","Mercante di materiali","Comerciante de materiales","Material Mercador",""),
["villain_introduction_10004"] = New("villain_introduction_10004","老板对你的工作很满意并带来了一笔资金！","Oildullah is satisfied with your performance and provides you with more funds!","社長が君の仕事に満足していて投資を追加しました！","老闆對你的工作很滿意並帶來了一筆資金！","Oildullah ist mit deiner Leistung zufrieden und stellt dir mehr Geld zur Verfügung!","Оилдулла доволен вашей работой и предоставляет вам больше средств!","Oildullah est satisfait de votre performance et vous fournit plus de fonds !","Oildullah è soddisfatto delle tue prestazioni e ti fornisce più fondi!","¡Oildullah está satisfecho con tu rendimiento y te proporciona más fondos!","Oildullah está satisfeito com o seu desempenho e proporciona-lhe mais fundos!",""),
["villain_introduction_10005"] = New("villain_introduction_10005","投资人对你的工作很满意并带来了一笔资金！","Investor is satisfied with your performance and provides you with more funds!","投資者が君の仕事に満足していて投資を追加しました！","投資人對你的工作很滿意並帶來了一筆資金！","Der Investor ist mit deiner Leistung zufrieden und stellt dir mehr Geld zur Verfügung!","Инвестор доволен вашей работой и предоставляет вам больше средств!","L\'investisseur est satisfait de votre performance et vous fournit plus de fonds !","L\'investitore è soddisfatto delle tue prestazioni e ti fornisce più fondi!","El inversor está satisfecho con tu rendimiento y te proporciona más fondos.","O investidor está satisfeito com o seu desempenho e proporciona-lhe mais fundos!",""),
["villain_introduction_10006"] = New("villain_introduction_10006","合伙人对你的工作很满意并带来了一笔投资！","New goods arrived. Need something? Check it.","パートナーが君の仕事に満足していて投資を追加しました！","合夥人對你的工作很滿意並帶來了一筆投資！","Neue Ware eingetroffen. Brauchen Sie etwas? Prüfe es.","Поступили новые товары. Что-то нужно? Проверьте.","De nouvelles marchandises sont arrivées. Vous avez besoin de quelque chose ? Vérifiez-le.","E\' arrivata nuova merce. Hai bisogno di qualcosa? Controlla.","Han llegado nuevos productos. ¿Necesitas algo? Compruébalo.","Chegaram novos produtos. Precisa de alguma coisa? Verifique.",""),
["emp_rest"] = New("emp_rest","休息中","Resting","休憩中","休息中","Ausruhen","Отдых","Reposez-vous","Riposo","Descansando","A descansar",""),
["emp_ing"] = New("emp_ing","工作中","Working","勤務中","工作中","Arbeiten","Работает","Travailler","Lavorare","Trabajando","A trabalhar",""),
["select_player"] = New("select_player","选择球员","Select Player","選手を選ぼう","選擇球員","Spieler auswählen","Выберите игрока","Sélectionnez un joueur","Seleziona il giocatore","Seleccionar jugador","Seleccionar Jogador",""),
}
TableMerge(WordConfig,WordEmployeeConfig)
end