
do
local function New(a0,a2,a3,a4,a5,a6,a7,a8)
	return {id=a0,vpcard=a2,cleanliness=a3,safety=a4,upkeep=a5,SQI=a6,ardor=a7,consume=a8,}
end
LuaConfig["RoomValueConfig"] = {
[0] = New(0,10,0,0,0,0,0,0),
[1] = New(1,120,0,0,0,0,0,0),
[2] = New(2,156,0,0,0,0,0,0),
[3] = New(3,216,0,0,0,0,0,0),
[4] = New(4,230,2500,0,0,0,0,0),
[5] = New(5,240,2500,0,0,0,0,0),
[6] = New(6,299,2500,0,0,0,0,0),
[7] = New(7,300,2500,0,0,0,0,0),
[8] = New(8,400,2500,1500,0,0,0,0),
[9] = New(9,414,2500,1500,0,0,0,0),
[10] = New(10,500,11000,1500,0,0,0,0),
[11] = New(11,550,11000,3500,0,0,0,0),
[12] = New(12,650,11000,3500,0,0,0,0),
[13] = New(13,900,11000,3500,0,0,0,0),
[14] = New(14,1000,11500,3500,0,0,0,0),
[15] = New(15,1100,11500,8000,0,0,0,0),
[16] = New(16,1200,11500,8000,3000,0,0,0),
[17] = New(17,1250,11500,8000,3000,0,0,0),
[18] = New(18,1500,12000,8000,3000,0,0,0),
[19] = New(19,1650,12000,8500,3000,0,0,0),
[20] = New(20,1800,12000,8500,3000,0,0,0),
[21] = New(21,1950,12000,8500,15020,0,0,0),
[22] = New(22,2000,12500,8500,15020,0,4561,0),
[23] = New(23,2200,12500,9000,15020,0,4561,0),
[24] = New(24,2500,12500,9000,15020,0,7148,6500),
[25] = New(25,2600,12500,9000,15570,0,7148,6500),
[26] = New(26,2700,12500,9000,15570,0,7148,6500),
[27] = New(27,3000,13000,9000,15570,0,7148,6500),
[28] = New(28,3300,13000,10000,15570,0,7148,6500),
[29] = New(29,3557,13000,10000,15570,0,7148,8300),
[30] = New(30,3900,13000,10000,26500,0,7148,8300),
[31] = New(31,4000,16000,15000,26500,0,7148,8300),
[32] = New(32,4357,16000,15000,26500,0,7148,12570),
[33] = New(33,4500,16000,15000,26500,6800,11675,12570),
[34] = New(34,5000,15000,15500,26500,6800,11675,12570),
[35] = New(35,5200,15000,15500,28800,6800,11675,12570),
[36] = New(36,5400,15000,15500,28800,8500,11675,12570),
[37] = New(37,5500,15000,15500,35880,8500,11675,12570),
[38] = New(38,5533,15000,15500,35880,8500,11675,16522),
[39] = New(39,6000,50000,25000,43500,8500,16788,16522),
[40] = New(40,6709,50000,25000,43500,8500,16788,27522),
[41] = New(41,6800,50000,25000,57850,8500,16788,27522),
[42] = New(42,7000,50000,35000,57850,8500,16788,27522),
[43] = New(43,7200,50000,35000,77800,11070,16788,27522),
[44] = New(44,7885,50000,35000,77800,11070,16788,35520),
[45] = New(45,8000,84000,60000,80000,11070,23785,35520),
[46] = New(46,9000,84000,70000,115800,18530,23785,35520),
[47] = New(47,9500,84000,70000,128500,18530,23785,35520),
[48] = New(48,10000,125000,75000,158500,18530,48550,35520),
[49] = New(49,10800,125000,75000,158500,25034,48550,35520),
[50] = New(50,11000,125000,100000,158500,25034,48550,35520),
[51] = New(51,11255,125000,100000,158500,25034,48550,39058),
[52] = New(52,12000,110000,100000,180000,25034,88570,39058),
[53] = New(53,13000,110000,105000,180000,25034,88570,39058),
[54] = New(54,14000,140000,105000,180000,25034,88570,39058),
[55] = New(55,14400,140000,105000,180000,40170,88570,39058),
[56] = New(56,15222,140000,105000,180000,40170,88570,42588),
[57] = New(57,16000,145000,105000,180000,40170,95560,42588),
[58] = New(58,17000,145000,110000,180000,40170,95560,42588),
[59] = New(59,18000,150000,110000,180500,42570,95560,42588),
[60] = New(60,20000,150800,110000,180500,42570,98850,42588),
[61] = New(61,21600,150800,110000,180500,165000,98850,42588),
[62] = New(62,22000,151600,115000,180500,165000,98850,42588),
[63] = New(63,23000,151600,115000,181000,165000,98850,42588),
[64] = New(64,24000,151600,115000,181000,165000,106140,42588),
[65] = New(65,25000,152400,115000,181000,165000,106140,46558),
[66] = New(66,25200,152400,115000,181000,170000,106140,46558),
[67] = New(67,27500,152400,120000,181000,170000,106140,46558),
[68] = New(68,28000,153200,120000,181500,170000,113430,46558),
[69] = New(69,28800,153200,120000,181500,175000,113430,46558),
[70] = New(70,30000,153200,120000,181500,175000,113430,80447),
[71] = New(71,30800,153200,125000,181500,175000,113430,80447),
[72] = New(72,31000,154000,125000,181500,175000,113430,80447),
[73] = New(73,32000,154000,125000,181500,175000,120720,80447),
[74] = New(74,32400,154000,125000,181500,180000,120720,80447),
[75] = New(75,33000,154000,125000,182000,180000,120720,80447),
[76] = New(76,34000,154800,125000,182000,180000,120720,80447),
[77] = New(77,34100,154800,130000,182000,180000,120720,80447),
[78] = New(78,35000,154800,130000,182000,180000,120720,114336),
[79] = New(79,36000,154800,130000,182000,185000,128010,114336),
[80] = New(80,37000,155600,130000,182000,185000,128010,114336),
[81] = New(81,37400,155600,135000,182000,185000,128010,114336),
[82] = New(82,38000,155600,135000,182500,185000,128010,114336),
[83] = New(83,39600,155600,135000,182500,190000,128010,114336),
[84] = New(84,40000,156400,135000,182500,190000,135300,128225),
[85] = New(85,40700,156400,140000,182500,190000,135300,128225),
[86] = New(86,43000,157200,140000,183000,190000,135300,128225),
[87] = New(87,44000,157200,145000,183000,190000,142590,128225),
[88] = New(88,45000,157200,145000,183000,195000,142590,142114),
[89] = New(89,46000,158000,145000,183000,195000,142590,142114),
[90] = New(90,47300,158000,150000,183000,195000,142590,142114),
[91] = New(91,48000,158000,150000,183500,195000,142590,142114),
[92] = New(92,49000,158800,150000,183500,195000,142590,142114),
[93] = New(93,50000,158800,150000,183500,195000,149880,156003),
[94] = New(94,50400,158800,150000,183500,200000,149880,156003),
[95] = New(95,50600,158800,155000,183500,200000,149880,156003),
[96] = New(96,52000,159600,155000,183500,200000,149880,156003),
[97] = New(97,53000,159600,155000,184000,200000,149880,156003),
[98] = New(98,53900,159600,160000,184000,200000,149880,156003),
[99] = New(99,55000,160400,160000,184000,200000,149880,169892),
[100] = New(100,55800,160400,160000,184000,205000,149880,169892),
[101] = New(101,56000,160400,160000,184000,205000,157170,169892),
[102] = New(102,57200,160400,165000,184000,205000,157170,169892),
[103] = New(103,58000,164000,165000,184500,205000,157170,169892),
[104] = New(104,60500,164000,170000,184500,205000,157170,169892),
[105] = New(105,61000,168000,170000,184500,205000,157170,169892),
[106] = New(106,61200,168000,170000,184500,210000,157170,169892),
[107] = New(107,62000,168000,170000,184500,210000,164460,169892),
[108] = New(108,62500,168000,170000,184500,210000,164460,181781),
[109] = New(109,63000,168000,170000,185000,210000,164460,181781),
[110] = New(110,63800,168000,175000,185000,210000,164460,181781),
[111] = New(111,65000,172000,175000,185000,210000,164460,181781),
[112] = New(112,66600,172000,175000,185000,215000,164460,181781),
[113] = New(113,67100,172000,180000,185000,215000,164460,181781),
[114] = New(114,68000,172000,180000,185500,215000,171750,181781),
[115] = New(115,70000,176000,180000,185500,215000,171750,193670),
[116] = New(116,71500,176000,185000,185500,215000,171750,193670),
[117] = New(117,72000,176000,185000,185500,220000,171750,193670),
[118] = New(118,73000,176000,185000,186000,220000,171750,193670),
[119] = New(119,74000,176000,185000,186000,220000,179040,193670),
[120] = New(120,75000,180000,185000,186000,220000,179040,193670),
[121] = New(121,77000,180000,190000,186000,220000,179040,193670),
[122] = New(122,77400,180000,190000,186000,225000,179040,193670),
[123] = New(123,77500,180000,190000,186000,225000,179040,205559),
[124] = New(124,78000,180000,190000,186500,225000,179040,205559),
[125] = New(125,80000,184000,190000,186500,225000,186330,205559),
[126] = New(126,82500,184000,195000,186500,225000,186330,205559),
[127] = New(127,82800,184000,195000,186500,230000,186330,205559),
[128] = New(128,83000,184000,195000,187000,230000,186330,205559),
[129] = New(129,85000,188000,195000,187000,230000,186330,217448),
[130] = New(130,86000,188000,195000,187000,230000,193620,217448),
[131] = New(131,88000,188000,200000,187500,230000,193620,217448),
[132] = New(132,88200,188000,200000,187500,235000,193620,217448),
[133] = New(133,90000,192000,200000,187500,235000,193620,217448),
[134] = New(134,92000,192000,200000,187500,235000,200910,217448),
[135] = New(135,92500,192000,200000,187500,235000,200910,229337),
[136] = New(136,93000,192000,200000,188000,235000,200910,229337),
[137] = New(137,93500,192000,205000,188000,235000,200910,229337),
[138] = New(138,93600,192000,205000,188000,240000,200910,229337),
[139] = New(139,95000,196000,205000,188000,240000,200910,229337),
[140] = New(140,98000,196000,205000,188500,240000,208200,229337),
[141] = New(141,99000,196000,205000,188500,245000,208200,229337),
[142] = New(142,100000,230000,205000,188500,245000,208200,241226),
[143] = New(143,104000,230000,205000,189000,245000,215490,241226),
[144] = New(144,104400,230000,205000,189000,250000,215490,241226),
[145] = New(145,104500,230000,235000,189000,250000,215490,241226),
[146] = New(146,105000,235000,235000,189000,250000,215490,241226),
[147] = New(147,107500,235000,235000,189000,250000,215490,253115),
[148] = New(148,109800,235000,235000,189000,275835,215490,253115),
[149] = New(149,110000,240000,235000,189000,275835,222780,253115),
[150] = New(150,110500,240000,235000,230580,275835,222780,253115),
[151] = New(151,115000,245000,235000,230580,275835,222780,265004),
[152] = New(152,115500,245000,245000,230580,275835,222780,265004),
[153] = New(153,116000,245000,245000,230580,275835,230070,265004),
[154] = New(154,117000,245000,245000,242000,288750,230070,265004),
[155] = New(155,120000,250000,245000,242000,288750,230070,265004),
[156] = New(156,121000,250000,250000,242000,288750,230070,265004),
[157] = New(157,122000,250000,250000,242000,288750,253500,265004),
[158] = New(158,122500,250000,250000,242000,288750,253500,276893),
[159] = New(159,123500,250000,250000,253420,288750,253500,276893),
[160] = New(160,125000,255000,250000,253420,288750,253500,276893),
[161] = New(161,126000,255000,250000,253420,301665,253500,276893),
[162] = New(162,126500,255000,255000,253420,301665,253500,276893),
[163] = New(163,130000,260000,255000,264840,301665,387550,288782),
[164] = New(164,132000,260000,260000,264840,301665,387550,288782),
[165] = New(165,135000,265000,260000,264840,314580,387550,288782),
[166] = New(166,136500,265000,260000,269850,314580,387550,288782),
[167] = New(167,137500,265000,265000,269850,314580,387550,300671),
[168] = New(168,140000,270000,265000,269850,314580,408630,300671),
[169] = New(169,143000,270000,270000,274860,314580,408630,300671),
[170] = New(170,144000,270000,270000,274860,327495,408630,300671),
[171] = New(171,145000,275000,270000,274860,327495,408630,312560),
[172] = New(172,148500,275000,275000,274860,327495,408630,312560),
[173] = New(173,149500,275000,275000,279870,327495,408630,312560),
[174] = New(174,150000,280000,275000,279870,327495,415860,312560),
[175] = New(175,152500,280000,275000,279870,327495,415860,324449),
[176] = New(176,153000,280000,275000,279870,340410,415860,324449),
[177] = New(177,154000,280000,280000,279870,340410,415860,324449),
[178] = New(178,155000,285000,280000,279870,340410,415860,324449),
[179] = New(179,156000,285000,280000,284880,340410,415860,324449),
[180] = New(180,159500,285000,285000,284880,340410,415860,324449),
[181] = New(181,160000,290000,285000,284880,340410,423090,324449),
[182] = New(182,162000,290000,285000,284880,353325,423090,324449),
[183] = New(183,162500,290000,285000,289890,353325,423090,336338),
[184] = New(184,165000,295000,290000,289890,353325,423090,336338),
[185] = New(185,169000,295000,290000,294900,353325,423090,336338),
[186] = New(186,170000,300000,290000,294900,353325,430320,336338),
[187] = New(187,170500,300000,295000,294900,353325,430320,336338),
[188] = New(188,171000,300000,295000,294900,366240,430320,336338),
[189] = New(189,175000,305000,295000,294900,366240,430320,348227),
[190] = New(190,175500,305000,295000,299910,366240,430320,348227),
[191] = New(191,176000,305000,300000,299910,366240,430320,348227),
[192] = New(192,180000,310000,300000,299910,379155,437550,348227),
[193] = New(193,181500,310000,305000,299910,379155,437550,348227),
[194] = New(194,182000,310000,305000,304920,379155,437550,348227),
[195] = New(195,185000,315000,305000,304920,379155,437550,348227),
[196] = New(196,187000,315000,310000,304920,379155,437550,348227),
[197] = New(197,187500,315000,310000,304920,379155,437550,360116),
[198] = New(198,188500,315000,310000,309930,379155,437550,360116),
[199] = New(199,189000,315000,310000,309930,385780,437550,360116),
[200] = New(200,190000,320000,310000,309930,385780,444780,360116),
[201] = New(201,192500,320000,315000,309930,385780,444780,360116),
[202] = New(202,195000,325000,315000,314940,385780,444780,360116),
[203] = New(203,198000,325000,315000,314940,392405,444780,360116),
[204] = New(204,200000,330000,315000,314940,392405,452010,372005),
[205] = New(205,201500,330000,315000,319950,392405,452010,372005),
[206] = New(206,203500,330000,325000,319950,392405,452010,372005),
[207] = New(207,207000,330000,325000,319950,399030,452010,372005),
[208] = New(208,208000,330000,325000,324960,399030,452010,372005),
[209] = New(209,209000,330000,330000,324960,399030,452010,372005),
[210] = New(210,210000,335000,330000,324960,399030,459240,372005),
[211] = New(211,212500,335000,330000,324960,399030,459240,383894),
[212] = New(212,214500,335000,330000,329970,399030,459240,383894),
[213] = New(213,216000,335000,330000,329970,405655,459240,383894),
[214] = New(214,220000,340000,330000,329970,405655,466470,383894),
[215] = New(215,221000,340000,330000,334980,405655,466470,383894),
[216] = New(216,225000,340000,330000,334980,412280,466470,395783),
[217] = New(217,227500,340000,330000,339990,412280,466470,395783),
[218] = New(218,230000,345000,330000,339990,412280,473700,395783),
[219] = New(219,231000,345000,345000,339990,412280,473700,395783),
[220] = New(220,234000,345000,345000,345000,418905,473700,395783),
[221] = New(221,237500,345000,345000,345000,418905,473700,407672),
[222] = New(222,240000,350000,345000,345000,418905,480930,407672),
[223] = New(223,240500,350000,345000,350010,418905,480930,407672),
[224] = New(224,242000,350000,350000,350010,418905,480930,407672),
[225] = New(225,243000,350000,350000,350010,425530,480930,407672),
[226] = New(226,247000,350000,350000,355020,425530,480930,407672),
[227] = New(227,250000,355000,350000,355020,425530,488160,419561),
[228] = New(228,252000,355000,350000,355020,432155,488160,419561),
[229] = New(229,253000,355000,355000,355020,432155,488160,419561),
[230] = New(230,253500,355000,355000,360030,432155,488160,419561),
[231] = New(231,260000,360000,355000,365040,432155,495390,419561),
[232] = New(232,261000,360000,355000,365040,438780,495390,419561),
[233] = New(233,262500,360000,355000,365040,438780,495390,475450),
[234] = New(234,264000,360000,360000,365040,438780,495390,475450),
[235] = New(235,270000,365000,360000,365040,445405,502620,475450),
[236] = New(236,273000,365000,360000,370050,445405,502620,475450),
[237] = New(237,275000,365000,365000,370050,445405,502620,483339),
[238] = New(238,279000,365000,365000,370050,452030,502620,483339),
[239] = New(239,280000,510000,365000,370050,452030,509850,483339),
[240] = New(240,286000,510000,410000,375060,452030,509850,483339),
[241] = New(241,287500,510000,410000,375060,452030,509850,491228),
[242] = New(242,288000,510000,410000,375060,458655,509850,491228),
[243] = New(243,290000,518500,410000,375060,458655,517080,491228),
[244] = New(244,297000,518500,420000,375060,465280,517080,491228),
[245] = New(245,299000,518500,420000,380070,465280,517080,491228),
[246] = New(246,300000,527000,420000,380070,465280,524310,499117),
[247] = New(247,306000,527000,420000,380070,471905,524310,499117),
[248] = New(248,308000,527000,430000,380070,471905,524310,499117),
[249] = New(249,310000,535500,430000,380070,471905,531540,499117),
[250] = New(250,312000,535500,430000,385080,471905,531540,499117),
[251] = New(251,312500,535500,430000,385080,471905,531540,507006),
[252] = New(252,315000,535500,430000,385080,488530,531540,507006),
[253] = New(253,319000,535500,440000,385080,488530,531540,507006),
[254] = New(254,320000,544000,440000,385080,488530,538770,507006),
[255] = New(255,324000,544000,440000,385080,505155,538770,507006),
[256] = New(256,325000,544000,440000,390090,505155,538770,514895),
[257] = New(257,330000,552500,450000,390090,505155,546000,514895),
[258] = New(258,333000,552500,450000,390090,528180,546000,514895),
[259] = New(259,337500,552500,450000,390090,528180,546000,522784),
[260] = New(260,338000,552500,450000,395100,528180,546000,522784),
[261] = New(261,340000,561000,450000,395100,528180,553230,522784),
[262] = New(262,341000,561000,460000,395100,528180,553230,522784),
[263] = New(263,342000,561000,460000,395100,551005,553230,522784),
[264] = New(264,350000,569500,460000,395100,551005,560460,530673),
[265] = New(265,351000,569500,460000,400110,574230,560460,530673),
[266] = New(266,352000,569500,470000,400110,574230,560460,530673),
[267] = New(267,360000,578000,470000,400110,597255,567690,530673),
[268] = New(268,362500,578000,470000,400110,597255,567690,538562),
[269] = New(269,363000,578000,480000,400110,597255,567690,538562),
[270] = New(270,364000,578000,480000,405120,597255,567690,538562),
[271] = New(271,370000,586500,480000,405120,597255,574920,538562),
[272] = New(272,374000,586500,490000,405120,597255,574920,538562),
[273] = New(273,375000,586500,490000,405120,597255,574920,546451),
[274] = New(274,377000,586500,490000,410130,597255,574920,546451),
[275] = New(275,378000,586500,490000,410130,620280,574920,546451),
[276] = New(276,380000,595000,490000,410130,620280,582150,546451),
[277] = New(277,385000,595000,500000,410130,620280,582150,546451),
[278] = New(278,387500,595000,500000,410130,620280,582150,554340),
[279] = New(279,390000,603500,500000,415140,620280,589380,554340),
[280] = New(280,396000,603500,500000,415140,642305,589380,554340),
[281] = New(281,400000,612000,500000,415140,642305,596610,562229),
[282] = New(282,403000,612000,500000,420150,642305,596610,562229),
[283] = New(283,407000,612000,520000,420150,642305,596610,562229),
[284] = New(284,410000,620500,520000,420150,642305,596610,562229),
[285] = New(285,412500,620500,520000,420150,642305,596610,570118),
[286] = New(286,414000,620500,520000,420150,664330,596610,570118),
[287] = New(287,416000,620500,520000,425160,664330,596610,570118),
[288] = New(288,418000,620500,530000,425160,664330,596610,570118),
[289] = New(289,420000,629000,530000,425160,664330,603840,570118),
[290] = New(290,425000,629000,530000,425160,664330,603840,578007),
[291] = New(291,429000,629000,530000,430170,664330,603840,578007),
[292] = New(292,430000,637500,530000,430170,664330,603840,578007),
[293] = New(293,432000,637500,530000,430170,686355,603840,578007),
[294] = New(294,437500,637500,530000,430170,686355,603840,585896),
[295] = New(295,440000,646000,530000,430170,686355,611070,585896),
[296] = New(296,442000,646000,530000,435180,686355,611070,585896),
[297] = New(297,450000,654500,530000,435180,708380,611070,593785),
[298] = New(298,451000,654500,560000,435180,708380,611070,593785),
[299] = New(299,455000,654500,560000,470900,708380,611070,593785),
[300] = New(300,460000,663000,560000,470900,708380,618300,593785),
[301] = New(301,462000,663000,570000,470900,708380,618300,593785),
[302] = New(302,462500,663000,570000,470900,708380,618300,601674),
[303] = New(303,468000,663000,570000,485100,730405,618300,601674),
[304] = New(304,470000,671500,570000,485100,730405,618300,601674),
[305] = New(305,473000,671500,580000,485100,730405,618300,601674),
[306] = New(306,475000,671500,580000,485100,730405,618300,609563),
[307] = New(307,480000,680000,580000,485100,730405,625530,609563),
[308] = New(308,481000,680000,580000,503100,730405,625530,609563),
[309] = New(309,484000,680000,590000,503100,730405,625530,609563),
[310] = New(310,486000,680000,590000,503100,752430,625530,609563),
[311] = New(311,487500,680000,590000,503100,752430,625530,617452),
[312] = New(312,490000,688500,590000,503100,752430,625530,617452),
[313] = New(313,494000,688500,590000,521100,752430,625530,617452),
[314] = New(314,495000,688500,600000,521100,752430,625530,617452),
[315] = New(315,500000,697000,600000,521100,752430,1115878,739341),
[316] = New(316,504000,697000,600000,521100,774155,1115878,739341),
[317] = New(317,506000,697000,620000,521100,774155,1115878,739341),
[318] = New(318,507000,697000,620000,539100,774155,1115878,739341),
[319] = New(319,510000,705500,620000,539100,774155,1115878,739341),
[320] = New(320,517000,705500,620000,539100,774155,1115878,739341),
[321] = New(321,520000,714000,620000,557100,774155,1128060,739341),
[322] = New(322,522000,714000,620000,557100,795880,1128060,739341),
[323] = New(323,525000,714000,620000,557100,795880,1128060,784550),
[324] = New(324,528000,714000,630000,557100,795880,1128060,784550),
[325] = New(325,530000,722500,630000,557100,795880,1128060,784550),
[326] = New(326,533000,722500,630000,575100,795880,1128060,784550),
[327] = New(327,539000,722500,640000,575100,795880,1128060,784550),
[328] = New(328,540000,731000,640000,575100,817605,1140242,784550),
[329] = New(329,546000,731000,640000,593100,817605,1140242,784550),
[330] = New(330,550000,739500,650000,593100,817605,1140242,829759),
[331] = New(331,558000,739500,650000,593100,839330,1140242,829759),
[332] = New(332,559000,739500,650000,614300,839330,1140242,829759),
[333] = New(333,560000,748000,650000,614300,839330,1152424,829759),
[334] = New(334,561000,748000,670000,614300,839330,1152424,829759),
[335] = New(335,570000,756500,670000,614300,839330,1152424,829759),
[336] = New(336,572000,756500,670000,635500,839330,1152424,829759),
[337] = New(337,575000,756500,670000,635500,839330,1152424,874968),
[338] = New(338,576000,756500,670000,635500,861055,1152424,874968),
[339] = New(339,580000,765000,670000,635500,861055,1164606,874968),
[340] = New(340,583000,765000,680000,635500,861055,1164606,874968),
[341] = New(341,585000,765000,680000,656700,861055,1164606,874968),
[342] = New(342,590000,773500,680000,656700,861055,1164606,874968),
[343] = New(343,594000,773500,690000,656700,882780,1164606,874968),
[344] = New(344,598000,773500,690000,677900,882780,1164606,874968),
[345] = New(345,600000,782000,690000,677900,882780,1176788,920177),
[346] = New(346,605000,782000,700000,677900,882780,1176788,920177),
[347] = New(347,610000,790500,700000,677900,882780,1176788,920177),
[348] = New(348,611000,790500,700000,699100,882780,1176788,920177),
[349] = New(349,612000,790500,700000,699100,904505,1176788,920177),
[350] = New(350,616000,790500,715000,699100,904505,1176788,920177),
[351] = New(351,620000,799000,715000,699100,904505,1188970,920177),
[352] = New(352,624000,799000,715000,720300,904505,1188970,920177),
[353] = New(353,625000,799000,715000,720300,904505,1188970,965386),
[354] = New(354,627000,799000,730000,720300,904505,1188970,965386),
[355] = New(355,630000,807500,730000,720300,926230,1188970,965386),
[356] = New(356,637000,807500,730000,741500,926230,1188970,965386),
[357] = New(357,638000,807500,745000,741500,926230,1188970,965386),
[358] = New(358,640000,816000,745000,741500,926230,1201152,965386),
[359] = New(359,648000,816000,745000,741500,947955,1201152,965386),
[360] = New(360,649000,816000,760000,741500,947955,1201152,965386),
[361] = New(361,650000,824500,760000,762700,947955,1201152,1010595),
[362] = New(362,660000,833000,775000,762700,947955,1213334,1010595),
[363] = New(363,663000,833000,775000,783900,947955,1213334,1010595),
[364] = New(364,666000,833000,775000,783900,969680,1213334,1010595),
[365] = New(365,670000,841500,775000,783900,969680,1213334,1010595),
[366] = New(366,671000,841500,790000,783900,969680,1213334,1010595),
[367] = New(367,675000,841500,790000,783900,969680,1213334,1055804),
[368] = New(368,676000,841500,790000,805100,969680,1213334,1055804),
[369] = New(369,680000,850000,790000,805100,969680,1225516,1055804),
[370] = New(370,682000,850000,805000,805100,969680,1225516,1055804),
[371] = New(371,684000,850000,805000,805100,992405,1225516,1055804),
[372] = New(372,689000,850000,805000,826300,992405,1225516,1055804),
[373] = New(373,690000,858500,805000,826300,992405,1225516,1055804),
[374] = New(374,693000,858500,820000,826300,992405,1225516,1055804),
[375] = New(375,700000,867000,820000,826300,992405,1225516,1101013),
[376] = New(376,702000,867000,820000,847500,1015130,1225516,1101013),
[377] = New(377,704000,867000,835000,847500,1015130,1237698,1101013),
[378] = New(378,710000,875500,835000,847500,1015130,1237698,1101013),
[379] = New(379,715000,875500,850000,868700,1015130,1237698,1101013),
[380] = New(380,720000,884000,850000,868700,1037855,1237698,1101013),
[381] = New(381,725000,884000,850000,868700,1037855,1237698,1146222),
[382] = New(382,726000,884000,865000,868700,1037855,1237698,1146222),
[383] = New(383,728000,884000,865000,889900,1037855,1249880,1146222),
[384] = New(384,730000,892500,865000,889900,1037855,1249880,1146222),
[385] = New(385,737000,892500,880000,889900,1037855,1249880,1146222),
[386] = New(386,738000,892500,880000,889900,1060580,1249880,1146222),
[387] = New(387,740000,901000,880000,889900,1060580,1249880,1146222),
[388] = New(388,741000,901000,880000,911100,1060580,1249880,1146222),
[389] = New(389,748000,901000,895000,911100,1060580,1249880,1146222),
[390] = New(390,750000,909500,895000,911100,1060580,1249880,1191431),
[391] = New(391,752000,909500,895000,911100,1060580,1262062,1191431),
[392] = New(392,754000,909500,895000,932300,1060580,1262062,1191431),
[393] = New(393,756000,909500,895000,932300,1083305,1262062,1191431),
[394] = New(394,759000,909500,910000,932300,1083305,1262062,1191431),
[395] = New(395,760000,918000,910000,932300,1083305,1262062,1191431),
[396] = New(396,767000,918000,910000,953500,1083305,1262062,1191431),
[397] = New(397,770000,926500,910000,953500,1083305,1262062,1191431),
[398] = New(398,774000,926500,910000,953500,1106030,1262062,1191431),
[399] = New(399,775000,926500,910000,953500,1106030,1262062,1236640),
[400] = New(400,776000,926500,910000,953500,1106030,1274244,1236640),
[401] = New(401,780000,935000,910000,974700,1106030,1274244,1236640),
[402] = New(402,781000,935000,940000,974700,1106030,1274244,1236640),
[403] = New(403,790000,943500,940000,974700,1106030,1274244,1236640),
[404] = New(404,792000,943500,940000,974700,1128755,1274244,1236640),
[405] = New(405,793000,943500,940000,995900,1128755,1274244,1236640),
[406] = New(406,800000,952000,940000,995900,1128755,1286426,1281849),
[407] = New(407,803000,952000,970000,995900,1128755,1286426,1281849),
[408] = New(408,806000,952000,970000,1017100,1128755,1286426,1281849),
[409] = New(409,810000,960500,970000,1017100,1151480,1286426,1281849),
[410] = New(410,814000,960500,985000,1017100,1151480,1286426,1281849),
[411] = New(411,819000,960500,985000,1038300,1151480,1286426,1281849),
[412] = New(412,820000,969000,985000,1038300,1151480,1286426,1281849),
[413] = New(413,824000,969000,985000,1038300,1151480,1298608,1281849),
[414] = New(414,825000,969000,985000,1038300,1151480,1298608,1327058),
[415] = New(415,828000,969000,985000,1038300,1174205,1298608,1327058),
[416] = New(416,830000,977500,985000,1038300,1174205,1298608,1327058),
[417] = New(417,832000,977500,985000,1059500,1174205,1298608,1327058),
[418] = New(418,836000,977500,1015000,1059500,1174205,1298608,1327058),
[419] = New(419,840000,986000,1015000,1059500,1174205,1298608,1327058),
[420] = New(420,845000,986000,1015000,1080700,1174205,1298608,1327058),
[421] = New(421,846000,986000,1015000,1080700,1196930,1298608,1327058),
[422] = New(422,847000,986000,1030000,1080700,1196930,1298608,1327058),
[423] = New(423,848000,986000,1030000,1080700,1196930,1310790,1327058),
[424] = New(424,850000,994500,1030000,1080700,1196930,1310790,1372267),
[425] = New(425,858000,994500,1030000,1101900,1196930,1310790,1372267),
[426] = New(426,860000,1003000,1030000,1101900,1196930,1310790,1372267),
[427] = New(427,864000,1003000,1030000,1101900,1219655,1310790,1372267),
[428] = New(428,869000,1003000,1060000,1101900,1219655,1310790,1372267),
[429] = New(429,870000,1011500,1060000,1101900,1219655,1310790,1372267),
[430] = New(430,871000,1011500,1060000,1123100,1219655,1310790,1372267),
[431] = New(431,880000,1020000,1060000,1144300,1242380,1322972,1417476),
}
end