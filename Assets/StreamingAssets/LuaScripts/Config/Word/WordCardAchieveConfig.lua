
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,cn=a1,en=a2,jp=a3,tw=a4,de=a5,ru=a6,fr=a7,it=a8,es=a9,pt=a10,kr=a11,}
end
local WordCardAchieveConfig = 
{
["Tips_CardAchieve_101"] = New("Tips_CardAchieve_101","豆腐店","Tofu Shop","豆腐店","豆腐店","Tofu-Laden","Магазин тофу","Boutique de tofu","Negozio di Tofu","Tienda de tofu","Loja Tofu",""),
["Tips_CardAchieve_102"] = New("Tips_CardAchieve_102","咖啡店","Coffee Bar","喫茶店","咖啡店","Kaffee-Bar","Кофе-бар","Bar à café","Caffè bar","Café Bar","Barra de café",""),
["Tips_CardAchieve_103"] = New("Tips_CardAchieve_103","警察局","Police Station","交番","警察局","Polizeiwache","Полицейский участок","Commissariat de police","Stazione di polizia","Comisaría de policía","Esquadra de Polícia",""),
["Tips_CardAchieve_104"] = New("Tips_CardAchieve_104","博物馆","Museum","博物館","博物館","Museum","Музей","Musée","Museo","Museo","Museu",""),
["Tips_CardAchieve_105"] = New("Tips_CardAchieve_105","独栋别墅","Detached Villa","一戸建て住居","獨棟別墅","Freistehende Villa","Отдельная вилла","Villa individuelle","Villa indipendente","Chalet independiente","Moradia Isolada",""),
["Tips_CardAchieve_106"] = New("Tips_CardAchieve_106","甜甜圈店","Donut Shop","ドーナッツ店","甜甜圈店","Donut-Laden","Магазин пончиков","Magasin de beignets","Negozio di ciambelle","Tienda de donuts","Loja de Donuts",""),
["Tips_CardAchieve_107"] = New("Tips_CardAchieve_107","公寓","Apartments","アパート住居","公寓","Wohnungen","Апартаменты","Appartements","Appartamenti","Apartamentos","Apartamentos",""),
["Tips_CardAchieve_108"] = New("Tips_CardAchieve_108","汽车旅馆","Motel","モーテル","汽車旅館","Motel","Мотель","Motel","Motel","Motel","Motel",""),
["Tips_CardAchieve_109"] = New("Tips_CardAchieve_109","金融中心","Financial Center","金融施設","金融中心","Finanzzentrum","Финансовый центр","Centre financier","Centro finanziario","Centro financiero","Centro Financeiro",""),
["Tips_CardAchieve_110"] = New("Tips_CardAchieve_110","书店","BookStore","本屋","書店","Buchhandlung","Книжный магазин","Librairie","Libreria","Librería","Livraria",""),
["Tips_CardAchieve_111"] = New("Tips_CardAchieve_111","医院","Hospital","病院","醫院","Krankenhaus","Больница","Hôpital","Ospedale","Hospital","Hospital",""),
["Tips_CardAchieve_112"] = New("Tips_CardAchieve_112","加油站","Gas Station","ガソリンスタンド","加油站","Tankstelle","Заправочная станция","Station service","Stazione di servizio","Estación de servicio","Estação de serviço",""),
["Tips_CardAchieve_113"] = New("Tips_CardAchieve_113","购物中心","Mall","ショッピングモール","購物中心","Einkaufszentrum","Торговый центр","Centre commercial","Centro commerciale","Centro comercial","Mall",""),
["Tips_CardAchieve_114"] = New("Tips_CardAchieve_114","酒吧","Bar","居酒屋","酒吧","Bar","Бар","Bar","Bar","Bar","Bar",""),
["Tips_CardAchieve_115"] = New("Tips_CardAchieve_115","电影院","Cinema","映画館","電影院","Kino","Кинотеатр","Cinéma","Cinema","Cine","Cinema",""),
["Tips_CardAchieve_116"] = New("Tips_CardAchieve_116","奢侈品店","Luxury Stores","ブランド専売店","奢侈品店","Luxus-Läden","Элитные магазины","Magasins de luxe","Negozi di lusso","Tiendas de lujo","Lojas de luxo",""),
["Tips_CardAchieve_117"] = New("Tips_CardAchieve_117","教堂","Chapel","協会","教堂","Kapelle","Часовня","Chapelle","Cappella","Capilla","Capela",""),
["Tips_CardAchieve_118"] = New("Tips_CardAchieve_118","便利店","convenience Store","コンビニ","便利店","Convenience Store","круглосуточный магазин","Magasin de proximité","Negozio di convenienza","Tienda de conveniencia","loja de conveniência",""),
["Title_BuildingManage"] = New("Title_BuildingManage","俱乐部管理","Manage Club","クラブ管理","俱樂部管理","Club verwalten","Управление клубом","Gérer le club","Gestire il Club","Club de gestión","Gerir o Clube",""),
["Title_CardAchieve"] = New("Title_CardAchieve","周边发展","Develop Surroundings ","周辺発展","周邊發展","Umgebungen entwickeln ","Развивать окрестности ","Développer les environs ","Sviluppare i dintorni ","Desarrollar el entorno ","Desenvolver Arredores ",""),
["Tips_CardAchieve_completed"] = New("Tips_CardAchieve_completed","已完成","Done","完成済み","已完成","Geschehen","Сделано","Fait","Fatto","Hecho","Feito",""),
["Btn_CardAchieve_lvup"] = New("Btn_CardAchieve_lvup","升级","upgrade","lvアップ","升級","aktualisieren","обновление","améliorer","aggiornare","actualizar","actualização",""),
["Btn_CardAchieve_activate"] = New("Btn_CardAchieve_activate","激活","activated","開放","激活","aktiviert","активирован","activé","attivato","activado","activado",""),
["Btn_CardAchieve_more"] = New("Btn_CardAchieve_more","更多","more","更なる内容","更多","mehr","больше","plus","più","más","mais",""),
["Title_CardAchieve_detail"] = New("Title_CardAchieve_detail","加成汇总","detail","バッファサマリー","加成匯總","Detail","подробнее","détail","dettaglio","detalle","pormenor",""),
["Tips_CardAchieve_activated"] = New("Tips_CardAchieve_activated","%s已激活","%s has been activated!","%s開放済み","%s已激活","%s wurde aktiviert!","%s был активирован!","%s a été activé !","%s è stato attivato!","%s ha sido activado!","%s foi activada!",""),
["cardAchieve_extra_conditions_115001"] = New("cardAchieve_extra_conditions_115001","获得高级投资钱老板（Oildullah ）","Unlock senior investor Oildullah ","アブラデュラを獲得","獲得高級投資錢老闆（Oildullah ）","Senior-Investor Oildullah freischalten ","Разблокировать старшего инвестора Оилдуллаха ","Débloquer l\'investisseur senior Oildullah ","Sblocca l\'investitore senior Oildullah ","Desbloquear el inversor senior Oildullah ","Desbloquear investidor sénior Oildullah ",""),
["Achieve_factor1"] = New("Achieve_factor1","拥有","own","所持済み","擁有","eigene","собственный","propre","proprio","propio","próprio",""),
["Achieve_factor2"] = New("Achieve_factor2","球员达到","players of","選手が到達","球員達到","Spieler von","игроки","joueurs de","giocatori di","jugadores de","jogadores de",""),
}
TableMerge(WordConfig,WordCardAchieveConfig)
end