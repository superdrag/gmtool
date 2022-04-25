
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
	return {id=a0,type=a1,editor_comment1=a2,editor_comment2=a3,editor_comment3=a4,unit=a5,sign=a6,icon=a7,name=a8,tips=a9,order=a10,}
end
LuaConfig["FunctionConfig"] = {
["ba_wt"] = New("ba_wt","","facility","增加保安工作时间（单位s）","guard_work_num_add","function_unit_s","plus","Function/function_workingup","","tip_ba_wt",1),
["bj_wt"] = New("bj_wt","","facility","增加保洁员工作时间（单位s）","cleaner_work_num_add","function_unit_s","plus","Function/function_workingup","","tip_bj_wt",2),
["sy_wt"] = New("sy_wt","","facility","增加收银员工作时间（单位s）","cashier_work_num_add","function_unit_s","plus","Function/function_workingup","","tip_sy_wt",3),
["fw_wt"] = New("fw_wt","","facility","增加服务员工作时间（单位s）","waiter_work_num_add","function_unit_s","plus","Function/function_workingup","","tip_fw_wt",4),
["xs_wt"] = New("xs_wt","","facility","增加销售员工作时间（单位s）","salesman_work_num_add","function_unit_s","plus","Function/function_workingup","","tip_xs_wt",5),
["ba_rt"] = New("ba_rt","","facility","减少保安休息时间（单位s）","guard_rest_num_sub","function_unit_s","minus","Function/function_restdown","","tip_ba_rt",6),
["bj_rt"] = New("bj_rt","","facility","减少保洁员休息时间（单位s）","cleaner_rest_num_sub","function_unit_s","minus","Function/function_restdown","","tip_bj_rt",7),
["sy_rt"] = New("sy_rt","","facility","减少收银员休息时间（单位s）","cashier_rest_num_sub","function_unit_s","minus","Function/function_restdown","","tip_sy_rt",8),
["fw_rt"] = New("fw_rt","","facility","减少服务员休息时间（单位s）","waiter_rest_num_sub","function_unit_s","minus","Function/function_restdown","","tip_fw_rt",9),
["xs_rt"] = New("xs_rt","","facility","减少销售员休息时间（单位s）","salesman_rest_num_sub","function_unit_s","minus","Function/function_restdown","","tip_xs_rt",10),
["r_time"] = New("r_time","","facility","减少修理工恢复时间（单位s）","repairman_CD_num_sub","function_unit_s","minus","Function/function_retimedown","","",11),
["eng_num"] = New("eng_num","","cardbuild","增加加速能量值上限（百分比）","speedup_power_pp_add","function_unit_none","plus","Function/function_energy01","","tip_topenergy",12),
["energy_num"] = New("energy_num","","facility","增加装备商店精力上限","energy_max_num_add","function_unit_none","plus","Function/function_energy01","","tip_topenergy",13),
["pla_num"] = New("pla_num","","facility","增加塑料上限","pla_max_num_add","function_unit_none","plus","Function/function_plastic01up","","tip_topplastic",14),
["wood_num"] = New("wood_num","","facility","增加木材上限","wood_max_num_add","function_unit_none","plus","Function/function_woodup","","tip_topwood",15),
["iron_num"] = New("iron_num","","facility","增加钢铁上限","iron_max_num_add","function_unit_none","plus","Function/function_ironup","","tip_topiron",16),
["fab_num"] = New("fab_num","","facility","增加布料上限","fab_max_num_add","function_unit_none","plus","Function/function_clothup","","tip_topcloth",17),
["lea_num"] = New("lea_num","","facility","增加皮革上限","lea_max_num_add","function_unit_none","plus","Function/function_leatherup","","tip_topleather",18),
["nyl_num"] = New("nyl_num","","facility","增加尼龙上限","nyl_max_num_add","function_unit_none","plus","Function/function_nylonup","","tip_topnylon",19),
["sil_num"] = New("sil_num","","facility","增加硅胶上限","sil_max_num_add","function_unit_none","plus","Function/function_silicaup","","tip_topsilica",20),
["res_num"] = New("res_num","","facility","增加树脂上限","res_max_num_add","function_unit_none","plus","Function/function_resinup","","tip_topresin",21),
["alloy_num"] = New("alloy_num","","facility","增加合金上限","alloy_max_num_add","function_unit_none","plus","Function/function_alloyup","","tip_topalloy",22),
["car_num"] = New("car_num","","facility","增加碳纤维上限","car_max_num_add","function_unit_none","plus","Function/function_carbonup","","tip_topcarbon",23),
["pla_sp"] = New("pla_sp","","facility","增加塑料恢复速度（单位/min）","pla_recover_num_add","function_unit_pm","plus","Function/function_plastic","","tip_replasic",24),
["wood_sp"] = New("wood_sp","","facility","增加木材恢复速度（单位/min）","wood_recover_num_add","function_unit_pm","plus","Function/function_wood","","tip_rewood",25),
["iron_sp"] = New("iron_sp","","facility","增加钢铁恢复速度（单位/min）","iron_recover_num_add","function_unit_pm","plus","Function/function_iron","","tip_reiron",26),
["fab_sp"] = New("fab_sp","","facility","增加布料恢复速度（单位/min）","fab_recover_num_add","function_unit_pm","plus","Function/function_cloth","","tip_recloth",27),
["lea_sp"] = New("lea_sp","","facility","增加皮革恢复速度（单位/min）","lea_recover_num_add","function_unit_pm","plus","Function/function_leather","","tip_releather",28),
["nyl_sp"] = New("nyl_sp","","facility","增加尼龙恢复速度（单位/min）","nyl_recover_num_add","function_unit_pm","plus","Function/function_nylon","","tip_renylon",29),
["sil_sp"] = New("sil_sp","","facility","增加硅胶恢复速度（单位/min）","sil_recover_num_add","function_unit_pm","plus","Currency/currency_silica","","tip_resilica",30),
["res_sp"] = New("res_sp","","facility","增加树脂恢复速度（单位/min）","res_recover_num_add","function_unit_pm","plus","Currency/currency_resin","","tip_reresin",31),
["alloy_sp"] = New("alloy_sp","","facility","增加合金恢复速度（单位/min）","alloy_recover_num_add","function_unit_pm","plus","Currency/currency_alloy","","tip_realloy",32),
["car_sp"] = New("car_sp","","facility","增加碳纤维恢复速度（单位/min）","car_recover_num_add","function_unit_pm","plus","Currency/currency_carbon","","tip_recarbon",33),
["peo_num"] = New("peo_num","","facility","增加同时交易人数上限","buyers_max_num_add","function_unit_none","plus","Function/function_Tradeup","","",34),
["zgA"] = New("zgA","","facility","增加展示柜A容量上限","showcaseA_max_num_add","function_unit_none","plus","Function/function_capacityup","","tip_show_stock",35),
["zgB"] = New("zgB","","facility","增加展示柜B容量上限","showcaseB_max_num_add","function_unit_none","plus","Function/function_capacityup","","tip_show_stock",36),
["zgC"] = New("zgC","","facility","增加展示柜C容量上限","showcaseC_max_num_add","function_unit_none","plus","Function/function_capacityup","","tip_show_stock",37),
["cash"] = New("cash","","facility","设施每分钟产钱","cash_num_add","function_unit_pm","plus","Function/function_offlineCashup","","tip_cash",38),
["cash_use"] = New("cash_use","","facility","客人使用设施付费","cash_use_num_add","function_unit_none","plus","Function/function_cashup","","tip_cash_use",39),
["vpcard"] = New("vpcard","","facility","获得vpcard","vpcard_num_add","function_unit_none","plus","Function/function_vpcard01","","tip_vpcard",40),
["shop_card"] = New("shop_card","","facility","设施每分钟产购物卡","shop_card_num_add","function_unit_pm","plus","Function/function_card01","","tip_shop_card",41),
["honor"] = New("honor","","facility","设施每分钟产门票","honor_num_add","function_unit_pm","plus","","","",42),
["exp_time"] = New("exp_time","","facility","设施产exp所需的时间","exp_time_num_add","function_unit_none","plus","Function/function_exptime","","tip_exp_time",43),
["exp"] = New("exp","","facility","设施产exp","exp_num_add","function_unit_none","plus","Function/function_expget","","tip_exp",44),
["view_num"] = New("view_num","","facility","增加观众人数上限","view_max_num_add","function_unit_none","plus","Function/function_audienceup","","tip_audienceup",45),
["horn_num"] = New("horn_num","","facility","门厅喇叭最大人数","horn_num_add","function_unit_none","plus","Function/function_callpeopleup","","tip_callup",46),
["parking_num"] = New("parking_num","","facility","增加停车场车位数","parking_num_add","function_unit_none","plus","Function/function_audienceup","","tip_parkingnum",47),
["view_eff"] = New("view_eff","","facility","每分钟进入观众","view_re_num_add","function_unit_pm","plus","Function/function_audienceup","","tip_vie_eff",48),
["equipsale_maxnum"] = New("equipsale_maxnum","","facility","货柜买装备人数上限","parking_num_add","function_unit_none","plus","Function/function_Tradeup","","tip_equipsale_maxnum",49),
["re_pla"] = New("re_pla","","equipment","装备制作塑料材料减少","pla_recost_num_sub","function_unit_none","minus","Function/A_function_plastic01","","equip_reduced",50),
["re_wood"] = New("re_wood","","equipment","装备制作木头材料减少","wood_recost_num_sub","function_unit_none","minus","Function/A_function_wood","","equip_reduced",51),
["re_fab"] = New("re_fab","","equipment","装备制作布料材料减少","fab_recost_num_sub","function_unit_none","minus","Function/A_function_cloth","","equip_reduced",52),
["re_lea"] = New("re_lea","","equipment","装备制作皮革材料减少","lea_recost_num_sub","function_unit_none","minus","Function/A_function_leather","","equip_reduced",53),
["re_iron"] = New("re_iron","","equipment","装备制作钢铁材料减少","iron_recost_num_sub","function_unit_none","minus","Function/A_function_iron","","equip_reduced",54),
["re_sil"] = New("re_sil","","equipment","装备制作硅胶材料减少","sil_recost_num_sub","function_unit_none","minus","Function/A_function_silica","","equip_reduced",55),
["re_nylon"] = New("re_nylon","","equipment","装备制作尼龙材料减少","nylon_recost_num_sub","function_unit_none","minus","Function/A_function_nylon","","equip_reduced",56),
["re_res"] = New("re_res","","equipment","装备制作树脂材料减少","res_recost_num_sub","function_unit_none","minus","Function/A_function_resin","","equip_reduced",57),
["re_alloy"] = New("re_alloy","","equipment","装备制作合金材料减少","alloy_recost_num_sub","function_unit_none","minus","Function/A_function_alloy","","equip_reduced",58),
["re_carb"] = New("re_carb","","equipment","装备制作碳纤维材料减少","carb_recost_num_sub","function_unit_none","minus","Function/A_function_carbon","","equip_reduced",59),
["bat_rarity"] = New("bat_rarity","","equipment","球棒类装备制作出高品质概率提升","bat_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",60),
["clo_rarity"] = New("clo_rarity","","equipment","球衣类装备制作出高品质概率提升","clo_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",61),
["cap_rarity"] = New("cap_rarity","","equipment","球帽类装备制作出高品质概率提升","cap_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",62),
["sho_rarity"] = New("sho_rarity","","equipment","球鞋类装备制作出高品质概率提升","sho_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",63),
["glo_rarity"] = New("glo_rarity","","equipment","手套类装备制作出高品质概率提升","glo_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",64),
["pro_rarity"] = New("pro_rarity","","equipment","护具类装备制作出高品质概率提升","pro_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",65),
["bat_getone"] = New("bat_getone","","equipment","球棒类装备多重制作概率提升","bat_getone_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",66),
["clo_getone"] = New("clo_getone","","equipment","球衣类装备多重制作概率提升","clo_getone_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",67),
["cap_getone"] = New("cap_getone","","equipment","球帽类装备多重制作概率提升","cap_getone_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",68),
["sho_getone"] = New("sho_getone","","equipment","球鞋类装备多重制作概率提升","sho_getone_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",69),
["glo_getone"] = New("glo_getone","","equipment","手套类装备多重制作概率提升","glo_getone_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",70),
["pro_getone"] = New("pro_getone","","equipment","护具类装备多重制作概率提升","pro_getone_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",71),
["value_up"] = New("value_up","","equipment","价值提升","value_up_num_add","function_unit_none","plus","Function/A_function_getup","","milepost_introduction_10001",72),
["value_allup"] = New("value_allup","","equipment","所有装备价值提升","value_allup_num_add","function_unit_none","plus","Function/A_function_getup","","milepost_introduction_10001",73),
["de_pla"] = New("de_pla","","equipment","装备制作塑料材料减少","de_pla_num_sub","function_unit_none","minus","Function/A_function_plastic01","","equip_reduced",74),
["de_wood"] = New("de_wood","","equipment","装备制作木头材料减少","de_wood_num_sub","function_unit_none","minus","Function/A_function_wood","","equip_reduced",75),
["de_fab"] = New("de_fab","","equipment","装备制作布料材料减少","de_fab_num_sub","function_unit_none","minus","Function/A_function_cloth","","equip_reduced",76),
["de_lea"] = New("de_lea","","equipment","装备制作皮革材料减少","de_lea_num_sub","function_unit_none","minus","Function/A_function_leather","","equip_reduced",77),
["de_iron"] = New("de_iron","","equipment","装备制作钢铁材料减少","de_iron_num_sub","function_unit_none","minus","Function/A_function_iron","","equip_reduced",78),
["de_sil"] = New("de_sil","","equipment","装备制作硅胶材料减少","de_sil_num_sub","function_unit_none","minus","Function/A_function_silica","","equip_reduced",79),
["de_nylon"] = New("de_nylon","","equipment","装备制作尼龙材料减少","de_nylon_num_sub","function_unit_none","minus","Function/A_function_nylon","","equip_reduced",80),
["de_res"] = New("de_res","","equipment","装备制作树脂材料减少","de_res_num_sub","function_unit_none","minus","Function/A_function_resin","","equip_reduced",81),
["de_alloy"] = New("de_alloy","","equipment","装备制作合金材料减少","de_alloy_num_sub","function_unit_none","minus","Function/A_function_alloy","","equip_reduced",82),
["de_carb"] = New("de_carb","","equipment","装备制作碳纤维材料减少","de_carb_num_sub","function_unit_none","minus","Function/A_function_carbon","","equip_reduced",83),
["new_drawing"] = New("new_drawing","","equipment","新图纸","new_drawing_num_add","function_unit_none","plus","Function/function_drawing","","milepost_introduction_10002",84),
["reduce_time"] = New("reduce_time","","equipment","制作时间缩短(百分比）","make_time_pp_sub","function_unit_pp","minus","Function/function_producetimedown","","",85),
["high_rarity"] = New("high_rarity","","equipment","更高稀有度（百分比）","high_rarity_pp_add","function_unit_pp","plus","Function/A_function_valueup","","risingstar_introduction_10003",86),
["get_one"] = New("get_one","","equipment","增加多重制作几率（百分比）","make_mult_pp_add","function_unit_pp","plus","Function/A_function_multiply","","risingstar_introduction_10001",87),
["plastic"] = New("plastic","","equipment","装备制作材料塑料需求数量","plastic_cost_num","function_unit_none","none","Function/function_plastic01","","",88),
["wood"] = New("wood","","equipment","装备制作材料木头需求数量","wood_cost_num","function_unit_none","none","Function/function_wood","","",89),
["fabric"] = New("fabric","","equipment","装备制作材料布料需求数量","fabric_cost_num","function_unit_none","none","Function/function_cloth","","",90),
["leather"] = New("leather","","equipment","装备制作材料皮革需求数量","leather_cost_num","function_unit_none","none","Function/function_leather","","",91),
["steel"] = New("steel","","equipment","装备制作材料钢铁需求数量","steel_cost_num","function_unit_none","none","Function/function_iron","","",92),
["silica"] = New("silica","","equipment","装备制作材料硅胶需求数量","silica_cost_num","function_unit_none","none","Function/function_silica","","",93),
["nylon"] = New("nylon","","equipment","装备制作材料尼龙需求数量","nylon_cost_num","function_unit_none","none","Function/function_nylon","","",94),
["resin"] = New("resin","","equipment","装备制作材料树脂需求数量","resin_cost_num","function_unit_none","none","Function/function_resin","","",95),
["alloy"] = New("alloy","","equipment","装备制作材料合金需求数量","alloy_cost_num","function_unit_none","none","Function/function_alloy","","",96),
["carbonfiber"] = New("carbonfiber","","equipment","装备制作材料碳纤维需求数量","carbonfiber_cost_num","function_unit_none","none","Function/function_carbon","","",97),
["noads"] = New("noads","","SPFunction","去广告","noads","function_unit_none","none","","","",98),
["investor"] = New("investor","","SPFunction","解锁劳斯莱斯老板和老板房","investor","function_unit_none","none","","","",99),
["autocollection"] = New("autocollection","","SPFunction","解锁自动捡钱机器人","autocollection","function_unit_none","none","","","",100),
["autoclean"] = New("autoclean","","SPFunction","解锁扫地机器人","autoclean","function_unit_none","none","","","",101),
["autoexpel"] = New("autoexpel","","SPFunction","解锁警犬","autoexpel","function_unit_none","none","","","",102),
["tour_guide_num"] = New("tour_guide_num","","SPFunction","导游，竞技场战斗结束保留观众数量（百分比)","tour_guide_num_add","function_unit_pp","none","","","",103),
["bunny_girl"] = New("bunny_girl","","SPFunction","兔女郎，自动发传单","bunny_girl","function_unit_none","none","","","",104),
["AI"] = New("AI","","SPFunction","阿尔法go，自动点击激励气泡","AI","function_unit_none","none","","","",105),
["sax"] = New("sax","","SPFunction","萨克斯，扩大喇叭范围，提升喇叭上限","sax","function_unit_none","none","","","",106),
["onhook"] = New("onhook","","cardbuild","增加挂机收益最大时间上限（小时）","onhook_num_add","function_unit_h","plus","","","",107),
["rate"] = New("rate","","cardbuild","减少所有装备制作时间（百分比）","equip_time_pp_sub","function_unit_pp","minus","","","",108),
["fattyup"] = New("fattyup","","cardbuild","提高胖游客出现的概率（百分比）","fattyup_pp_add","function_unit_pp","plus","","","",109),
["leaflet_scope"] = New("leaflet_scope","","cardbuild","提高喇叭生效范围（百分比）","leaflet_scope_pp_add","function_unit_pp","plus","","","",110),
["news_re"] = New("news_re","","cardbuild","提高报纸恢复速度（百分比）","news_re_pp_add","function_unit_pp","plus","","","",111),
["cusup_bus"] = New("cusup_bus","","cardbuild","每分钟从镜头外生成一个公交车，来到公交站停下，并从车门处生成N个一定进入俱乐部的游客，这些游客部分进入装备商店，部分进入主大厅","cusup_bus_num","function_unit_none","none","","","",112),
["cusup_tram"] = New("cusup_tram","","cardbuild","每分钟从镜头外生成一个电车，来到电车站停下，并从车门处生成N个一定进入俱乐部的游客，这些游客部分进入装备商店，部分进入主大厅","cusup_tram_num","function_unit_none","none","","","",113),
["bat_earnings"] = New("bat_earnings","star_add","roomPos","增加击球房所有产钱设备收益，包括课程收益、设备收益（百分比）","bat_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_add",114),
["pit_earnings"] = New("pit_earnings","star_add","roomPos","增加投球房所有产钱设备收益，包括课程收益、设备收益（百分比）","pit_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_add",115),
["run_earnings"] = New("run_earnings","star_add","roomPos","增加跑步房所有产钱设备收益，包括课程收益、设备收益（百分比）","run_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_add",116),
["cat_earnings"] = New("cat_earnings","star_add","roomPos","增加接球房所有产钱设备收益，包括课程收益、设备收益（百分比）","cat_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_add",117),
["box_earnings"] = New("box_earnings","star_add","roomPos","增加敏捷房所有产钱设备收益，包括课程收益、设备收益（百分比）","box_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_add",118),
["sho_earnings"] = New("sho_earnings","star_add","roomPos","增加力量房所有产钱设备收益，包括课程收益、设备收益（百分比）","sho_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_add",119),
["bat_timecons"] = New("bat_timecons","star_timedown","roomPos","减少击球房所有产钱设备使用时间（百分比）","bat_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",120),
["pit_timecons"] = New("pit_timecons","star_timedown","roomPos","减少投球房所有产钱设备使用时间（百分比）","pit_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",121),
["run_timecons"] = New("run_timecons","star_timedown","roomPos","减少跑步房所有产钱设备使用时间（百分比）","run_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",122),
["cat_timecons"] = New("cat_timecons","star_timedown","roomPos","减少接球房所有产钱设备使用时间（百分比）","cat_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",123),
["box_timecons"] = New("box_timecons","star_timedown","roomPos","减少敏捷房所有产钱设备使用时间（百分比）","box_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",124),
["sho_timecons"] = New("sho_timecons","star_timedown","roomPos","减少力量房所有产钱设备使用时间（百分比）","sho_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",125),
["cafe_earnings"] = New("cafe_earnings","star_add","roomPos","增加茶水间游客使用设备收益（百分比）","cafe_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_tearoomadd",126),
["cafe_timecons"] = New("cafe_timecons","star_add","roomPos","减少茶水间游客使用设备时间（百分比）","cafe_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",127),
["bath_earnings_A"] = New("bath_earnings_A","star_add","roomPos","增加浴室A游客使用设备收益（百分比）","bath_earningsA_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_tearoomadd",128),
["bath_timecons_A"] = New("bath_timecons_A","star_add","roomPos","减少浴室A游客使用设备时间（百分比）","bath_timeconsA_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",129),
["bath_earnings_B"] = New("bath_earnings_B","star_add","roomPos","增加浴室B游客使用设备收益（百分比）","bath_earningsB_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_tearoomadd",130),
["bath_timecons_B"] = New("bath_timecons_B","star_add","roomPos","减少浴室B游客使用设备时间（百分比）","bath_timeconsB_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tipRoomvalue_disadd",131),
["Investor_addition"] = New("Investor_addition","star_add","roomPos","增加兰博基尼老板奖励数量（百分比）","investor_addition_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_addboss",132),
["Boss_addition"] = New("Boss_addition","star_add","roomPos","增加劳斯莱斯老板增加奖励（百分比）","boss_addition_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_addqian",133),
["cleaner_add"] = New("cleaner_add","","roomPos","增加一名保洁房保洁员","cleaner_add_num_add","function_unit_none","plus","Function/function_getup","","",134),
["guard_add"] = New("guard_add","","roomPos","增加一名保安房保安","guard_add_num_add","function_unit_none","plus","Function/function_getup","","",135),
["waiter_add"] = New("waiter_add","","roomPos","增加一名服务员房服务员","waiter_add_num_add","function_unit_none","plus","Function/function_getup","","",136),
["cashier_add"] = New("cashier_add","","roomPos","增加一名收银房收银员","cashier_add_num_add","function_unit_none","plus","Function/function_getup","","",137),
["repairman_add"] = New("repairman_add","","roomPos","增加一名修理工房修理工","repairman_add_num_add","function_unit_none","plus","Function/function_getup","","",138),
["salesman_add"] = New("salesman_add","","roomPos","增加一名销售房销售员","salesman_add_num_add","function_unit_none","plus","Function/function_getup","","",139),
["cleanliness_pp"] = New("cleanliness_pp","star_roomvalue","roomPos","增加保洁房房间值--清洁度（百分比）","cleanliness_pp_add","function_unit_pp","plus","Function/function_RoomBuff0002","","tipRoomvalue_cleanliness",140),
["safety_pp"] = New("safety_pp","star_roomvalue","roomPos","增加保安房房间值--安全度（百分比）","safety_pp_add","function_unit_pp","plus","Function/function_RoomBuff0001","","tipRoomvalue_safety",141),
["SQI_pp"] = New("SQI_pp","star_roomvalue","roomPos","增加服务员房房间值--服务质量（百分比）","SQI_pp_add","function_unit_pp","plus","Function/function_RoomBuff0003","","tipRoomvalue_SQI",142),
["consume_pp"] = New("consume_pp","star_roomvalue","roomPos","增加收银员房房间值--消费体验（百分比）","consume_pp_add","function_unit_pp","plus","Function/function_RoomBuff0005","","tipRoomvalue_consume",143),
["upkeep_pp"] = New("upkeep_pp","star_roomvalue","roomPos","增加修理工房房间值--保养度（百分比）","upkeep_pp_add","function_unit_pp","plus","Function/function_RoomBuff0004","","tipRoomvalue_upkeep",144),
["ardor_pp"] = New("ardor_pp","star_roomvalue","roomPos","增加销售员房房间值--热情度（百分比）","ardor_pp_add","function_unit_pp","plus","Function/function_RoomBuff0006","","tipRoomvalue_ardor",145),
["onhook_add_pp_add"] = New("onhook_add_pp_add","star_offcash","roomPos","增加离线挂机收益（百分比）","onhook_add_pp_add","function_unit_pp","plus","Currency/currency_cash","","tipRoomvalue_get",146),
["bar_extraexp_pp_add"] = New("bar_extraexp_pp_add","star_exp","roomPos","增加酒吧所有设施队员待机exp（百分比）","bar_extraexp_pp_add","function_unit_pp","plus","Function/function_expget","","tipRoomvalue_hook",147),
["meet_extraexp_pp_add"] = New("meet_extraexp_pp_add","star_exp","roomPos","增加会议室所有设施队员待机exp（百分比）","meet_extraexp_pp_add","function_unit_pp","plus","Function/function_expget","","tipRoomvalue_hook",148),
["phy_extraexp_pp_add"] = New("phy_extraexp_pp_add","star_exp","roomPos","增加理疗室所有设施队员待机exp（百分比）","phy_extraexp_pp_add","function_unit_pp","plus","Function/function_expget","","tipRoomvalue_hook",149),
["spa_extraexp_pp_add"] = New("spa_extraexp_pp_add","star_exp","roomPos","增加SPA所有设施队员待机exp（百分比）","spa_extraexp_pp_add","function_unit_pp","plus","Function/function_expget","","tipRoomvalue_hook",150),
["tra_extraexp_pp_add"] = New("tra_extraexp_pp_add","star_exp","roomPos","增加训练室所有设施队员待机exp（百分比）","tra_extraexp_pp_add","function_unit_pp","plus","Function/function_expget","","tipRoomvalue_hook",151),
["fit_extraexp_pp_add"] = New("fit_extraexp_pp_add","star_exp","roomPos","增加健身室所有设施队员待机exp（百分比）","fit_extraexp_pp_add","function_unit_pp","plus","Function/function_expget","","tipRoomvalue_hook",152),
["extraview_re_pp_add"] = New("extraview_re_pp_add","star_add","roomPos","增加每分钟进入观众（百分比）","extraview_re_num_add","function_unit_none","plus","Function/function_tourist","","tipRoomvalue_people",153),
["cleanliness_num"] = New("cleanliness_num","","facility","增加保洁房房间值--清洁度","cleanliness_num_add","function_unit_none","plus","Function/function_RoomBuff0002","","tip_cleanliness",154),
["safety_num"] = New("safety_num","","facility","增加保安房房间值--安全度","safety_num_add","function_unit_none","plus","Function/function_RoomBuff0001","","tip_safety",155),
["SQI_num"] = New("SQI_num","","facility","增加服务员房房间值--服务质量","SQI_num_add","function_unit_none","plus","Function/function_RoomBuff0003","","tip_SQI",156),
["consume_num"] = New("consume_num","","facility","增加收银员房房间值--消费体验","consume_num_add","function_unit_none","plus","Function/function_RoomBuff0005","","tip_ardor",157),
["upkeep_num"] = New("upkeep_num","","facility","增加修理工房房间值--保养度","upkeep_num_add","function_unit_none","plus","Function/function_RoomBuff0004","","tip_upkeep",158),
["ardor_num"] = New("ardor_num","","facility","增加销售员房房间值--热情度","ardor_num_add","function_unit_none","plus","Function/function_RoomBuff0006","","tip_consume",159),
["waiter"] = New("waiter","","employee","服务员","","","none","Build/att_waiter","fun_name_waiter","fun_des_waiter",160),
["manager"] = New("manager","","employee","经理","","","none","Build/att_manager","fun_name_manager","fun_des_coach",161),
["coach"] = New("coach","","employee","教练","","","none","Build/att_CourseCoach","fun_name_coach","fun_des_guard",162),
["guard"] = New("guard","","employee","保安","","","none","Build/att_securityStaff","fun_name_guard","fun_des_cleaner",163),
["repairman"] = New("repairman","","employee","修理工","","","none","Build/att_repairman","fun_name_repairman","fun_des_cashier",164),
["cleaner"] = New("cleaner","","employee","清洁工","","","none","Build/att_cleaner","fun_name_cleaner","fun_des_cheerleader",165),
["cashier"] = New("cashier","","employee","收银员","","","none","Build/att_cashier","fun_name_cashier","fun_des_manager",166),
["cheerleader"] = New("cheerleader","","employee","啦啦队","","","none","Build/att_Cheerleading","fun_name_cheerleader","fun_des_repairman",167),
["salesman"] = New("salesman","","employee","销售员","","","none","Build/att_sale","fun_name_salesman","fun_des_salesman",168),
["admin"] = New("admin","","employee","管理员","","","none","Build/att_administrators","fun_name_admin","fun_des_admin",169),
["secretary"] = New("secretary","","employee","秘书","","","none","Build/att_secretary","fun_name_secretary","fun_des_secretary",170),
["teamCE_pp_add"] = New("teamCE_pp_add","","cardachieve","增加队伍战斗力(百分比)","teamCE_pp_add","function_unit_pp","plus","Function/function_power","","tips_teamCE",171),
["teamCE_num_add"] = New("teamCE_num_add","","cardachieve","增加队伍战斗力(常数)","teamCE_num_add","function_unit_none","plus","Function/function_power","","tips_teamCE",172),
["all_earnings_pp_add"] = New("all_earnings_pp_add","","cardachieve","增加课程收益(百分比)","all_earnings_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_all_earnings",173),
["all_earnings_num_add"] = New("all_earnings_num_add","","cardachieve","增加课程收益(常数)","all_earnings_num_add","function_unit_none","plus","Currency/currency_cash","","tips_all_earnings",174),
["all_value_up_pp_add"] = New("all_value_up_pp_add","","cardachieve","增加售出装备收益(百分比)","all_value_up_pp_add","function_unit_pp","plus","Currency/currency_bitcoin","","tips_all_value_up",175),
["all_value_up_num_add"] = New("all_value_up_num_add","","cardachieve","增加售出装备收益(常数)","all_value_up_num_add","function_unit_none","plus","Currency/currency_bitcoin","","tips_all_value_up",176),
["facility_use_pp_add"] = New("facility_use_pp_add","","cardachieve","增加使用设施收益(百分比)","facility_use_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_facility_use",177),
["facility_use_num_add"] = New("facility_use_num_add","","cardachieve","增加使用设施收益(常数)","facility_use_num_add","function_unit_none","plus","Currency/currency_cash","","tips_facility_use",178),
["course_timecons_pp_sub"] = New("course_timecons_pp_sub","","cardachieve","减少运动课程时间（百分比）","course_timecons_pp_sub","function_unit_pp","minus","Currency/currency_usagetime","","tips_course_timecons",179),
["course_timecons_num_sub"] = New("course_timecons_num_sub","","cardachieve","减少运动课程时间（常数）","course_timecons_num_sub","function_unit_none","minus","Currency/currency_usagetime","","tips_course_timecons",180),
["onhook_gain_pp_add"] = New("onhook_gain_pp_add","","cardachieve","增加离线挂机收益（百分比）","onhook_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_onhook",181),
["onhook_gain_num_add"] = New("onhook_gain_num_add","","cardachieve","增加离线挂机收益（常数）","onhook_num_add","function_unit_none","plus","Currency/currency_cash","","tips_onhook",182),
["course_up_pp_sub"] = New("course_up_pp_sub","","cardachieve","减少课程升级消耗（百分比）","course_up_pp_sub","function_unit_pp","minus","Currency/currency_cash","","tips_course_up",183),
["course_up_num_sub"] = New("course_up_num_sub","","cardachieve","减少课程升级消耗（常数）","course_up_num_sub","function_unit_none","minus","Currency/currency_cash","","tips_course_up",184),
["exp_pp_add"] = New("exp_pp_add","","cardachieve","增加挂机经验（百分比）","exp_pp_add","function_unit_pp","plus","Function/function_expget","","tips_exp",185),
["exp_num_add"] = New("exp_num_add","","cardachieve","增加挂机经验（常数）","exp_num_add","function_unit_none","plus","Function/function_expget","","tips_exp",186),
["bitcoin_addition_pp_add"] = New("bitcoin_addition_pp_add","","cardachieve","增加劳斯莱斯老板奖励比特币（百分比）","bitcoin_addition_pp_add","function_unit_pp","plus","Currency/currency_bitcoin","","tips_bitcoin_addition",187),
["bitcoin_addition_num_add"] = New("bitcoin_addition_num_add","","cardachieve","增加劳斯莱斯老板奖励比特币（常数）","bitcoin_addition_num_add","function_unit_none","plus","Currency/currency_bitcoin","","tips_bitcoin_addition",188),
["lambor_addition_pp_add"] = New("lambor_addition_pp_add","","cardachieve","增加兰博基尼老板奖励数量（百分比）","lambor_addition_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_lambor_addition",189),
["lambor_addition_num_add"] = New("lambor_addition_num_add","","cardachieve","增加兰博基尼老板奖励数量（常数）","lambor_addition_num_add","function_unit_none","plus","Currency/currency_cash","","tips_lambor_addition",190),
["sports_facilitie_pp_add"] = New("sports_facilitie_pp_add","","cardachieve","增加运动设施收益（百分比）","sports_facilitie_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_sports_facilitie",191),
["sports_facilitie_num_add"] = New("sports_facilitie_num_add","","cardachieve","增加运动设施收益（常数）","sports_facilitie_num_add","function_unit_none","plus","Currency/currency_cash","","tips_sports_facilitie",192),
["cafe_profit_pp_add"] = New("cafe_profit_pp_add","","cardachieve","增加茶水间游客使用设备收益（百分比）","cafe_profit_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_cafe_profit",193),
["cafe_profit_pp_num_add"] = New("cafe_profit_pp_num_add","","cardachieve","增加茶水间游客使用设备收益（常数）","cafe_profit_pp_num_add","function_unit_none","plus","Currency/currency_cash","","tips_cafe_profit",194),
["bathroom_profit_pp_add"] = New("bathroom_profit_pp_add","","cardachieve","增加浴室游客使用设备收益（百分比）","bathroom_profit_pp_add","function_unit_pp","plus","Currency/currency_cash","","tips_bathroom_profit",195),
["bathroom_profit_pp_num_add"] = New("bathroom_profit_pp_num_add","","cardachieve","增加浴室游客使用设备收益（常数）","bathroom_profit_pp_num_add","function_unit_none","plus","Currency/currency_cash","","tips_bathroom_profit",196),
["championships_profit_pp_add"] = New("championships_profit_pp_add","","cardachieve","增加锦标赛收益（百分比）","championships_profit_pp_add","function_unit_pp","plus","Currency/currency_bitcoin","","tips_championships_profit",197),
["championships_profit_num_add"] = New("championships_profit_num_add","","cardachieve","增加锦标赛收益（常数）","championships_profit_num_add","function_unit_none","plus","Currency/currency_bitcoin","","tips_championships_profit",198),
["facility_upcost_pp_sub"] = New("facility_upcost_pp_sub","","cardachieve","减少设备升级消耗（百分比）","facility_upcost_pp_sub","function_unit_pp","minus","Currency/currency_cash","","tips_facility_upcost",199),
["facility_upcost_num_sub"] = New("facility_upcost_num_sub","","cardachieve","减少设备升级消耗（常数）","facility_upcost_num_sub","function_unit_none","minus","Currency/currency_cash","","tips_facility_upcost",200),
}
end