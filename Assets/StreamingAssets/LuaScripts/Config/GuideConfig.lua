
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8,a9)
	return {id=a0,sort=a2,triggerType=a3,triggerArg=a4,eventType=a5,eventArg=a6,finish=a7,prompt=a8,maskType=a9,}
end
LuaConfig["GuideConfig"] = {
[1010] = New(1010,1,"facility_upgrade","101007/1","screen_focus","-50;0;7",false,"",""),
[1011] = New(1011,2,"","","set_focus_dis","-6.6",false,"",""),
[1020] = New(1020,3,"","","hideUI","",false,"",""),
[1030] = New(1030,4,"","","dialogue","right;5002;guide_1030",false,"",""),
[1040] = New(1040,5,"","","dialogue","Left;5003;guide_1040;guide_1040_1",false,"",""),
[1050] = New(1050,6,"","","dialogue","right;5002;guide_1050",false,"",""),
[1060] = New(1060,7,"","","dialogue","Left;5003;guide_1060",false,"",""),
[1070] = New(1070,8,"","","open_view","Guide/MaskView*3*0*1",false,"",""),
[1080] = New(1080,9,"","","screen_focus","3;0;-6.5",false,"",""),
[1081] = New(1081,10,"","","set_focus_dis","-2.25",false,"",""),
[1090] = New(1090,11,"","","wait","0.5",false,"","hide_hand;hide_mask;hide_title"),
[1100] = New(1100,12,"","","open_view","Guide/MaskView*3*1*0.3",false,"",""),
[1110] = New(1110,13,"","","dialogue","Left;5002;guide_1110;guide_1110_1",false,"",""),
[1120] = New(1120,14,"","","dialogue","right;5001;guide_1120;guide_1120_1;guide_1120_2",false,"",""),
[1130] = New(1130,15,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[1131] = New(1131,16,"","","leave_focus","",false,"",""),
[1140] = New(1140,17,"","","screen_focus","10;0;8",false,"",""),
[1150] = New(1150,18,"","","add_item","currency*cash*100",false,"",""),
[1160] = New(1160,19,"","","force_click_button","ObjectPool/Bubble~BubbleRoom2DBuildPool/BubbleRoom2DBuild#100201",false,"guide_prompt_1160","hide_mask"),
[1170] = New(1170,20,"","","force_click_button","FacilityView/list/buildView/downBg/upBtn",false,"guide_prompt_1170","hide_mask"),
[1180] = New(1180,21,"","","close_view","Facility/FacilityView",true,"","hide_title"),
[1190] = New(1190,22,"","","open_view","Guide/GuideMaskView",false,"","hide_title"),
[1192] = New(1192,23,"","","end","",false,"",""),
[5010] = New(5010,24,"facility_upgrade","101002/1","close_view","Guide/GuideMaskView",false,"",""),
[5020] = New(5020,25,"","","hideUI","",false,"",""),
[5030] = New(5030,26,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[5040] = New(5040,27,"","","dialogue","right;5001;guide_5040;guide_5040_1",false,"",""),
[5050] = New(5050,28,"","","showUI","",false,"",""),
[5060] = New(5060,29,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[5070] = New(5070,30,"","","force_click_button","MainView/Down/Card",false,"guide_prompt_5070","hide_mask;handAnim=LeafletAdsClick03"),
[5080] = New(5080,31,"","","force_click_button","MenuView/titlegroup/course",false,"guide_prompt_5080","hide_mask"),
[5090] = New(5090,32,"","","force_click_button","MenuView/back/LessonView(Clone)/list/content;1;Unlock/list;1",false,"guide_prompt_5090","hide_mask"),
[5100] = New(5100,33,"","","force_click_button","LessonMsgView/Btn_Study",false,"guide_prompt_5100","hide_mask"),
[5110] = New(5110,34,"","","close_view","Lesson/LessonMsgView",true,"guide_prompt_5110","hide_mask"),
[5120] = New(5120,35,"","","close_view","Menu/MenuView",false,"guide_prompt_5120","hide_mask"),
[5130] = New(5130,36,"","","end","",false,"","hide_title"),
[10010] = New(10010,37,"guide_end","5010","hideUI","",false,"",""),
[10020] = New(10020,38,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[10030] = New(10030,39,"","","dialogue","right;5001;guide_10120",false,"",""),
[10040] = New(10040,40,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[10050] = New(10050,41,"","","screen_focus","14;0;10",false,"",""),
[10051] = New(10051,42,"","","set_focus_dis","2",false,"",""),
[10060] = New(10060,43,"","","role_event","create_role*901001",false,"",""),
[10070] = New(10070,44,"","","role_event","shift*10758",false,"",""),
[10080] = New(10080,45,"","","focus_role","7;0;-7",false,"","hide_hand;hide_mask;hide_title"),
[10081] = New(10081,46,"","","set_focus_dis","6",false,"",""),
[10090] = New(10090,47,"","","role_event","room_access*100201/1",false,"","hide_mask"),
[10100] = New(10100,48,"","","role_event","walk*10710*end=guide=10110",false,"","hide_mask"),
[10110] = New(10110,49,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[10120] = New(10120,50,"","","dialogue","right;5001;guide_10130;guide_10130_1;guide_10130_2",false,"",""),
[10130] = New(10130,51,"","","open_view","Guide/MaskView*0.5*0.3*0",false,"",""),
[10140] = New(10140,52,"","","showUI","",false,"",""),
[10150] = New(10150,53,"","","role_event","lesson_time*102001*end=guide=10161*end",false,"",""),
[10160] = New(10160,54,"","","force_click_button","MainView/Down/speedbtn",false,"guide_prompt_10160","focus_circle;long_press;hide_mask;handAnim=LeafletAdsClick03"),
[10161] = New(10161,55,"","","finish_long_press","",false,"",""),
[10170] = New(10170,56,"","","role_event","room_access*100201/-1",false,"","hide_title"),
[10180] = New(10180,57,"","","role_event","walk*10734*end=destroy*end",false,"",""),
[10190] = New(10190,58,"","","wait","1",false,"","hide_hand;hide_mask;hide_title"),
[10201] = New(10201,59,"","","leave_focus","",false,"",""),
[10210] = New(10210,60,"","","hideUI","",false,"",""),
[10220] = New(10220,61,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[10230] = New(10230,62,"","","dialogue","right;5001;guide_10230;guide_10230_1;guide_10230_2",false,"",""),
[10240] = New(10240,63,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[10250] = New(10250,64,"","","collect_cash","12.56;0;11.06",false,"guide_prompt_10250","focus_circle;hide_mask"),
[10260] = New(10260,65,"","","end","",false,"","hide_title"),
[15010] = New(15010,66,"guide_end","10010","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[15020] = New(15020,67,"","","dialogue","right;5001;guide_15020;guide_15020_1",false,"",""),
[15030] = New(15030,68,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[15040] = New(15040,69,"","","showUI","",false,"",""),
[15050] = New(15050,70,"","","force_click_button","MainView/Down/Leaflet",false,"guide_prompt_15050","hide_mask;handAnim=LeafletAdsClick03"),
[15060] = New(15060,71,"","","hide_button","LeafletView/Down/Close",false,"",""),
[15070] = New(15070,72,"","","hide_button","LeafletView/Top/Diamond/Add",false,"",""),
[15080] = New(15080,73,"","","hide_button","LeafletView/Down/NormalChest",false,"",""),
[15090] = New(15090,74,"","","hide_button","LeafletView/Down/tip",false,"",""),
[15100] = New(15100,75,"","","hideUI","",false,"","hide_title"),
[15110] = New(15110,76,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[15120] = New(15120,77,"","","dialogue","right;5001;guide_15100;guide_15100_1",false,"","hide_mask"),
[15130] = New(15130,78,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[15140] = New(15140,79,"","","close_view","Guide/MaskView",false,"",""),
[15150] = New(15150,80,"","","send_leaflet","1",false,"guide_prompt_15150","hide_circle;hide_hand;close_mask"),
[15160] = New(15160,81,"","","wait","0.5",false,"","hide_mask;hide_title"),
[15170] = New(15170,82,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[15180] = New(15180,83,"","","dialogue","right;5001;guide_15150;guide_15150_1",false,"","hide_mask"),
[15190] = New(15190,84,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[15200] = New(15200,85,"","","close_view","Guide/MaskView",false,"",""),
[15210] = New(15210,86,"","","showUI","",false,"",""),
[15220] = New(15220,87,"","","send_leaflet","3",false,"guide_prompt_15220","hide_circle;hide_hand;close_mask"),
[15230] = New(15230,88,"","","show_button","LeafletView/Down/Close",true,"","hide_title"),
[15240] = New(15240,89,"","","show_button","LeafletView/Down/SpChest",false,"",""),
[15250] = New(15250,90,"","","show_button","LeafletView/Down/NormalChest",false,"",""),
[15260] = New(15260,91,"","","show_button","LeafletView/Down/tip",false,"",""),
[15270] = New(15270,92,"","","wait","0.5",false,"","hide_mask;hide_title"),
[15280] = New(15280,93,"","","force_click_button","LeafletView/Down/Close",false,"guide_prompt_15280","hide_mask"),
[15290] = New(15290,94,"","","end","",false,"","hide_title"),
[20010] = New(20010,95,"guide_end","15010","hideUI","",false,"",""),
[20020] = New(20020,96,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[20030] = New(20030,97,"","","dialogue","right;5001;guide_20030;guide_20030_1;guide_20030_2",false,"",""),
[20040] = New(20040,98,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[20050] = New(20050,99,"","","showUI","",false,"",""),
[20060] = New(20060,100,"","","force_click_button","MainView/Down/Task/progress/button",false,"guide_prompt_20060","hide_mask;handAnim=LeafletAdsClick03"),
[20070] = New(20070,101,"","","end","",true,"",""),
[25010] = New(25010,102,"vpcard_count","750","ignore_guide","buy_delete_ads",false,"",""),
[25020] = New(25020,103,"","","hideUI","",false,"",""),
[25030] = New(25030,104,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[25040] = New(25040,105,"","","dialogue","right;5003;guide_25030",false,"",""),
[25050] = New(25050,106,"","","dialogue","Left;5001;guide_25040",false,"",""),
[25060] = New(25060,107,"","","dialogue","right;5003;guide_25050;guide_25050_1;guide_25050_2",false,"",""),
[25070] = New(25070,108,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[25080] = New(25080,109,"","","showUI","",false,"",""),
[25090] = New(25090,110,"","","force_click_button","MainView/Down/ads/ad",false,"guide_prompt_25090","hide_mask;handAnim=LeafletAdsClick02"),
[25100] = New(25100,111,"","","force_click_button","DoubleEarnings/confirm",false,"guide_prompt_25100","hide_mask"),
[25110] = New(25110,112,"","","hideUI","",false,"",""),
[25120] = New(25120,113,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[25130] = New(25130,114,"","","dialogue","right;5003;guide_25120;guide_25120_1",false,"",""),
[25140] = New(25140,115,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[25141] = New(25141,116,"","","showUI","",false,"",""),
[25142] = New(25142,117,"","","force_click_button","MainView/Down/Leaflet",false,"guide_prompt_15050","hide_mask;handAnim=LeafletAdsClick03"),
[25143] = New(25143,118,"","","add_leaflet_tourist","100",false,"",""),
[25144] = New(25144,119,"","","wait","3",false,"","hide_mask;hide_title"),
[25145] = New(25145,120,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[25146] = New(25146,121,"","","dialogue","right;5003;guide_25145;guide_25145_1",false,"",""),
[25150] = New(25150,122,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[25170] = New(25170,123,"","","end","",true,"",""),
[26010] = New(26010,124,"vpcard_count","180","hideUI","",false,"",""),
[26020] = New(26020,125,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[26030] = New(26030,126,"","","dialogue","right;5001;guide_25149;guide_25149_1",false,"",""),
[26040] = New(26040,127,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[26050] = New(26050,128,"","","showUI","",false,"",""),
[26060] = New(26060,129,"","","force_click_button","MainView/Down/Leaflet",false,"guide_prompt_15050","hide_mask;handAnim=LeafletAdsClick03"),
[26061] = New(26061,130,"","","hide_button","LeafletView/Top/Diamond/Add",false,"",""),
[26062] = New(26062,131,"","","hide_button","LeafletView/Down/btn_add",false,"",""),
[26063] = New(26063,132,"","","hide_button","LeafletView/Down/NormalChest",false,"",""),
[26070] = New(26070,133,"","","dialogue","right;5001;guide_26070",false,"",""),
[26080] = New(26080,134,"","","force_click_button","LeafletView/Down/SpChest",false,"guide_prompt_41100","hide_mask"),
[26090] = New(26090,135,"","","end","",true,"",""),
[27010] = New(27010,136,"guide_end","26010","hideUI","",false,"",""),
[27020] = New(27020,137,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[27030] = New(27030,138,"","","dialogue","right;3012;guide_27030",false,"",""),
[27031] = New(27031,139,"","","dialogue","Left;5001;guide_27031",false,"",""),
[27032] = New(27032,140,"","","dialogue","right;3012;guide_27032",false,"",""),
[27040] = New(27040,141,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[27050] = New(27050,142,"","","screen_focus","8.66;0.8;9.62",false,"",""),
[27060] = New(27060,143,"","","set_focus_dis","-6",false,"",""),
[27070] = New(27070,144,"","","force_click_button","ObjectPool/Bubble~BubbleRoom2DBuildPool/BubbleRoom2DBuild#100201",false,"guide_prompt_1160","hide_mask"),
[27080] = New(27080,145,"","","leave_focus","",false,"",""),
[27090] = New(27090,146,"","","force_click_button","FacilityView/View/roomNameBg/workBg",false,"guide_prompt_35090","hide_mask"),
[27100] = New(27100,147,"","","force_click_button","FacilityView/list/JobView/list/content/JobGroupItem1/JobItem1/canUnlock",true,"guide_prompt_35100","hide_mask"),
[27110] = New(27110,148,"","","force_click_button","FacilityView/list/JobView/list/content/JobGroupItem1/JobItem1/no",false,"guide_prompt_35110","hide_mask"),
[27120] = New(27120,149,"","","force_click_button","JobBallerView/list/content;1",false,"guide_prompt_35110","hide_mask"),
[27130] = New(27130,150,"","","force_click_button","JobBallerView/viewBg/yesBtn",false,"guide_prompt_35130","hide_mask"),
[27140] = New(27140,151,"","","close_view","Facility/FacilityView",false,"",""),
[27141] = New(27141,152,"","","hideUI","",false,"",""),
[27142] = New(27142,153,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[27260] = New(27260,154,"","","dialogue","right;5001;guide_27260",false,"",""),
[27261] = New(27261,155,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[27270] = New(27270,156,"","","showUI","",false,"",""),
[27271] = New(27271,157,"","","show_button","LeafletView/Top/Diamond/Add",false,"",""),
[27272] = New(27272,158,"","","show_button","LeafletView/Down/btn_add",false,"",""),
[27273] = New(27273,159,"","","show_button","LeafletView/Down/NormalChest",false,"",""),
[27280] = New(27280,160,"","","end","",false,"",""),
[31010] = New(31010,161,"vpcard_count","230","hideUI","",false,"",""),
[31020] = New(31020,162,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[31030] = New(31030,163,"","","dialogue","right;5001;guide_31020",false,"",""),
[31040] = New(31040,164,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[31050] = New(31050,165,"","","showUI","",false,"",""),
[31060] = New(31060,166,"","","force_click_button","MainView/Mid/Warning",false,"","hide_mask;hide_title"),
[31070] = New(31070,167,"","","wait","2",false,"","hide_mask;hide_title"),
[31080] = New(31080,168,"","","dialogue","right;5001;guide_31060;guide_31060_1;guide_31060_2",false,"",""),
[31090] = New(31090,169,"","","force_click_button","MenuView/back/AreaStatisticsView(Clone)/List/content;1;bg*0/0",false,"","hide_mask;hide_title"),
[31100] = New(31100,170,"","","force_click_button","RoomUnlockView/BG/ButtonUnlock",false,"","hide_mask;hide_title"),
[31110] = New(31110,171,"","","end","",false,"",""),
[32010] = New(32010,172,"guide_end","31010","screen_focus","17;0.8;21",false,"",""),
[32020] = New(32020,173,"","","force_click_button","ObjectPool/Bubble~BubbleRoom2DFinishPool/BubbleRoom2DFinish#100601",false,"guide_prompt_61060","hide_mask"),
[32030] = New(32030,174,"","","end","",true,"",""),
[33010] = New(33010,175,"guide_end","32010","hideUI","",false,"",""),
[33020] = New(33020,176,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[33030] = New(33030,177,"","","dialogue","right;5001;guide_32061",false,"",""),
[33040] = New(33040,178,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[33050] = New(33050,179,"","","showUI","",false,"",""),
[33060] = New(33060,180,"","","screen_focus","17;0.8;21",false,"",""),
[33070] = New(33070,181,"","","force_click_button","ObjectPool/Bubble~BubbleRoom2DBuildPool/BubbleRoom2DBuild#100601",false,"guide_prompt_1160","hide_mask"),
[33080] = New(33080,182,"","","force_click_button","FacilityView/list/buildView/downBg/upBtn",false,"guide_prompt_1170","hide_mask"),
[33090] = New(33090,183,"","","end","",true,"",""),
[34010] = New(34010,184,"guide_end","33010","hideUI","",false,"",""),
[34020] = New(34020,185,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[34030] = New(34030,186,"","","dialogue","right;5001;guide_32110",false,"",""),
[34040] = New(34040,187,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[34050] = New(34050,188,"","","close_view","Facility/FacilityView",false,"",""),
[34060] = New(34060,189,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[34070] = New(34070,190,"","","dialogue","right;5001;guide_31183",false,"",""),
[34080] = New(34080,191,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[34090] = New(34090,192,"","","showUI","",false,"",""),
[34100] = New(34100,193,"","","force_click_button","MainView/Down/Card",false,"guide_prompt_1170","hide_mask"),
[34110] = New(34110,194,"","","end","",true,"",""),
[35010] = New(35010,195,"vpcard_count","1450","open_view","WorldNews/ArenaUnlockedView",false,"",""),
[35020] = New(35020,196,"","","end","",true,"",""),
[37010] = New(37010,197,"vpcard_count","400","hideUI","",false,"",""),
[37020] = New(37020,198,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[37030] = New(37030,199,"","","dialogue","right;5001;guide_37030;guide_37030_1;guide_37030_2",false,"",""),
[37040] = New(37040,200,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[37050] = New(37050,201,"","","showUI","",false,"",""),
[37060] = New(37060,202,"","","create_cash","1002*10",false,"",""),
[37070] = New(37070,203,"","","role_event","create_role*901001",false,"",""),
[37080] = New(37080,204,"","","role_event","shift*13755",false,"",""),
[37090] = New(37090,205,"","","focus_role","7;0;-7",false,"","hide_mask;hide_hand;hide_title"),
[37091] = New(37091,206,"","","set_focus_dis","6",false,"",""),
[37100] = New(37100,207,"","","role_event","room_access*100201/1",false,"","hide_mask"),
[37110] = New(37110,208,"","","role_event","walk*13755*end=guide=37120",false,"","hide_mask"),
[37120] = New(37120,209,"","","role_event","role_change*105002*end=guide=37130",false,"","hide_mask"),
[37130] = New(37130,210,"","","role_change","105002",false,"","hide_mask"),
[37131] = New(37131,211,"","","leave_focus","",false,"",""),
[37150] = New(37150,212,"","","wait","1",false,"","hide_mask;hide_title"),
[37160] = New(37160,213,"","","execute_guide","37170;37190",false,"",""),
[37170] = New(37170,214,"","","role_event","walk*13755*end=guide=37180",false,"",""),
[37180] = New(37180,215,"","","role_event","walk*10559*end=guide=37170",false,"",""),
[37190] = New(37190,216,"","","dialogue","Left;105002;guide_35170",false,"",""),
[37200] = New(37200,217,"","","wait","0.5",false,"","hide_mask;hide_title"),
[37210] = New(37210,218,"","","role_event","animation*PickUp/*end=guide=37220",false,"","hide_mask"),
[37220] = New(37220,219,"","","role_event","collectcash*3*end=guide=37230",false,"","hide_mask"),
[37230] = New(37230,220,"","","wait","1",false,"","hide_mask;hide_title"),
[37240] = New(37240,221,"","","execute_guide","37250;37280",false,"",""),
[37250] = New(37250,222,"","","role_event","walk*10342*end=guide=37260",false,"","hide_mask"),
[37260] = New(37260,223,"","","role_event","walk*10559*end=guide=37270",false,"","hide_mask"),
[37270] = New(37270,224,"","","role_event","walk*10645*end=guide=37250",false,"","hide_mask"),
[37280] = New(37280,225,"","","dialogue","right;5001;guide_35250",false,"",""),
[37290] = New(37290,226,"","","force_click_button","MainView/Left/EnemyTarget#105002",false,"guide_prompt_35290","hide_mask"),
[37300] = New(37300,227,"","","dialogue","right;5001;guide_35300",false,"","hide_title"),
[37310] = New(37310,228,"","","force_click_role","",false,"guide_prompt_35310","hide_mask;focus_circle"),
[37320] = New(37320,229,"","","dialogue","right;5001;guide_35320",false,"",""),
[37330] = New(37330,230,"","","force_click_role","6",false,"guide_prompt_35330","hide_mask;focus_circle"),
[37381] = New(37381,231,"","","role_event","walk*10734*end=destroy*end",false,"",""),
[37382] = New(37382,232,"","","leave_focus","",false,"",""),
[37383] = New(37383,233,"","","wait","0.5",false,"","hide_mask;hide_title"),
[37390] = New(37390,234,"","","dialogue","Left;105002;guide_35390",false,"",""),
[37420] = New(37420,235,"","","dialogue","right;5001;guide_35420",false,"",""),
[37430] = New(37430,236,"","","end","",false,"",""),
[45010] = New(45010,237,"vpcard_count","850","hideUI","",false,"",""),
[45020] = New(45020,238,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[45030] = New(45030,239,"","","dialogue","right;5001;guide_45030;guide_45030_1;guide_45030_2",false,"",""),
[45040] = New(45040,240,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[45050] = New(45050,241,"","","showUI","",false,"",""),
[45060] = New(45060,242,"","","role_event","create_role*901001",false,"",""),
[45070] = New(45070,243,"","","role_event","shift*13755",false,"",""),
[45080] = New(45080,244,"","","focus_role","7;0;-7",false,"","hide_mask;hide_hand;hide_title"),
[45081] = New(45081,245,"","","set_focus_dis","6",false,"",""),
[45090] = New(45090,246,"","","role_event","room_access*1002/1",false,"","hide_mask"),
[45100] = New(45100,247,"","","role_event","walk*13755*end=guide=45110",false,"","hide_mask"),
[45110] = New(45110,248,"","","role_event","role_change*115002*end=guide=45120",false,"","hide_mask"),
[45120] = New(45120,249,"","","role_change","115002",false,"","hide_mask"),
[45141] = New(45141,250,"","","leave_focus","",false,"",""),
[45142] = New(45142,251,"","","wait","1",false,"","hide_mask;hide_title"),
[45150] = New(45150,252,"","","execute_guide","45160;45180",false,"",""),
[45160] = New(45160,253,"","","role_event","walk*13755*end=guide=45170",false,"",""),
[45170] = New(45170,254,"","","role_event","walk*10559*end=guide=45160",false,"",""),
[45180] = New(45180,255,"","","dialogue","Left;115002;guide_45160",false,"",""),
[45190] = New(45190,256,"","","dialogue","right;5001;guide_45210",false,"",""),
[45200] = New(45200,257,"","","wait","0.5",false,"","hide_mask;hide_title"),
[45210] = New(45210,258,"","","execute_guide","45220;45250",false,"",""),
[45220] = New(45220,259,"","","role_event","walk*10342*end=guide=45230",false,"",""),
[45230] = New(45230,260,"","","role_event","walk*10559*end=guide=45240",false,"",""),
[45240] = New(45240,261,"","","role_event","walk*10645*end=guide=45220",false,"",""),
[45250] = New(45250,262,"","","force_click_button","MainView/Down/ArabTarget#115002",false,"guide_prompt_45250","hide_mask"),
[45260] = New(45260,263,"","","dialogue","right;5001;guide_45260",false,"",""),
[45270] = New(45270,264,"","","force_click_role","",false,"guide_prompt_45270","hide_mask;focus_circle"),
[45280] = New(45280,265,"","","dialogue","right;5001;guide_45280",false,"",""),
[45290] = New(45290,266,"","","force_click_role","6",false,"guide_prompt_45290","hide_mask;focus_circle"),
[45321] = New(45321,267,"","","role_event","shieldclick",false,"",""),
[45322] = New(45322,268,"","","leave_focus","",false,"",""),
[45330] = New(45330,269,"","","dialogue","Left;115002;guide_45320",true,"",""),
[45340] = New(45340,270,"","","role_event","walk*10734*end=destroy*end",false,"",""),
[45350] = New(45350,271,"","","role_event","clear_room_point",false,"",""),
[45360] = New(45360,272,"","","dialogue","right;5001;guide_45340",false,"",""),
[45370] = New(45370,273,"","","end","",false,"",""),
[55010] = New(55010,274,"vpcard_count","80","hideUI","",false,"",""),
[55020] = New(55020,275,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[55030] = New(55030,276,"","","dialogue","right;5001;guide_55030;guide_55030_1",false,"",""),
[55050] = New(55050,277,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[55051] = New(55051,278,"","","role_event","create_role*112101",false,"",""),
[55060] = New(55060,279,"","","focus_role","7;0;-7",false,"","hide_hand;hide_mask;hide_title"),
[55061] = New(55061,280,"","","set_focus_dis","6",false,"",""),
[55062] = New(55062,281,"","","role_event","shift*17242",false,"",""),
[55063] = New(55063,282,"","","role_event","walk*17312*end=guide=55064",false,"",""),
[55064] = New(55064,283,"","","role_event","multiple*end=guide=55070",false,"",""),
[55070] = New(55070,284,"","","execute_guide","55071;55072;55073;55074;55075;55080",false,"",""),
[55071] = New(55071,285,"","","role_event","display_object*true;Lamborgini(Clone)/Lamborghini/Rwheel/Mark",false,"",""),
[55072] = New(55072,286,"","","role_event","display_object*true;Lamborgini(Clone)/Lamborghini/Rwheel/Mark (1)",false,"",""),
[55073] = New(55073,287,"","","role_event","display_object*true;Lamborgini(Clone)/Lamborghini/Rwheel/Smoke",false,"",""),
[55074] = New(55074,288,"","","role_event","audio*Event/Lamborghini_brake",false,"",""),
[55075] = New(55075,289,"","","leave_focus","",false,"",""),
[55076] = New(55076,290,"","","screen_focus","6.44;0;-14.8",false,"",""),
[55080] = New(55080,291,"","","role_event","animation*Drift/*end=guide=55081",false,"",""),
[55081] = New(55081,292,"","","role_event","delay*1*end=guide=55090",false,"",""),
[55090] = New(55090,293,"","","role_event","reset_position*Lamborgini(Clone)/Lamborghini*end=guide=55160",false,"","hide_mask;hide_title"),
[55160] = New(55160,294,"","","role_event","animation*OpenDoor/*end=guide=55161",false,"",""),
[55161] = New(55161,295,"","","role_event","create_role*112001",false,"",""),
[55180] = New(55180,296,"","","wait","0.1",false,"","hide_mask;hide_title"),
[55190] = New(55190,297,"","","focus_role","7;0;-7",false,"","hide_hand;hide_mask;hide_title"),
[55191] = New(55191,298,"","","set_focus_dis","6",false,"",""),
[55192] = New(55192,299,"","","wait","0.1",false,"","hide_mask;hide_title"),
[55201] = New(55201,300,"","","role_event","word*guide_55201*end=guide=55200",false,"","hide_mask"),
[55200] = New(55200,301,"","","role_event","walkdiret*17376*end=guide=55210",false,"","hide_mask"),
[55210] = New(55210,302,"","","role_event","walkdiret*10487*end=guide=55220",false,"","hide_mask"),
[55220] = New(55220,303,"","","role_event","animation*Dance/600000",false,"","hide_mask"),
[55230] = New(55230,304,"","","wait","1.5",false,"","hide_mask;hide_title"),
[55231] = New(55231,305,"","","leave_focus","",false,"",""),
[55040] = New(55040,306,"","","dialogue","Left;112002;guide_55040;guide_55040_1",false,"",""),
[55250] = New(55250,307,"","","open_view","Role/BossView*112001*2",false,"","hide_mask"),
[55260] = New(55260,308,"","","force_click_button","BossView/Down_Agree",false,"","hide_mask;hide_title"),
[55270] = New(55270,309,"","","wait","1",false,"","hide_mask;hide_title"),
[55290] = New(55290,310,"","","showUI","",false,"",""),
[55300] = New(55300,311,"","","end","",true,"",""),
[62010] = New(62010,312,"unlock_area","103","ignore_guide","is_named",false,"",""),
[62020] = New(62020,313,"","","hideUI","",false,"",""),
[62030] = New(62030,314,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[62040] = New(62040,315,"","","dialogue","right;5001;guide_62030",false,"",""),
[62050] = New(62050,316,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[62060] = New(62060,317,"","","showUI","",false,"",""),
[62070] = New(62070,318,"","","force_click_button","MainView/Down/Arena",false,"guide_prompt_62070","hide_mask;handAnim=LeafletAdsClick04"),
[62080] = New(62080,319,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[62090] = New(62090,320,"","","dialogue","right;5001;guide_62090;guide_62090_1",false,"",""),
[62100] = New(62100,321,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[62110] = New(62110,322,"","","close_view","Guide/MaskView",false,"",""),
[62120] = New(62120,323,"","","open_view","Arena/NamedView",false,"",""),
[62130] = New(62130,324,"","","wait_event","name_player",false,"",""),
[62140] = New(62140,325,"","","open_view","Guide/MaskView*3*0*0.3",true,"",""),
[62150] = New(62150,326,"","","dialogue","right;5001;guide_62140;guide_62140_1",false,"",""),
[62160] = New(62160,327,"","","force_click_button","ArenaMainView/down/league",false,"guide_prompt_62160","hide_mask"),
[62170] = New(62170,328,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[62180] = New(62180,329,"","","end","",false,"",""),
[65010] = New(65010,330,"first_enter_bat_battle","1","dialogue","right_up;5001;guide_65010",false,"",""),
[65011] = New(65011,331,"","","dialogue","right_up;5001;guide_65011",false,"",""),
[65020] = New(65020,332,"","","battle_hitview","",false,"",""),
[65021] = New(65021,333,"","","dialogue","right_up;5001;guide_65021",false,"",""),
[65030] = New(65030,334,"","","battle_hitview","",false,"",""),
[65031] = New(65031,335,"","","dialogue","right_up;5001;guide_65031",false,"",""),
[65040] = New(65040,336,"","","force_click_button","HitView/hitBtn",false,"","hide_mask;hide_title"),
[65041] = New(65041,337,"","","battle_hitview","end",false,"",""),
[65050] = New(65050,338,"","","end","",true,"",""),
[70010] = New(70010,339,"first_win_game","100001","hideUI","",false,"",""),
[70020] = New(70020,340,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[70030] = New(70030,341,"","","dialogue","right;5001;guide_70030;guide_70030_1;guide_70030_2",false,"",""),
[70040] = New(70040,342,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[70050] = New(70050,343,"","","showUI","",false,"",""),
[70060] = New(70060,344,"","","end","",true,"",""),
[71010] = New(71010,345,"guide_end","70010","hideUI","",false,"",""),
[71020] = New(71020,346,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[71030] = New(71030,347,"","","dialogue","right;5001;guide_71030;guide_71030_1",false,"",""),
[71040] = New(71040,348,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[71050] = New(71050,349,"","","showUI","",false,"",""),
[71060] = New(71060,350,"","","force_click_button","MainView/Mid/Bag",false,"guide_prompt_71060","hide_mask"),
[71070] = New(71070,351,"","","force_click_button","BagListView/Img_BgAll/Img_Bg2/List_Props/content;1;Img_Bg",false,"guide_prompt_71070","hide_mask"),
[71080] = New(71080,352,"","","force_click_button","ItemInfoView/btn_use",false,"guide_prompt_71080","hide_mask"),
[71090] = New(71090,353,"","","force_click_button","ExpUseView/list/content;1",false,"guide_prompt_71090","hide_mask"),
[71100] = New(71100,354,"","","wait","1",false,"","hide_mask;hide_title"),
[71110] = New(71110,355,"","","force_click_button","ExpUseView/viewBg/CloseBtn",false,"guide_prompt_30300","hide_mask"),
[71120] = New(71120,356,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[71130] = New(71130,357,"","","dialogue","right;5001;guide_71130;guide_71130_1",false,"",""),
[71140] = New(71140,358,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[71150] = New(71150,359,"","","end","",true,"",""),
[75010] = New(75010,360,"unlock_area","102","hideUI","",false,"",""),
[75020] = New(75020,361,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[75030] = New(75030,362,"","","dialogue","Left;3012;guide_75030",false,"",""),
[75031] = New(75031,363,"","","dialogue","right;5001;guide_80050;guide_80050_1;guide_80050_2",false,"",""),
[75032] = New(75032,364,"","","screen_focus","28.5;2.5;36.26",false,"",""),
[75033] = New(75033,365,"","","set_focus_dis","6",false,"",""),
[75040] = New(75040,366,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[75170] = New(75170,367,"","","force_click_button","ObjectPool/Bubble~BubbleHookPool/BubbleHook#101401",false,"guide_prompt_36260","hide_mask"),
[75180] = New(75180,368,"","","force_click_button","HookView/list/content;1;canUnlock*0/0",false,"guide_prompt_36070","hide_mask"),
[75190] = New(75190,369,"","","force_click_button","HookView/autoBtn",true,"guide_prompt_36270","hide_mask"),
[75200] = New(75200,370,"","","force_click_button","HookView/yesBtn",false,"guide_prompt_35130","hide_mask"),
[75210] = New(75210,371,"","","force_click_button","HookingView/Speedup/btn",false,"guide_prompt_36290","hide_mask"),
[75220] = New(75220,372,"","","wait","2",false,"","hide_mask;hide_title"),
[75221] = New(75221,373,"","","force_click_button","HookingView/FinishBtn",false,"guide_prompt_61060","hide_mask"),
[75222] = New(75222,374,"","","wait","0.2",false,"","hide_mask;hide_title"),
[75230] = New(75230,375,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[75240] = New(75240,376,"","","dialogue","right;1002;guide_75240",false,"",""),
[75250] = New(75250,377,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[75251] = New(75251,378,"","","leave_focus","",false,"",""),
[75260] = New(75260,379,"","","showUI","",false,"",""),
[75270] = New(75270,380,"","","end","",false,"",""),
[80010] = New(80010,381,"unlock_area","104","hideUI","",false,"",""),
[80020] = New(80020,382,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[80030] = New(80030,383,"","","dialogue","right;5001;guide_80020;guide_80020_1",false,"",""),
[80040] = New(80040,384,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[80050] = New(80050,385,"","","showUI","",false,"",""),
[80051] = New(80051,386,"","","add_currency","cash#60000",false,"",""),
[80060] = New(80060,387,"","","force_click_button","MainView/Mid/btns/Product",false,"guide_prompt_80060","hide_mask"),
[80070] = New(80070,388,"","","force_click_button","ProductListView/bg/list/contont;1",false,"guide_prompt_80070","hide_mask"),
[80080] = New(80080,389,"","","close_view","Product/ListView",true,"",""),
[80090] = New(80090,390,"","","wait","10",false,"guide_prompt_80090","hide_mask"),
[80100] = New(80100,391,"","","end","",false,"",""),
[81010] = New(81010,392,"guide_end","80010","hideUI","",false,"",""),
[81020] = New(81020,393,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[81030] = New(81030,394,"","","dialogue","right;5001;guide_81011",false,"",""),
[81040] = New(81040,395,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[81050] = New(81050,396,"","","showUI","",false,"",""),
[81060] = New(81060,397,"","","force_click_button","MainView/Right/OnProductItem",false,"guide_prompt_81060","hide_mask"),
[81070] = New(81070,398,"","","end","",true,"",""),
[82010] = New(82010,399,"guide_end","81010","hideUI","",false,"",""),
[82020] = New(82020,400,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[82030] = New(82030,401,"","","dialogue","right;5001;guide_82011;guide_82011_1;guide_82011_2",false,"",""),
[82040] = New(82040,402,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[82050] = New(82050,403,"","","role_event","create_role*901003",false,"",""),
[82060] = New(82060,404,"","","role_event","multiple*18113",false,"",""),
[82070] = New(82070,405,"","","screen_focus","31.6;0;8.5",false,"",""),
[82080] = New(82080,406,"","","force_click_button","ObjectPool/Bubble~BubbleEquipPool/BubbleEquip",false,"guide_prompt_82080","hide_mask"),
[82090] = New(82090,407,"","","force_click_button","SaleView/btns/saleBtn",false,"guide_prompt_82090","hide_mask"),
[82100] = New(82100,408,"","","end","",true,"",""),
[83010] = New(83010,409,"guide_end","82010","hideUI","",false,"",""),
[83020] = New(83020,410,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[83030] = New(83030,411,"","","dialogue","right;5001;guide_83011;guide_83011_1;guide_83011_2",false,"",""),
[83040] = New(83040,412,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[83050] = New(83050,413,"","","screen_focus","45.5;0;-2",false,"",""),
[83060] = New(83060,414,"","","force_click_button","ObjectPool/Bubble~BubbleRoom2DBuildPool/BubbleRoom2DBuild#102401",false,"guide_prompt_1160","hide_mask"),
[83070] = New(83070,415,"","","force_click_button","FacilityView/list/buildView/List/content;2",false,"guide_prompt_83070","hide_mask"),
[83080] = New(83080,416,"","","force_click_button","FacilityView/list/buildView/downBg/upBtn",false,"guide_prompt_1170","hide_mask"),
[83090] = New(83090,417,"","","end","",true,"",""),
[84010] = New(84010,418,"guide_end","83010","hideUI","",false,"",""),
[84020] = New(84020,419,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[84030] = New(84030,420,"","","dialogue","right;5001;guide_84011",false,"",""),
[84040] = New(84040,421,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[84050] = New(84050,422,"","","showUI","",false,"",""),
[84051] = New(84051,423,"","","add_currency","cash#600",false,"",""),
[84060] = New(84060,424,"","","force_click_button","MainView/Mid/btns/Product",false,"guide_prompt_80060","hide_mask"),
[84070] = New(84070,425,"","","force_click_button","ProductListView/bg/list/contont;2",false,"guide_prompt_84070","hide_mask"),
[84080] = New(84080,426,"","","close_view","Product/ListView",true,"",""),
[84090] = New(84090,427,"","","wait","10",false,"guide_prompt_80090","hide_mask"),
[84100] = New(84100,428,"","","end","",false,"",""),
[85010] = New(85010,429,"guide_end","84010","hideUI","",false,"",""),
[85020] = New(85020,430,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[85030] = New(85030,431,"","","dialogue","right;5001;guide_85011",false,"",""),
[85040] = New(85040,432,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[85050] = New(85050,433,"","","showUI","",false,"",""),
[85060] = New(85060,434,"","","force_click_button","MainView/Right/OnProductItem",false,"guide_prompt_81060","hide_mask"),
[85070] = New(85070,435,"","","end","",true,"",""),
[86010] = New(86010,436,"guide_end","85010","hideUI","",false,"",""),
[86020] = New(86020,437,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[86030] = New(86030,438,"","","dialogue","right;5001;guide_86011;guide_86011_1",false,"",""),
[86040] = New(86040,439,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[86050] = New(86050,440,"","","showUI","",false,"",""),
[86060] = New(86060,441,"","","force_click_button","MainView/Down/BaseBaller",false,"guide_prompt_86060","hide_mask"),
[86070] = New(86070,442,"","","force_click_button","BaseBallerList/MainRect/ListBaller/content;1",false,"guide_prompt_86070","hide_mask"),
[86080] = New(86080,443,"","","force_click_button","BallerInfo/Equip/Img_EquipBg1",false,"guide_prompt_86080","hide_mask"),
[86090] = New(86090,444,"","","force_click_button","EquipmentList/list/content;1",false,"guide_prompt_84070","hide_mask"),
[86100] = New(86100,445,"","","hideUI","",true,"",""),
[86110] = New(86110,446,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[86120] = New(86120,447,"","","dialogue","Left;3012;guide_86025;guide_86025_1;guide_86025_2",false,"",""),
[86130] = New(86130,448,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[86140] = New(86140,449,"","","showUI","",false,"",""),
[86150] = New(86150,450,"","","end","",false,"",""),
[90010] = New(90010,451,"hamburger_count","1","hideUI","",false,"",""),
[90020] = New(90020,452,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[90030] = New(90030,453,"","","dialogue","right;5001;guide_90030;guide_90030_1",false,"",""),
[90040] = New(90040,454,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[90050] = New(90050,455,"","","screen_focus","2.85;0;-7.71",false,"",""),
[90060] = New(90060,456,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[90070] = New(90070,457,"","","dialogue","right;5001;guide_90070",false,"",""),
[90080] = New(90080,458,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[90090] = New(90090,459,"","","showUI","",false,"",""),
[90100] = New(90100,460,"","","force_click_button","MainView/Mid/Img_HamBg",false,"guide_prompt_90100","hide_mask"),
[90110] = New(90110,461,"","","wait","2",true,"","hide_mask;hide_title"),
[90120] = New(90120,462,"","","hideUI","",false,"",""),
[90130] = New(90130,463,"","","open_view","Guide/MaskView*3*0*0.3",false,"",""),
[90140] = New(90140,464,"","","dialogue","right;5001;guide_90140;guide_90040_1;guide_90040_2",false,"",""),
[90150] = New(90150,465,"","","open_view","Guide/MaskView*3*0.3*0",false,"",""),
[90160] = New(90160,466,"","","showUI","",false,"",""),
[90170] = New(90170,467,"","","end","",false,"",""),
}
end