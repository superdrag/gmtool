
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,cn=a1,en=a2,jp=a3,tw=a4,de=a5,ru=a6,fr=a7,it=a8,es=a9,pt=a10,kr=a11,}
end
local WordEquipConfig = 
{
["equip_title_name"] = New("equip_title_name","装备","Gear","装備","裝備","Ausrüstung","Gear","Équipement","Attrezzatura","Engranaje","Equipamento",""),
["equip_button_10001"] = New("equip_button_10001","制作","Craft","製造","製作","Handwerk","Ремесло","Artisanat","Artigianato","Artesanía","Craft",""),
["equip_button_10003"] = New("equip_button_10003","最近","Recent","前回","最近","Neueste","Последние","Récent","Recente","Reciente","Recente",""),
["equip_button_10004"] = New("equip_button_10004","收藏","Collection","お気に入り","收藏","Kollektion","Коллекция","Collection","Collezione","Colección","Colecção",""),
["milepost_introduction_10001"] = New("milepost_introduction_10001","装备售价提升","Gear price Up","装備の売価をアップ","裝備售價提升","Gear Preis Up","Цена на шестеренки","Prix de l\'équipement","Prezzo dell\'ingranaggio su","Precio del engranaje arriba","Preço do equipamento Up",""),
["milepost_introduction_10002"] = New("milepost_introduction_10002","解锁新图纸","New blueprint unlocked","新デザインを開放","解鎖新圖紙","Neue Blaupause freigeschaltet","Разблокирован новый чертеж","Nouveau plan débloqué","Nuova cianografia sbloccata","Nuevo plano desbloqueado","Nova planta desbloqueada",""),
["milepost_introduction_10003"] = New("milepost_introduction_10003","稀有制作材料减少","Rare crafting materials reduced","R製造素材の消耗を減少","稀有製作材料減少","Seltene Handwerksmaterialien reduziert","Уменьшено количество редких материалов для ремесел","Matériaux d\'artisanat rares réduits","Materiali artigianali rari ridotti","Reducción de los materiales de artesanía raros","Redução de materiais raros de artesanato",""),
["milepost_introduction_10004"] = New("milepost_introduction_10004","普通制作材料减少","Common crafting materials reduced","普通製造素材の消耗を減少","普通製作材料減少","Gewöhnliche Crafting-Materialien reduziert","Распространенные материалы для ремесел уменьшены","Matériaux d\'artisanat courants réduits","Ridotti i materiali comuni per il crafting","Reducción de los materiales de artesanía comunes","Materiais de artesanato comuns reduzidos",""),
["milepost_introduction_10005"] = New("milepost_introduction_10005","所有装备售价提升","All gear price UP","全装備の売価をアップ","所有裝備售價提升","Preis aller Ausrüstungsgegenstände UP","Повышение цены на все предметы снаряжения","Prix de tous les équipements en hausse","Prezzo di tutti gli attrezzi UP","Sube el precio de todo el equipo","Preço de todas as engrenagens UP",""),
["risingstar_introduction_10001"] = New("risingstar_introduction_10001","双倍制作几率提升","Double crafting chance up","ダブルクラフトチャンスアップ","雙倍製作機率提升","Doppelte Chance auf Handwerk","Повышение шанса на двойное ремесло","Double chance d\'artisanat en hausse","Doppia possibilità di crafting su","Doble oportunidad de artesanía arriba","Dupla hipótese de artesanato",""),
["risingstar_introduction_10002"] = New("risingstar_introduction_10002","制作时间减少","Shorter crafting time","製造時間を減少","製作時間減少","Kürzere Zeit zum Herstellen","Сокращение времени создания","Temps d\'artisanat plus court","Tempo di crafting più breve","Menor tiempo de elaboración","Menor tempo de confecção",""),
["risingstar_introduction_10003"] = New("risingstar_introduction_10003","高品质出现概率提升","Advanced rate UP","高品質の出現確率をアップ","高品質出現概率提升","Verbesserte Rate UP","Повышенный уровень","Taux de perfectionnement UP","Tasso avanzato UP","Tasa avanzada ARRIBA","Taxa avançada UP",""),
["equip_reduced"] = New("equip_reduced","所需材料减少","Required material reduced","消耗素材を減少","所需材料減少","Benötigtes Material reduziert","Уменьшение количества требуемых материалов","Matériaux requis réduits","Materiale richiesto ridotto","Reducción del material necesario","Material necessário reduzido",""),
["equip_paperup"] = New("equip_paperup","图纸升级","Upgrade Blueprint","デザインlvアップ","圖紙升級","Upgrade Blaupause","Модернизация чертежа","Plan de mise à niveau","Aggiornamento dell\'impronta blu","Plano de mejora","Plano de Actualização",""),
["equip_ordinary"] = New("equip_ordinary","普通","Common","普通","普通","Häufig","Обычный","Commun","Comune","Común","Comum",""),
["equip_senior"] = New("equip_senior","稀有","Rare","R","稀有","Selten","Редкий","Rare","Raro","Raro","Raro",""),
["equip_flawless"] = New("equip_flawless","史诗","Epic","SR","史詩","Episch","Эпический","Épique","Epico","Épico","Épico",""),
["equip_epic"] = New("equip_epic","传说","Legendary","SSR","傳說","Legendär","Легендарный","Légendaire","Leggendario","Legendario","Lendário",""),
["equip_complete"] = New("equip_complete","完成","Complete","完成","完成","Vollständig","Завершить","Compléter","Completa","Completa","Completo",""),
["equip_proposal"] = New("equip_proposal","建议","Suggest","アドバイス","建議","Vorschlagen","Предложите","Suggérer","Suggerisci","Sugerir","Sugira",""),
["equip_discount"] = New("equip_discount","折扣","Discount","割引","折扣","Rabatt","Скидка","Remise","Sconto","Descuento","Desconto",""),
["equip_gossip"] = New("equip_gossip","闲聊","Chat","世間話","閒聊","Chatten","Чат","Chat","Chat","Chat","Bate-papo",""),
["equip_energy"] = New("equip_energy","双倍收益","Double Profits","ダブル収入","雙倍收益","Doppelte Profite","Двойная прибыль","Double Profits","Doppi profitti","Doble ganancia","Lucros duplos",""),
["equip_refuse"] = New("equip_refuse","拒绝","Refuse","拒否","拒絕","Ablehnen","Отказаться","Refuser","Rifiuta","Rechazar","Recusar",""),
["equip_sale"] = New("equip_sale","售卖","Sell","販売","售賣","Verkaufen","Продать","Vendre","Vendere","Vender","Venda",""),
["equip_waiting"] = New("equip_waiting","等待","Wait","待つ","等待","Warten","Подождите","Attendre","Aspetta","Esperar","Espere",""),
["equip_price"] = New("equip_price","售价","Price","売値","售價","Preis","Цена","Prix","Prezzo","Precio","Preço",""),
["equip_power"] = New("equip_power","力量","Strength","力","力量","Stärke","Сила","Force","Forza","Fuerza","Força",""),
["equip_luck"] = New("equip_luck","幸运","Luck","運","幸運","Glück","Удача","Chance","Fortuna","Suerte","Sorte",""),
["equip_speed"] = New("equip_speed","速度","Speed","素早さ","速度","Geschwindigkeit","Скорость","Vitesse","Velocità","Velocidad","Velocidade",""),
["equip_defen"] = New("equip_defen","防御力","Defense","防御","防禦力","Verteidigung","Защита","Défense","Difesa","Defensa","Defesa",""),
["equip_quantity"] = New("equip_quantity","按数量排序","Sort by quantity","所持数順","按數量排序","Sortieren nach Menge","Сортировать по количеству","Trier par quantité","Ordina per quantità","Ordenar por cantidad","Ordenar por quantidade",""),
["equip_value"] = New("equip_value","按售价排序","Sort by price","売値順","按售價排序","Nach Preis sortieren","Сортировать по цене","Trier par prix","Ordina per prezzo","Ordenar por precio","Ordenar por preço",""),
["equip_quality"] = New("equip_quality","按品质排序","Sort by tier","品質順","按品質排序","Nach Stufe sortieren","Сортировать по уровню","Trier par niveau","Ordina per livello","Ordenar por nivel","Ordenar por escalão",""),
["equip_latest"] = New("equip_latest","按最近排序","Sort by recent","製造順番","按最近排序","Sortieren nach neu","Сортировать по недавнему времени","Trier par récent","Ordina per recente","Ordenar por reciente","Ordenar por recente",""),
["equip_rank"] = New("equip_rank","按等级排序","Sort by level","lv順","按等級排序","Nach Stufe sortieren","Сортировать по уровню","Trier par niveau","Ordina per livello","Ordenar por nivel","Ordenar por nível",""),
["equip_type"] = New("equip_type","按类型排序","Sort by type","種類順","按類型排序","Nach Typ sortieren","Сортировать по типу","Trier par type","Ordina per tipo","Ordenar por tipo","Ordenar por tipo",""),
["equip_unlock_field"] = New("equip_unlock_field","解锁制作栏位","Unlock Crafting Slot","製造スロットを開放","解鎖製作欄位","Crafting-Slot freischalten","Разблокировать ремесленный слот","Débloquer un emplacement d\'artisanat","Sblocca slot di crafting","Desbloquear ranura de artesanía","Desbloquear Slot de Artesanato",""),
["equip_synthesize"] = New("equip_synthesize","增加同时制作栏位","Add a new crafting slot","同時製造可能なスロットを増やす","增加同時製作欄位","Einen neuen Handwerksplatz hinzufügen","Добавьте новый слот для ремесла","Ajouter un nouvel emplacement d\'artisanat","Aggiungi un nuovo slot di crafting","Añadir una nueva ranura de artesanía","Adicionar uma nova ranhura de artesanato",""),
["equip_unlock"] = New("equip_unlock","立刻解锁","Unlock Now","すぐ開放","立刻解鎖","Jetzt freischalten","Разблокировать сейчас","Déverrouiller maintenant","Sblocca ora","Desbloquear ahora","Desbloquear agora",""),
["equip_own"] = New("equip_own","库存","Stock","所持","庫存","Vorrat","Запасы","Stock","Stock","Stock","Stock",""),
["equip_times"] = New("equip_times","累计制作","Total","累計製造","累計製作","Gesamt","Всего","Total","Totale","Total","Total",""),
["equip_drawing"] = New("equip_drawing","图纸","Blueprint","デザインlvアップ","圖紙","Blaupause","Черновик","Blueprint","Blueprint","Blueprint","Planta",""),
["equip_information"] = New("equip_information","信息","Information","情報","信息","Informationen","Информация","Information","Informazioni","Información","Informação",""),
["equip_milestone"] = New("equip_milestone","里程碑","Milestone","マイルストーン","里程碑","Meilenstein","Milestone","Milestone","Pietra miliare","Hito","Marco histórico",""),
["equip_star"] = New("equip_star","升星","Star Up","星アップ","升星","Stern hoch","Звезда вверх","Star Up","Stella su","Estrella arriba","Estrelar",""),
["equip_showcase"] = New("equip_showcase","货柜","Container","コンテナ","貨櫃","Behälter","Контейнер","Container","Contenitore","Contenedor","Contentor",""),
["equip_propss"] = New("equip_propss","道具","Item","道具","道具","Gegenstand","Предмет","Objet","Oggetto","Artículo","Item",""),
["equip_res"] = New("equip_res","资源","Resource","リソース","資源","Ressource","Ресурс","Ressource","Risorsa","Recurso","Recurso",""),
["equip_goon"] = New("equip_goon","继续","Continue","継続","繼續","Weiter","Продолжить","Continuer","Continua","Continuar","Continuar",""),
["equip_buy"] = New("equip_buy","希望购买","Wishing List","購入希望","希望購買","Wunschzettel","Список желаний","Liste de souhaits","Lista dei desideri","Lista de deseos","Lista de Desejos",""),
["equip_enough"] = New("equip_enough","材料不足","Insufficient materials.","素材不足","材料不足","Unzureichende Materialien.","Недостаточно материалов.","Matériaux insuffisants.","Materiali insufficienti.","Materiales insuficientes.","Materiais insuficientes.",""),
["equip_enoughfield"] = New("equip_enoughfield","制作栏位已到达上限","Crafting slots are maxed.","製造スロット数が上限","製作欄位已到達上限","Handwerksplätze sind ausgeschöpft.","Слоты ремесла исчерпаны.","Les emplacements d\'artisanat sont au maximum.","Gli slot di crafting sono al massimo.","Las ranuras de artesanía están al máximo.","As ranhuras de artesanato estão no máximo.",""),
["equip_find"] = New("equip_find","发现新图纸","New blueprint discovered!","新デザインを発見","發現新圖紙","Neue Blaupause entdeckt!","Обнаружен новый чертеж!","Nouveau plan découvert !","Scoperto un nuovo modello!","Se ha descubierto un nuevo plano.","Nova planta descoberta!",""),
["equip_ungread"] = New("equip_ungread","图纸升级","Upgrade Blueprint","デザインlvアップ","圖紙升級","Blaupause aufwerten","Улучшить чертеж","Améliorer le plan","Aggiorna l\'impronta blu","Mejora del plano","Planta de actualização",""),
["equip_high"] = New("equip_high","高品质装备！","Advanced gear!","高品質装備！","高品質裝備！","Erweiterte Ausrüstung!","Улучшенное снаряжение!","Equipement avancé !","Attrezzatura avanzata!","¡Equipo avanzado!","Equipamento avançado!",""),
["equip_make"] = New("equip_make","制作详情","Craft Details","製造詳細","製作詳情","Handwerkliche Details","Детали ремесла","Détails de l\'artisanat","Dettagli della creazione","Detalles de la artesanía","Detalhes do Artesanato",""),
["equip_draw"] = New("equip_draw","解锁此图纸并开始制作","Unlock the blueprint and start crafting.","デザインを開放して製造を開始","解鎖此圖紙並開始製作","Schalte die Blaupause frei und beginne mit dem Crafting.","Разблокируйте чертеж и начните крафтить.","Déverrouillez le plan et commencez l\'artisanat.","Sblocca l\'impronta blu e inizia il crafting.","Desbloquea el plano y empieza a fabricar.","Desbloquear o projecto e iniciar a elaboração do mesmo.",""),
["equip_tip"] = New("equip_tip","分解后装备会消失，是否确认？","The gear will disappear after dismantled. Continue?","解体された装備が戻れません。確認しますか？","分解後裝備會消失，是否確認？","Die Ausrüstung wird nach dem Abbau verschwinden. Weiter?","После демонтажа снаряжение исчезнет. Продолжить?","L\'équipement disparaîtra après avoir été démonté. Continuer ?","L\'attrezzatura scomparirà dopo essere stata smontata. Continuare?","El equipo desaparecerá después de ser desmontado. ¿Continuar?","O equipamento desaparecerá após ser desmontado. Continuar?",""),
["equip_splitget"] = New("equip_splitget","分解后可获取","Obtained after dismantled","解体後に獲得できます","分解後可獲取","Erhältlich nach der Demontage","Получено после демонтажа","Obtenu après le démontage","Ottenuto dopo lo smontaggio","Obtenido después de desmantelar","Obtido depois de desmontado",""),
["equip_split"] = New("equip_split","分解","Dismantle","解体","分解","Demontieren","Демонтировать","Démonter","Smonta","Desmontar","Desmantelamento",""),
["equip_making"] = New("equip_making","装备制作中","Gear is being crafted.","装備製造中","裝備製作中","Die Ausrüstung wird hergestellt.","Снаряжение создается.","L\'équipement est en cours de fabrication.","L\'equipaggiamento è in fase di creazione.","El equipo está siendo fabricado.","O material está a ser trabalhado.",""),
["equip_tipmilestone"] = New("equip_tipmilestone","制作一定数量装备，解锁里程碑获取奖励！","Craft enough gear to gain milestone rewards!","一定数の装備を製造することで、マイルストーンを達成してボーナスをもらいましょう！","製作一定數量裝備，解鎖里程碑獲取獎勵！","Stelle genug Ausrüstung her, um Meilenstein-Belohnungen zu erhalten!","Создайте достаточно снаряжения, чтобы получить награду за пройденный этап!","Fabriquez suffisamment d\'équipement pour obtenir des récompenses d\'étape !","Crea abbastanza equipaggiamento per ottenere ricompense miliari!","Crea suficiente equipo para obtener recompensas de hitos.","Artesanato suficiente para ganhar recompensas de marcos!",""),
["equip_maxmilestone"] = New("equip_maxmilestone","装备里程碑已达到满级！","Max milestone level reached!","装備マイルストーンが全完成しました！","裝備里程碑已達到滿級！","Maximale Meilensteinstufe erreicht!","Максимальный уровень достигнут!","Niveau maximal atteint !","Raggiunto il livello massimo della pietra miliare!","¡Nivel máximo de hito alcanzado!","Nível máximo de marco alcançado!",""),
["equip_upto"] = New("equip_upto","升星","Star Up","星アップ","升星","Stern hoch","Star Up","Étoile montante","Stella in alto","Sube de estrella","Começar",""),
["equip_upaward"] = New("equip_upaward","升星奖励","Star-up rewards","星アップボーナス","升星獎勵","Star-Up-Belohnungen","Награды за повышение уровня","Récompenses de l\'étoile montante","Ricompense da star-up","Recompensas por subir de estrella","Recompensas Star-up",""),
["equip_maxstar"] = New("equip_maxstar","已升至满星","Max Star","星限界に達しました","已升至滿星","Maximaler Stern","Максимальная звезда","Étoile maximale","Stella massima","Estrella máxima","Estrela Máxima",""),
["equip_raising"] = New("equip_raising","图纸升星","Star-up blueprint","デザイン星アップ","圖紙升星","Star-up-Blaupause","Чертеж для создания звезды","Plan de l\'étoile montante","Cianografia Star-up","Plano de subida de estrella","Projecto de arranque",""),
["equip_need"] = New("equip_need","制作所需资源","Required resources","製造に必要なリソース","製作所需資源","Erforderliche Ressourcen","Необходимые ресурсы","Ressources nécessaires","Risorse necessarie","Recursos necesarios","Recursos requeridos",""),
["equip_name_10001"] = New("equip_name_10001","塑料球棒","Plastic Bat","PEの棒","塑料球棒","Plastikschläger","Пластиковая летучая мышь","Batte en plastique","Mazza di plastica","Bate de plástico","Morcego Plástico",""),
["equip_name_10002"] = New("equip_name_10002","布制手套","Cloth Gloves","布グローブ","布製手套","Stoffhandschuhe","Суконные перчатки","Gants en tissu","Guanti di stoffa","Guantes de tela","Luvas de Pano",""),
["equip_name_10003"] = New("equip_name_10003","整洁球衣","Neat Uniform","清潔なユニフォーム","整潔球衣","Saubere Uniform","Аккуратная униформа","Uniforme soigné","Uniforme ordinata","Uniforme limpio","Uniforme puro",""),
["equip_name_10004"] = New("equip_name_10004","整洁球帽","Neat Cap","清潔な帽子","整潔球帽","Ordentliche Mütze","Опрятная кепка","Casquette soignée","Berretto pulito","Gorra limpia","Tampa limpa",""),
["equip_name_10005"] = New("equip_name_10005","整洁球鞋","Neat Shoes","清潔なシューズ","整潔球鞋","Saubere Schuhe","Опрятная обувь","Chaussures propres","Scarpe pulite","Zapatos limpios","Sapatos limpos",""),
["equip_name_10006"] = New("equip_name_10006","塑料护具","Plastic Protector","PEプロテクター","塑料護具","Plastik-Schützer","Пластиковый протектор","Protecteur en plastique","Protettore di plastica","Protector de plástico","Protector de Plástico",""),
["equip_name_10007"] = New("equip_name_10007","木制球棒","Wooden Bat","木の棒","木製球棒","Holzschläger","Деревянная бита","Batte en bois","Mazza di legno","Bate de madera","Morcego de madeira",""),
["equip_name_10008"] = New("equip_name_10008","加厚手套","Thick Gloves","厚めのグローブ","加厚手套","Dicke Handschuhe","Толстые перчатки","Gants épais","Guanti spessi","Guantes gruesos","Luvas espessas",""),
["equip_name_10009"] = New("equip_name_10009","清爽球衣","Lite Uniform","通気性ユニフォーム","清爽球衣","Leichte Uniform","Легкая униформа","Uniforme léger","Uniforme leggera","Uniforme Lite","Uniforme Lite",""),
["equip_name_10010"] = New("equip_name_10010","清爽球帽","Lite Cap","通気性帽子","清爽球帽","Lite-Mütze","Легкая кепка","Casquette Lite","Cappello Lite","Gorra Lite","Lite Cap",""),
["equip_name_10011"] = New("equip_name_10011","清爽球鞋","Lite Shoes","通気性シューズ","清爽球鞋","Lite-Schuhe","Обувь Lite","Chaussures Lite","Scarpe Lite","Zapatos Lite","Sapatos Lite",""),
["equip_name_10012"] = New("equip_name_10012","木制护具","Wood Protector","木のプロテクター","木製護具","Holzschützer","Деревянный протектор","Protecteur en bois","Protettore di legno","Protector de madera","Protector de madeira",""),
["equip_name_10013"] = New("equip_name_10013","原木球棒","Solid Wood Bat","丸棒","原木球棒","Vollholz-Schläger","Деревянная бита","Batte en bois massif","Mazza di legno massiccio","Bate de madera maciza","Morcego de madeira maciça",""),
["equip_name_10014"] = New("equip_name_10014","皮质手套","Leather Gloves","天然皮革グローブ","皮質手套","Lederhandschuhe","Кожаные перчатки","Gants en cuir","Guanti di pelle","Guantes de cuero","Luvas de couro",""),
["equip_name_10015"] = New("equip_name_10015","经典球衣","Classic Uniform","定番ユニフォーム","經典球衣","Klassische Uniform","Классическая униформа","Uniforme classique","Uniforme classica","Uniforme clásico","Uniforme Clássico",""),
["equip_name_10016"] = New("equip_name_10016","动感球帽","Dynamic Cap","活気の帽子","動感球帽","Dynamische Kappe","Динамическая кепка","Casquette dynamique","Cappello dinamico","Gorra Dinámica","Tampa dinâmica",""),
["equip_name_10017"] = New("equip_name_10017","动感球鞋","Dynamic Shoes","活気のシューズ","動感球鞋","Dynamische Schuhe","Динамические ботинки","Chaussures Dynamic","Scarpe dinamiche","Zapatos dinámicos","Sapatos Dinâmicos",""),
["equip_name_10018"] = New("equip_name_10018","轻便护具","Lite Protector","軽量化プロテクター","輕便護具","Lite-Schützer","Протектор Lite","Protecteur Lite","Protettore Lite","Protector Lite","Lite Protector",""),
["equip_name_10019"] = New("equip_name_10019","合金球棒","Alloy Bat","合金の棒","合金球棒","Legierter Schläger","Сплавная бита","Batte en alliage","Mazza in lega","Bate de aleación","Morcego de liga",""),
["equip_name_10020"] = New("equip_name_10020","合金手套","Alloy Gloves","合金グローブ","合金手套","Alloy Handschuhe","Перчатки из сплава","Gants en alliage","Guanti in lega","Guantes de aleación","Luvas de Liga",""),
["equip_name_10021"] = New("equip_name_10021","合金球衣","Alloy Uniform","合金ユニフォーム","合金球衣","Legierung Uniform","Сплав Униформа","Uniforme en alliage","Uniforme in lega","Uniforme de aleación","Uniforme de Liga",""),
["equip_name_10022"] = New("equip_name_10022","合金球帽","Alloy Cap","合金の帽子","合金球帽","Legierung Kappe","Шапка из сплава","Casquette en alliage","Cappello in lega","Gorra de aleación","Tampa de liga",""),
["equip_name_10023"] = New("equip_name_10023","合金球鞋","Alloy Shoes","合金シューズ","合金球鞋","Legierung Schuhe","Обувь из сплава","Chaussures en alliage","Scarpe in lega","Zapatos de aleación","Sapatos de Liga",""),
["equip_name_10024"] = New("equip_name_10024","合金护具","Alloy Protector","合金プロテクター","合金護具","Legierung Protektor","Протектор из сплава","Protecteur en alliage","Protettore in lega","Protector de aleación","Protector de Ligas",""),
["equip_name_10025"] = New("equip_name_10025","复合球棒","Composite Bat","複合の棒","複合球棒","Komposit-Schläger","Композитная бита","Batte en composite","Mazza composita","Bate de composite","Morcego Composto",""),
["equip_name_10026"] = New("equip_name_10026","双层手套","Composite Gloves","複合グローブ","雙層手套","Komposit-Handschuhe","Композитные перчатки","Gants en composite","Guanti compositi","Guantes de composite","Luvas compostas",""),
["equip_name_10027"] = New("equip_name_10027","复合球衣","Composite Uniform","複合ユニフォーム","複合球衣","Komposit-Uniform","Композитная униформа","Uniforme en composite","Uniforme composita","Uniforme de composite","Uniforme Composto",""),
["equip_name_10028"] = New("equip_name_10028","复合球帽","Composite Cap","複合の帽子","複合球帽","Komposit-Mütze","Композитная кепка","Casquette en composite","berretto composito","Gorra de composite","Tampa compósita",""),
["equip_name_10029"] = New("equip_name_10029","复合球鞋","Composite Shoes","複合シューズ","複合球鞋","Komposit-Schuhe","Композитная обувь","Chaussures en composite","Scarpe composite","Zapatos de composite","Sapatos Compostos",""),
["equip_name_10030"] = New("equip_name_10030","复合护具","Composite Protector","複合プロテクター","複合護具","Komposit-Schützer","Композитный протектор","Protecteur en composite","Protettore composito","Protector de composite","Protector Composto",""),
["equip_name_10031"] = New("equip_name_10031","金属球棒","Metal Bat","金属の棒","金屬球棒","Metall-Schläger","Металлическая бита","Batte en métal","Mazza di metallo","Bate de metal","Morcego metálico",""),
["equip_name_10032"] = New("equip_name_10032","金属手套","Metal Gloves","金属グローブ","金屬手套","Metall-Handschuhe","Металлические перчатки","Gants en métal","Guanti di metallo","Guantes de metal","Luvas de metal",""),
["equip_name_10033"] = New("equip_name_10033","金属球衣","Metal Uniform","金属ユニフォーム","金屬球衣","Metall-Uniform","Металлическая униформа","Uniforme en métal","Uniforme di metallo","Uniforme de metal","Uniforme metálico",""),
["equip_name_10034"] = New("equip_name_10034","金属球帽","Metal Cap","金属の帽子","金屬球帽","Metall-Mütze","Металлическая кепка","Casquette en métal","berretto di metallo","Gorra de metal","Tampa metálica",""),
["equip_name_10035"] = New("equip_name_10035","金属球鞋","Metal Shoes","金属シューズ","金屬球鞋","Metall-Schuhe","Металлическая обувь","Chaussures en métal","Scarpe di metallo","Zapatos de metal","Sapatos de metal",""),
["equip_name_10036"] = New("equip_name_10036","金属护具","Metal Protector","金属プロテクター","金屬護具","Metall-Schützer","Металлический протектор","Protecteur en métal","Protettore di metallo","Protector de metal","Protector de metal",""),
["equip_name_10037"] = New("equip_name_10037","尖刺球棒","Spiky Bat","スパイクの棒","尖刺球棒","Stacheliger Schläger","Колючая бита","Batte à pointes","mazza chiodata","Bate de pinchos","Morcego Espinhoso",""),
["equip_name_10038"] = New("equip_name_10038","防刺手套","Anti-Spike Gloves","スパイクグローブ","防刺手套","Anti-Spike-Handschuhe","Перчатки против шипов","Gants Anti-Spike","Guanti Anti-Spike","Guantes antipinchazos","Luvas Anti-Picos",""),
["equip_name_10039"] = New("equip_name_10039","尖刺球衣","Spiky Uniform","スパイクユニフォーム","尖刺球衣","Stachelige Uniform","Колючая униформа","Uniforme à pointes","Uniforme a spillo","Uniforme con pinchos","Uniforme Spiky",""),
["equip_name_10040"] = New("equip_name_10040","防刺球帽","Anti-Spike Cap","スパイク帽子","防刺球帽","Anti-Spike Mütze","Шапка анти-шипа","Casquette Anti-Spike","Cappello Anti-Spike","Gorra antipiquete","Tampa Anti-Pico",""),
["equip_name_10041"] = New("equip_name_10041","防刺球鞋","Anti-Spike Shoes","スパイクシューズ","防刺球鞋","Anti-Spike-Schuhe","Обувь против шипов","Chaussures Anti-Spike","Scarpe Anti-Spike","Zapatos antipinchazos","Sapatos Anti-Picos",""),
["equip_name_10042"] = New("equip_name_10042","尖刺护具","Spiky Protector","スパイクプロテクター","尖刺護具","Spiky-Schützer","Шипастая защита","Protecteur à pointes","Protettore Spiky","Protector Spiky","Protector Spiky",""),
["equip_name_10043"] = New("equip_name_10043","科技球棒","Hi-Tech Bat","先端の棒","科技球棒","Hi-Tech-Schläger","Высокотехнологичная бита","Batte Hi-Tech","Mazza Hi-Tech","Bate de alta tecnología","Morcego Hi-Tech",""),
["equip_name_10044"] = New("equip_name_10044","科技手套","Hi-Tech Gloves","先端グローブ","科技手套","Hi-Tech Handschuhe","Перчатки Hi-Tech","Gants Hi-Tech","Guanti Hi-Tech","Guantes Hi-Tech","Luvas Hi-Tech",""),
["equip_name_10045"] = New("equip_name_10045","科技球衣","Hi-Tech Uniform","先端ユニフォーム","科技球衣","Hi-Tech Uniform","Высокотехнологичная униформа","Uniforme Hi-Tech","Uniforme Hi-Tech","Uniforme Hi-Tech","Uniforme Hi-Tech",""),
["equip_name_10046"] = New("equip_name_10046","科技球帽","Hi-Tech Cap","先端の帽子","科技球帽","Hi-Tech Mütze","Шапка Hi-Tech","Casquette Hi-Tech","Cappello Hi-Tech","Gorra Hi-Tech","Tampa Hi-Tech",""),
["equip_name_10047"] = New("equip_name_10047","科技球鞋","Hi-Tech Shoes","先端シューズ","科技球鞋","Hi-Tech Schuhe","Высокотехнологичная обувь","Chaussures Hi-Tech","Scarpe Hi-Tech","Zapatos Hi-Tech","Sapatos Hi-Tech",""),
["equip_name_10048"] = New("equip_name_10048","科技护具","Hi-Tech Protector","先端プロテクター","科技護具","Hi-Tech Schützer","Протектор Hi-Tech","Protecteur Hi-Tech","Protettore Hi-Tech","Protector Hi-Tech","Protector Hi-Tech",""),
["equip_equip1"] = New("equip_equip1","球棒","Bat","棒","球棒","Schläger","Летучая мышь","Batte","Mazza","Bate","Morcego",""),
["equip_equip2"] = New("equip_equip2","手套","Gloves","グローブ","手套","Handschuhe","Перчатки","Gants","Guanti","Guantes","Luvas",""),
["equip_equip3"] = New("equip_equip3","球衣","Uniform","ユニフォーム","球衣","Uniform","Униформа","Uniforme","Uniforme","Uniforme","Uniforme",""),
["equip_equip4"] = New("equip_equip4","球帽","Cap","帽子","球帽","Mütze","Кепка","Casquette","Berretto","Gorra","Boné",""),
["equip_equip5"] = New("equip_equip5","球鞋","Shoes","シューズ","球鞋","Schuhe","Обувь","Chaussures","Scarpe","Zapatos","Sapatos",""),
["equip_equip6"] = New("equip_equip6","护具","Protector","プロテクター","護具","Beschützer","Протектор","Protecteur","Protettore","Protector","Protector",""),
["equip_collect"] = New("equip_collect","已收藏","Bookmarked","お気に入り追加済み","已收藏","Lesezeichen","Закладка","Marqué d\'un signet","Segnalibro","Marcado","Marcado",""),
["equip_cancelcollect"] = New("equip_cancelcollect","已取消收藏","Bookmark canceled","お気に入り削除済み","已取消收藏","Lesezeichen storniert","Закладка отменена","Signet annulé","Segnalibro cancellato","Marcador cancelado","Marcador de livros cancelado",""),
["equip_enoughstar"] = New("equip_enoughstar","未达到此星级","Insufficient star level.","星lv未到達","未達到此星級","Unzureichende Sternstufe.","Недостаточный уровень звезды.","Niveau d\'étoile insuffisant.","Livello di stelle insufficiente.","Nivel de estrellas insuficiente.","Nível estelar insuficiente.",""),
["equip_getstar"] = New("equip_getstar","已领取过该奖励","Rewards obtained already.","受領済み","已領取過該獎勵","Belohnungen bereits erhalten.","Награды уже получены.","Récompenses déjà obtenues.","Ricompense già ottenute.","Recompensas ya obtenidas.","Recompensas já obtidas.",""),
}
TableMerge(WordConfig,WordEquipConfig)
end