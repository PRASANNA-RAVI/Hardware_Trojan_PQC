`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:06:24 07/07/2019 
// Design Name: 
// Module Name:    parallel_Mults 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module parallel_Mults(acc, pol, s, s_sign, result);
input [3327:0] acc;
input [3327:0]pol;
input [2:0] s;
input s_sign;
output [3327:0] result;

small_alu sa0(acc[12:0], pol[12:0], s, s_sign, result[12:0]);
small_alu sa1(acc[25:13], pol[25:13], s, s_sign, result[25:13]);
small_alu sa2(acc[38:26], pol[38:26], s, s_sign, result[38:26]);
small_alu sa3(acc[51:39], pol[51:39], s, s_sign, result[51:39]);
small_alu sa4(acc[64:52], pol[64:52], s, s_sign, result[64:52]);
small_alu sa5(acc[77:65], pol[77:65], s, s_sign, result[77:65]);
small_alu sa6(acc[90:78], pol[90:78], s, s_sign, result[90:78]);
small_alu sa7(acc[103:91], pol[103:91], s, s_sign, result[103:91]);
small_alu sa8(acc[116:104], pol[116:104], s, s_sign, result[116:104]);
small_alu sa9(acc[129:117], pol[129:117], s, s_sign, result[129:117]);
small_alu sa10(acc[142:130], pol[142:130], s, s_sign, result[142:130]);
small_alu sa11(acc[155:143], pol[155:143], s, s_sign, result[155:143]);
small_alu sa12(acc[168:156], pol[168:156], s, s_sign, result[168:156]);
small_alu sa13(acc[181:169], pol[181:169], s, s_sign, result[181:169]);
small_alu sa14(acc[194:182], pol[194:182], s, s_sign, result[194:182]);
small_alu sa15(acc[207:195], pol[207:195], s, s_sign, result[207:195]);
small_alu sa16(acc[220:208], pol[220:208], s, s_sign, result[220:208]);
small_alu sa17(acc[233:221], pol[233:221], s, s_sign, result[233:221]);
small_alu sa18(acc[246:234], pol[246:234], s, s_sign, result[246:234]);
small_alu sa19(acc[259:247], pol[259:247], s, s_sign, result[259:247]);
small_alu sa20(acc[272:260], pol[272:260], s, s_sign, result[272:260]);
small_alu sa21(acc[285:273], pol[285:273], s, s_sign, result[285:273]);
small_alu sa22(acc[298:286], pol[298:286], s, s_sign, result[298:286]);
small_alu sa23(acc[311:299], pol[311:299], s, s_sign, result[311:299]);
small_alu sa24(acc[324:312], pol[324:312], s, s_sign, result[324:312]);
small_alu sa25(acc[337:325], pol[337:325], s, s_sign, result[337:325]);
small_alu sa26(acc[350:338], pol[350:338], s, s_sign, result[350:338]);
small_alu sa27(acc[363:351], pol[363:351], s, s_sign, result[363:351]);
small_alu sa28(acc[376:364], pol[376:364], s, s_sign, result[376:364]);
small_alu sa29(acc[389:377], pol[389:377], s, s_sign, result[389:377]);
small_alu sa30(acc[402:390], pol[402:390], s, s_sign, result[402:390]);
small_alu sa31(acc[415:403], pol[415:403], s, s_sign, result[415:403]);
small_alu sa32(acc[428:416], pol[428:416], s, s_sign, result[428:416]);
small_alu sa33(acc[441:429], pol[441:429], s, s_sign, result[441:429]);
small_alu sa34(acc[454:442], pol[454:442], s, s_sign, result[454:442]);
small_alu sa35(acc[467:455], pol[467:455], s, s_sign, result[467:455]);
small_alu sa36(acc[480:468], pol[480:468], s, s_sign, result[480:468]);
small_alu sa37(acc[493:481], pol[493:481], s, s_sign, result[493:481]);
small_alu sa38(acc[506:494], pol[506:494], s, s_sign, result[506:494]);
small_alu sa39(acc[519:507], pol[519:507], s, s_sign, result[519:507]);
small_alu sa40(acc[532:520], pol[532:520], s, s_sign, result[532:520]);
small_alu sa41(acc[545:533], pol[545:533], s, s_sign, result[545:533]);
small_alu sa42(acc[558:546], pol[558:546], s, s_sign, result[558:546]);
small_alu sa43(acc[571:559], pol[571:559], s, s_sign, result[571:559]);
small_alu sa44(acc[584:572], pol[584:572], s, s_sign, result[584:572]);
small_alu sa45(acc[597:585], pol[597:585], s, s_sign, result[597:585]);
small_alu sa46(acc[610:598], pol[610:598], s, s_sign, result[610:598]);
small_alu sa47(acc[623:611], pol[623:611], s, s_sign, result[623:611]);
small_alu sa48(acc[636:624], pol[636:624], s, s_sign, result[636:624]);
small_alu sa49(acc[649:637], pol[649:637], s, s_sign, result[649:637]);
small_alu sa50(acc[662:650], pol[662:650], s, s_sign, result[662:650]);
small_alu sa51(acc[675:663], pol[675:663], s, s_sign, result[675:663]);
small_alu sa52(acc[688:676], pol[688:676], s, s_sign, result[688:676]);
small_alu sa53(acc[701:689], pol[701:689], s, s_sign, result[701:689]);
small_alu sa54(acc[714:702], pol[714:702], s, s_sign, result[714:702]);
small_alu sa55(acc[727:715], pol[727:715], s, s_sign, result[727:715]);
small_alu sa56(acc[740:728], pol[740:728], s, s_sign, result[740:728]);
small_alu sa57(acc[753:741], pol[753:741], s, s_sign, result[753:741]);
small_alu sa58(acc[766:754], pol[766:754], s, s_sign, result[766:754]);
small_alu sa59(acc[779:767], pol[779:767], s, s_sign, result[779:767]);
small_alu sa60(acc[792:780], pol[792:780], s, s_sign, result[792:780]);
small_alu sa61(acc[805:793], pol[805:793], s, s_sign, result[805:793]);
small_alu sa62(acc[818:806], pol[818:806], s, s_sign, result[818:806]);
small_alu sa63(acc[831:819], pol[831:819], s, s_sign, result[831:819]);
small_alu sa64(acc[844:832], pol[844:832], s, s_sign, result[844:832]);
small_alu sa65(acc[857:845], pol[857:845], s, s_sign, result[857:845]);
small_alu sa66(acc[870:858], pol[870:858], s, s_sign, result[870:858]);
small_alu sa67(acc[883:871], pol[883:871], s, s_sign, result[883:871]);
small_alu sa68(acc[896:884], pol[896:884], s, s_sign, result[896:884]);
small_alu sa69(acc[909:897], pol[909:897], s, s_sign, result[909:897]);
small_alu sa70(acc[922:910], pol[922:910], s, s_sign, result[922:910]);
small_alu sa71(acc[935:923], pol[935:923], s, s_sign, result[935:923]);
small_alu sa72(acc[948:936], pol[948:936], s, s_sign, result[948:936]);
small_alu sa73(acc[961:949], pol[961:949], s, s_sign, result[961:949]);
small_alu sa74(acc[974:962], pol[974:962], s, s_sign, result[974:962]);
small_alu sa75(acc[987:975], pol[987:975], s, s_sign, result[987:975]);
small_alu sa76(acc[1000:988], pol[1000:988], s, s_sign, result[1000:988]);
small_alu sa77(acc[1013:1001], pol[1013:1001], s, s_sign, result[1013:1001]);
small_alu sa78(acc[1026:1014], pol[1026:1014], s, s_sign, result[1026:1014]);
small_alu sa79(acc[1039:1027], pol[1039:1027], s, s_sign, result[1039:1027]);
small_alu sa80(acc[1052:1040], pol[1052:1040], s, s_sign, result[1052:1040]);
small_alu sa81(acc[1065:1053], pol[1065:1053], s, s_sign, result[1065:1053]);
small_alu sa82(acc[1078:1066], pol[1078:1066], s, s_sign, result[1078:1066]);
small_alu sa83(acc[1091:1079], pol[1091:1079], s, s_sign, result[1091:1079]);
small_alu sa84(acc[1104:1092], pol[1104:1092], s, s_sign, result[1104:1092]);
small_alu sa85(acc[1117:1105], pol[1117:1105], s, s_sign, result[1117:1105]);
small_alu sa86(acc[1130:1118], pol[1130:1118], s, s_sign, result[1130:1118]);
small_alu sa87(acc[1143:1131], pol[1143:1131], s, s_sign, result[1143:1131]);
small_alu sa88(acc[1156:1144], pol[1156:1144], s, s_sign, result[1156:1144]);
small_alu sa89(acc[1169:1157], pol[1169:1157], s, s_sign, result[1169:1157]);
small_alu sa90(acc[1182:1170], pol[1182:1170], s, s_sign, result[1182:1170]);
small_alu sa91(acc[1195:1183], pol[1195:1183], s, s_sign, result[1195:1183]);
small_alu sa92(acc[1208:1196], pol[1208:1196], s, s_sign, result[1208:1196]);
small_alu sa93(acc[1221:1209], pol[1221:1209], s, s_sign, result[1221:1209]);
small_alu sa94(acc[1234:1222], pol[1234:1222], s, s_sign, result[1234:1222]);
small_alu sa95(acc[1247:1235], pol[1247:1235], s, s_sign, result[1247:1235]);
small_alu sa96(acc[1260:1248], pol[1260:1248], s, s_sign, result[1260:1248]);
small_alu sa97(acc[1273:1261], pol[1273:1261], s, s_sign, result[1273:1261]);
small_alu sa98(acc[1286:1274], pol[1286:1274], s, s_sign, result[1286:1274]);
small_alu sa99(acc[1299:1287], pol[1299:1287], s, s_sign, result[1299:1287]);
small_alu sa100(acc[1312:1300], pol[1312:1300], s, s_sign, result[1312:1300]);
small_alu sa101(acc[1325:1313], pol[1325:1313], s, s_sign, result[1325:1313]);
small_alu sa102(acc[1338:1326], pol[1338:1326], s, s_sign, result[1338:1326]);
small_alu sa103(acc[1351:1339], pol[1351:1339], s, s_sign, result[1351:1339]);
small_alu sa104(acc[1364:1352], pol[1364:1352], s, s_sign, result[1364:1352]);
small_alu sa105(acc[1377:1365], pol[1377:1365], s, s_sign, result[1377:1365]);
small_alu sa106(acc[1390:1378], pol[1390:1378], s, s_sign, result[1390:1378]);
small_alu sa107(acc[1403:1391], pol[1403:1391], s, s_sign, result[1403:1391]);
small_alu sa108(acc[1416:1404], pol[1416:1404], s, s_sign, result[1416:1404]);
small_alu sa109(acc[1429:1417], pol[1429:1417], s, s_sign, result[1429:1417]);
small_alu sa110(acc[1442:1430], pol[1442:1430], s, s_sign, result[1442:1430]);
small_alu sa111(acc[1455:1443], pol[1455:1443], s, s_sign, result[1455:1443]);
small_alu sa112(acc[1468:1456], pol[1468:1456], s, s_sign, result[1468:1456]);
small_alu sa113(acc[1481:1469], pol[1481:1469], s, s_sign, result[1481:1469]);
small_alu sa114(acc[1494:1482], pol[1494:1482], s, s_sign, result[1494:1482]);
small_alu sa115(acc[1507:1495], pol[1507:1495], s, s_sign, result[1507:1495]);
small_alu sa116(acc[1520:1508], pol[1520:1508], s, s_sign, result[1520:1508]);
small_alu sa117(acc[1533:1521], pol[1533:1521], s, s_sign, result[1533:1521]);
small_alu sa118(acc[1546:1534], pol[1546:1534], s, s_sign, result[1546:1534]);
small_alu sa119(acc[1559:1547], pol[1559:1547], s, s_sign, result[1559:1547]);
small_alu sa120(acc[1572:1560], pol[1572:1560], s, s_sign, result[1572:1560]);
small_alu sa121(acc[1585:1573], pol[1585:1573], s, s_sign, result[1585:1573]);
small_alu sa122(acc[1598:1586], pol[1598:1586], s, s_sign, result[1598:1586]);
small_alu sa123(acc[1611:1599], pol[1611:1599], s, s_sign, result[1611:1599]);
small_alu sa124(acc[1624:1612], pol[1624:1612], s, s_sign, result[1624:1612]);
small_alu sa125(acc[1637:1625], pol[1637:1625], s, s_sign, result[1637:1625]);
small_alu sa126(acc[1650:1638], pol[1650:1638], s, s_sign, result[1650:1638]);
small_alu sa127(acc[1663:1651], pol[1663:1651], s, s_sign, result[1663:1651]);
small_alu sa128(acc[1676:1664], pol[1676:1664], s, s_sign, result[1676:1664]);
small_alu sa129(acc[1689:1677], pol[1689:1677], s, s_sign, result[1689:1677]);
small_alu sa130(acc[1702:1690], pol[1702:1690], s, s_sign, result[1702:1690]);
small_alu sa131(acc[1715:1703], pol[1715:1703], s, s_sign, result[1715:1703]);
small_alu sa132(acc[1728:1716], pol[1728:1716], s, s_sign, result[1728:1716]);
small_alu sa133(acc[1741:1729], pol[1741:1729], s, s_sign, result[1741:1729]);
small_alu sa134(acc[1754:1742], pol[1754:1742], s, s_sign, result[1754:1742]);
small_alu sa135(acc[1767:1755], pol[1767:1755], s, s_sign, result[1767:1755]);
small_alu sa136(acc[1780:1768], pol[1780:1768], s, s_sign, result[1780:1768]);
small_alu sa137(acc[1793:1781], pol[1793:1781], s, s_sign, result[1793:1781]);
small_alu sa138(acc[1806:1794], pol[1806:1794], s, s_sign, result[1806:1794]);
small_alu sa139(acc[1819:1807], pol[1819:1807], s, s_sign, result[1819:1807]);
small_alu sa140(acc[1832:1820], pol[1832:1820], s, s_sign, result[1832:1820]);
small_alu sa141(acc[1845:1833], pol[1845:1833], s, s_sign, result[1845:1833]);
small_alu sa142(acc[1858:1846], pol[1858:1846], s, s_sign, result[1858:1846]);
small_alu sa143(acc[1871:1859], pol[1871:1859], s, s_sign, result[1871:1859]);
small_alu sa144(acc[1884:1872], pol[1884:1872], s, s_sign, result[1884:1872]);
small_alu sa145(acc[1897:1885], pol[1897:1885], s, s_sign, result[1897:1885]);
small_alu sa146(acc[1910:1898], pol[1910:1898], s, s_sign, result[1910:1898]);
small_alu sa147(acc[1923:1911], pol[1923:1911], s, s_sign, result[1923:1911]);
small_alu sa148(acc[1936:1924], pol[1936:1924], s, s_sign, result[1936:1924]);
small_alu sa149(acc[1949:1937], pol[1949:1937], s, s_sign, result[1949:1937]);
small_alu sa150(acc[1962:1950], pol[1962:1950], s, s_sign, result[1962:1950]);
small_alu sa151(acc[1975:1963], pol[1975:1963], s, s_sign, result[1975:1963]);
small_alu sa152(acc[1988:1976], pol[1988:1976], s, s_sign, result[1988:1976]);
small_alu sa153(acc[2001:1989], pol[2001:1989], s, s_sign, result[2001:1989]);
small_alu sa154(acc[2014:2002], pol[2014:2002], s, s_sign, result[2014:2002]);
small_alu sa155(acc[2027:2015], pol[2027:2015], s, s_sign, result[2027:2015]);
small_alu sa156(acc[2040:2028], pol[2040:2028], s, s_sign, result[2040:2028]);
small_alu sa157(acc[2053:2041], pol[2053:2041], s, s_sign, result[2053:2041]);
small_alu sa158(acc[2066:2054], pol[2066:2054], s, s_sign, result[2066:2054]);
small_alu sa159(acc[2079:2067], pol[2079:2067], s, s_sign, result[2079:2067]);
small_alu sa160(acc[2092:2080], pol[2092:2080], s, s_sign, result[2092:2080]);
small_alu sa161(acc[2105:2093], pol[2105:2093], s, s_sign, result[2105:2093]);
small_alu sa162(acc[2118:2106], pol[2118:2106], s, s_sign, result[2118:2106]);
small_alu sa163(acc[2131:2119], pol[2131:2119], s, s_sign, result[2131:2119]);
small_alu sa164(acc[2144:2132], pol[2144:2132], s, s_sign, result[2144:2132]);
small_alu sa165(acc[2157:2145], pol[2157:2145], s, s_sign, result[2157:2145]);
small_alu sa166(acc[2170:2158], pol[2170:2158], s, s_sign, result[2170:2158]);
small_alu sa167(acc[2183:2171], pol[2183:2171], s, s_sign, result[2183:2171]);
small_alu sa168(acc[2196:2184], pol[2196:2184], s, s_sign, result[2196:2184]);
small_alu sa169(acc[2209:2197], pol[2209:2197], s, s_sign, result[2209:2197]);
small_alu sa170(acc[2222:2210], pol[2222:2210], s, s_sign, result[2222:2210]);
small_alu sa171(acc[2235:2223], pol[2235:2223], s, s_sign, result[2235:2223]);
small_alu sa172(acc[2248:2236], pol[2248:2236], s, s_sign, result[2248:2236]);
small_alu sa173(acc[2261:2249], pol[2261:2249], s, s_sign, result[2261:2249]);
small_alu sa174(acc[2274:2262], pol[2274:2262], s, s_sign, result[2274:2262]);
small_alu sa175(acc[2287:2275], pol[2287:2275], s, s_sign, result[2287:2275]);
small_alu sa176(acc[2300:2288], pol[2300:2288], s, s_sign, result[2300:2288]);
small_alu sa177(acc[2313:2301], pol[2313:2301], s, s_sign, result[2313:2301]);
small_alu sa178(acc[2326:2314], pol[2326:2314], s, s_sign, result[2326:2314]);
small_alu sa179(acc[2339:2327], pol[2339:2327], s, s_sign, result[2339:2327]);
small_alu sa180(acc[2352:2340], pol[2352:2340], s, s_sign, result[2352:2340]);
small_alu sa181(acc[2365:2353], pol[2365:2353], s, s_sign, result[2365:2353]);
small_alu sa182(acc[2378:2366], pol[2378:2366], s, s_sign, result[2378:2366]);
small_alu sa183(acc[2391:2379], pol[2391:2379], s, s_sign, result[2391:2379]);
small_alu sa184(acc[2404:2392], pol[2404:2392], s, s_sign, result[2404:2392]);
small_alu sa185(acc[2417:2405], pol[2417:2405], s, s_sign, result[2417:2405]);
small_alu sa186(acc[2430:2418], pol[2430:2418], s, s_sign, result[2430:2418]);
small_alu sa187(acc[2443:2431], pol[2443:2431], s, s_sign, result[2443:2431]);
small_alu sa188(acc[2456:2444], pol[2456:2444], s, s_sign, result[2456:2444]);
small_alu sa189(acc[2469:2457], pol[2469:2457], s, s_sign, result[2469:2457]);
small_alu sa190(acc[2482:2470], pol[2482:2470], s, s_sign, result[2482:2470]);
small_alu sa191(acc[2495:2483], pol[2495:2483], s, s_sign, result[2495:2483]);
small_alu sa192(acc[2508:2496], pol[2508:2496], s, s_sign, result[2508:2496]);
small_alu sa193(acc[2521:2509], pol[2521:2509], s, s_sign, result[2521:2509]);
small_alu sa194(acc[2534:2522], pol[2534:2522], s, s_sign, result[2534:2522]);
small_alu sa195(acc[2547:2535], pol[2547:2535], s, s_sign, result[2547:2535]);
small_alu sa196(acc[2560:2548], pol[2560:2548], s, s_sign, result[2560:2548]);
small_alu sa197(acc[2573:2561], pol[2573:2561], s, s_sign, result[2573:2561]);
small_alu sa198(acc[2586:2574], pol[2586:2574], s, s_sign, result[2586:2574]);
small_alu sa199(acc[2599:2587], pol[2599:2587], s, s_sign, result[2599:2587]);
small_alu sa200(acc[2612:2600], pol[2612:2600], s, s_sign, result[2612:2600]);
small_alu sa201(acc[2625:2613], pol[2625:2613], s, s_sign, result[2625:2613]);
small_alu sa202(acc[2638:2626], pol[2638:2626], s, s_sign, result[2638:2626]);
small_alu sa203(acc[2651:2639], pol[2651:2639], s, s_sign, result[2651:2639]);
small_alu sa204(acc[2664:2652], pol[2664:2652], s, s_sign, result[2664:2652]);
small_alu sa205(acc[2677:2665], pol[2677:2665], s, s_sign, result[2677:2665]);
small_alu sa206(acc[2690:2678], pol[2690:2678], s, s_sign, result[2690:2678]);
small_alu sa207(acc[2703:2691], pol[2703:2691], s, s_sign, result[2703:2691]);
small_alu sa208(acc[2716:2704], pol[2716:2704], s, s_sign, result[2716:2704]);
small_alu sa209(acc[2729:2717], pol[2729:2717], s, s_sign, result[2729:2717]);
small_alu sa210(acc[2742:2730], pol[2742:2730], s, s_sign, result[2742:2730]);
small_alu sa211(acc[2755:2743], pol[2755:2743], s, s_sign, result[2755:2743]);
small_alu sa212(acc[2768:2756], pol[2768:2756], s, s_sign, result[2768:2756]);
small_alu sa213(acc[2781:2769], pol[2781:2769], s, s_sign, result[2781:2769]);
small_alu sa214(acc[2794:2782], pol[2794:2782], s, s_sign, result[2794:2782]);
small_alu sa215(acc[2807:2795], pol[2807:2795], s, s_sign, result[2807:2795]);
small_alu sa216(acc[2820:2808], pol[2820:2808], s, s_sign, result[2820:2808]);
small_alu sa217(acc[2833:2821], pol[2833:2821], s, s_sign, result[2833:2821]);
small_alu sa218(acc[2846:2834], pol[2846:2834], s, s_sign, result[2846:2834]);
small_alu sa219(acc[2859:2847], pol[2859:2847], s, s_sign, result[2859:2847]);
small_alu sa220(acc[2872:2860], pol[2872:2860], s, s_sign, result[2872:2860]);
small_alu sa221(acc[2885:2873], pol[2885:2873], s, s_sign, result[2885:2873]);
small_alu sa222(acc[2898:2886], pol[2898:2886], s, s_sign, result[2898:2886]);
small_alu sa223(acc[2911:2899], pol[2911:2899], s, s_sign, result[2911:2899]);
small_alu sa224(acc[2924:2912], pol[2924:2912], s, s_sign, result[2924:2912]);
small_alu sa225(acc[2937:2925], pol[2937:2925], s, s_sign, result[2937:2925]);
small_alu sa226(acc[2950:2938], pol[2950:2938], s, s_sign, result[2950:2938]);
small_alu sa227(acc[2963:2951], pol[2963:2951], s, s_sign, result[2963:2951]);
small_alu sa228(acc[2976:2964], pol[2976:2964], s, s_sign, result[2976:2964]);
small_alu sa229(acc[2989:2977], pol[2989:2977], s, s_sign, result[2989:2977]);
small_alu sa230(acc[3002:2990], pol[3002:2990], s, s_sign, result[3002:2990]);
small_alu sa231(acc[3015:3003], pol[3015:3003], s, s_sign, result[3015:3003]);
small_alu sa232(acc[3028:3016], pol[3028:3016], s, s_sign, result[3028:3016]);
small_alu sa233(acc[3041:3029], pol[3041:3029], s, s_sign, result[3041:3029]);
small_alu sa234(acc[3054:3042], pol[3054:3042], s, s_sign, result[3054:3042]);
small_alu sa235(acc[3067:3055], pol[3067:3055], s, s_sign, result[3067:3055]);
small_alu sa236(acc[3080:3068], pol[3080:3068], s, s_sign, result[3080:3068]);
small_alu sa237(acc[3093:3081], pol[3093:3081], s, s_sign, result[3093:3081]);
small_alu sa238(acc[3106:3094], pol[3106:3094], s, s_sign, result[3106:3094]);
small_alu sa239(acc[3119:3107], pol[3119:3107], s, s_sign, result[3119:3107]);
small_alu sa240(acc[3132:3120], pol[3132:3120], s, s_sign, result[3132:3120]);
small_alu sa241(acc[3145:3133], pol[3145:3133], s, s_sign, result[3145:3133]);
small_alu sa242(acc[3158:3146], pol[3158:3146], s, s_sign, result[3158:3146]);
small_alu sa243(acc[3171:3159], pol[3171:3159], s, s_sign, result[3171:3159]);
small_alu sa244(acc[3184:3172], pol[3184:3172], s, s_sign, result[3184:3172]);
small_alu sa245(acc[3197:3185], pol[3197:3185], s, s_sign, result[3197:3185]);
small_alu sa246(acc[3210:3198], pol[3210:3198], s, s_sign, result[3210:3198]);
small_alu sa247(acc[3223:3211], pol[3223:3211], s, s_sign, result[3223:3211]);
small_alu sa248(acc[3236:3224], pol[3236:3224], s, s_sign, result[3236:3224]);
small_alu sa249(acc[3249:3237], pol[3249:3237], s, s_sign, result[3249:3237]);
small_alu sa250(acc[3262:3250], pol[3262:3250], s, s_sign, result[3262:3250]);
small_alu sa251(acc[3275:3263], pol[3275:3263], s, s_sign, result[3275:3263]);
small_alu sa252(acc[3288:3276], pol[3288:3276], s, s_sign, result[3288:3276]);
small_alu sa253(acc[3301:3289], pol[3301:3289], s, s_sign, result[3301:3289]);
small_alu sa254(acc[3314:3302], pol[3314:3302], s, s_sign, result[3314:3302]);
small_alu sa255(acc[3327:3315], pol[3327:3315], s, s_sign, result[3327:3315]);

endmodule
