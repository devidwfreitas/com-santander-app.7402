package android.support.graphics.drawable;

import android.graphics.Path;
import android.util.Log;

public class PathParser$PathDataNode {
  float[] params;
  
  char type;
  
  PathParser$PathDataNode(char paramChar, float[] paramArrayOffloat) {
    this.type = paramChar;
    this.params = paramArrayOffloat;
  }
  
  PathParser$PathDataNode(PathParser$PathDataNode paramPathParser$PathDataNode) {
    this.type = paramPathParser$PathDataNode.type;
    this.params = PathParser.copyOfRange(paramPathParser$PathDataNode.params, 0, paramPathParser$PathDataNode.params.length);
  }
  
  private static void addCommand(Path paramPath, float[] paramArrayOffloat1, char paramChar1, char paramChar2, float[] paramArrayOffloat2) {
    // Byte code:
    //   0: aload_1
    //   1: iconst_0
    //   2: faload
    //   3: fstore #10
    //   5: aload_1
    //   6: iconst_1
    //   7: faload
    //   8: fstore #9
    //   10: aload_1
    //   11: iconst_2
    //   12: faload
    //   13: fstore #8
    //   15: aload_1
    //   16: iconst_3
    //   17: faload
    //   18: fstore #7
    //   20: aload_1
    //   21: iconst_4
    //   22: faload
    //   23: fstore #5
    //   25: aload_1
    //   26: iconst_5
    //   27: faload
    //   28: fstore #6
    //   30: iload_3
    //   31: lookupswitch default -> 200, 65 -> 478, 67 -> 465, 72 -> 459, 76 -> 453, 77 -> 453, 81 -> 472, 83 -> 472, 84 -> 453, 86 -> 459, 90 -> 419, 97 -> 478, 99 -> 465, 104 -> 459, 108 -> 453, 109 -> 453, 113 -> 472, 115 -> 472, 116 -> 453, 118 -> 459, 122 -> 419
    //   200: iconst_2
    //   201: istore #14
    //   203: iconst_0
    //   204: istore #16
    //   206: iload_2
    //   207: istore #15
    //   209: iload #16
    //   211: istore_2
    //   212: iload_2
    //   213: aload #4
    //   215: arraylength
    //   216: if_icmpge -> 2217
    //   219: iload_3
    //   220: lookupswitch default -> 376, 65 -> 2074, 67 -> 1122, 72 -> 876, 76 -> 776, 77 -> 593, 81 -> 1602, 83 -> 1366, 84 -> 1810, 86 -> 960, 97 -> 1919, 99 -> 1003, 104 -> 827, 108 -> 707, 109 -> 485, 113 -> 1495, 115 -> 1209, 116 -> 1677, 118 -> 915
    //   376: fload #6
    //   378: fstore #11
    //   380: fload #7
    //   382: fstore #6
    //   384: fload #5
    //   386: fstore #7
    //   388: fload #11
    //   390: fstore #5
    //   392: iload_2
    //   393: iload #14
    //   395: iadd
    //   396: istore_2
    //   397: fload #7
    //   399: fstore #11
    //   401: iload_3
    //   402: istore #15
    //   404: fload #6
    //   406: fstore #7
    //   408: fload #5
    //   410: fstore #6
    //   412: fload #11
    //   414: fstore #5
    //   416: goto -> 212
    //   419: aload_0
    //   420: invokevirtual close : ()V
    //   423: aload_0
    //   424: fload #5
    //   426: fload #6
    //   428: invokevirtual moveTo : (FF)V
    //   431: fload #6
    //   433: fstore #7
    //   435: fload #5
    //   437: fstore #8
    //   439: fload #6
    //   441: fstore #9
    //   443: fload #5
    //   445: fstore #10
    //   447: iconst_2
    //   448: istore #14
    //   450: goto -> 203
    //   453: iconst_2
    //   454: istore #14
    //   456: goto -> 203
    //   459: iconst_1
    //   460: istore #14
    //   462: goto -> 203
    //   465: bipush #6
    //   467: istore #14
    //   469: goto -> 203
    //   472: iconst_4
    //   473: istore #14
    //   475: goto -> 203
    //   478: bipush #7
    //   480: istore #14
    //   482: goto -> 203
    //   485: fload #10
    //   487: aload #4
    //   489: iload_2
    //   490: iconst_0
    //   491: iadd
    //   492: faload
    //   493: fadd
    //   494: fstore #10
    //   496: aload #4
    //   498: iload_2
    //   499: iconst_1
    //   500: iadd
    //   501: faload
    //   502: fload #9
    //   504: fadd
    //   505: fstore #9
    //   507: iload_2
    //   508: ifle -> 546
    //   511: aload_0
    //   512: aload #4
    //   514: iload_2
    //   515: iconst_0
    //   516: iadd
    //   517: faload
    //   518: aload #4
    //   520: iload_2
    //   521: iconst_1
    //   522: iadd
    //   523: faload
    //   524: invokevirtual rLineTo : (FF)V
    //   527: fload #5
    //   529: fstore #11
    //   531: fload #6
    //   533: fstore #5
    //   535: fload #7
    //   537: fstore #6
    //   539: fload #11
    //   541: fstore #7
    //   543: goto -> 392
    //   546: aload_0
    //   547: aload #4
    //   549: iload_2
    //   550: iconst_0
    //   551: iadd
    //   552: faload
    //   553: aload #4
    //   555: iload_2
    //   556: iconst_1
    //   557: iadd
    //   558: faload
    //   559: invokevirtual rMoveTo : (FF)V
    //   562: fload #9
    //   564: fstore #12
    //   566: fload #10
    //   568: fstore #11
    //   570: fload #7
    //   572: fstore #6
    //   574: fload #9
    //   576: fstore #5
    //   578: fload #10
    //   580: fstore #7
    //   582: fload #12
    //   584: fstore #9
    //   586: fload #11
    //   588: fstore #10
    //   590: goto -> 392
    //   593: aload #4
    //   595: iload_2
    //   596: iconst_0
    //   597: iadd
    //   598: faload
    //   599: fstore #9
    //   601: aload #4
    //   603: iload_2
    //   604: iconst_1
    //   605: iadd
    //   606: faload
    //   607: fstore #10
    //   609: iload_2
    //   610: ifle -> 660
    //   613: aload_0
    //   614: aload #4
    //   616: iload_2
    //   617: iconst_0
    //   618: iadd
    //   619: faload
    //   620: aload #4
    //   622: iload_2
    //   623: iconst_1
    //   624: iadd
    //   625: faload
    //   626: invokevirtual lineTo : (FF)V
    //   629: fload #9
    //   631: fstore #11
    //   633: fload #5
    //   635: fstore #9
    //   637: fload #6
    //   639: fstore #5
    //   641: fload #7
    //   643: fstore #6
    //   645: fload #9
    //   647: fstore #7
    //   649: fload #10
    //   651: fstore #9
    //   653: fload #11
    //   655: fstore #10
    //   657: goto -> 392
    //   660: aload_0
    //   661: aload #4
    //   663: iload_2
    //   664: iconst_0
    //   665: iadd
    //   666: faload
    //   667: aload #4
    //   669: iload_2
    //   670: iconst_1
    //   671: iadd
    //   672: faload
    //   673: invokevirtual moveTo : (FF)V
    //   676: fload #10
    //   678: fstore #12
    //   680: fload #9
    //   682: fstore #11
    //   684: fload #7
    //   686: fstore #6
    //   688: fload #10
    //   690: fstore #5
    //   692: fload #9
    //   694: fstore #7
    //   696: fload #12
    //   698: fstore #9
    //   700: fload #11
    //   702: fstore #10
    //   704: goto -> 392
    //   707: aload_0
    //   708: aload #4
    //   710: iload_2
    //   711: iconst_0
    //   712: iadd
    //   713: faload
    //   714: aload #4
    //   716: iload_2
    //   717: iconst_1
    //   718: iadd
    //   719: faload
    //   720: invokevirtual rLineTo : (FF)V
    //   723: aload #4
    //   725: iload_2
    //   726: iconst_0
    //   727: iadd
    //   728: faload
    //   729: fstore #12
    //   731: aload #4
    //   733: iload_2
    //   734: iconst_1
    //   735: iadd
    //   736: faload
    //   737: fstore #11
    //   739: fload #11
    //   741: fload #9
    //   743: fadd
    //   744: fstore #11
    //   746: fload #10
    //   748: fload #12
    //   750: fadd
    //   751: fstore #10
    //   753: fload #5
    //   755: fstore #9
    //   757: fload #6
    //   759: fstore #5
    //   761: fload #7
    //   763: fstore #6
    //   765: fload #9
    //   767: fstore #7
    //   769: fload #11
    //   771: fstore #9
    //   773: goto -> 392
    //   776: aload_0
    //   777: aload #4
    //   779: iload_2
    //   780: iconst_0
    //   781: iadd
    //   782: faload
    //   783: aload #4
    //   785: iload_2
    //   786: iconst_1
    //   787: iadd
    //   788: faload
    //   789: invokevirtual lineTo : (FF)V
    //   792: aload #4
    //   794: iload_2
    //   795: iconst_0
    //   796: iadd
    //   797: faload
    //   798: fstore #10
    //   800: aload #4
    //   802: iload_2
    //   803: iconst_1
    //   804: iadd
    //   805: faload
    //   806: fstore #9
    //   808: fload #5
    //   810: fstore #11
    //   812: fload #6
    //   814: fstore #5
    //   816: fload #7
    //   818: fstore #6
    //   820: fload #11
    //   822: fstore #7
    //   824: goto -> 392
    //   827: aload_0
    //   828: aload #4
    //   830: iload_2
    //   831: iconst_0
    //   832: iadd
    //   833: faload
    //   834: fconst_0
    //   835: invokevirtual rLineTo : (FF)V
    //   838: aload #4
    //   840: iload_2
    //   841: iconst_0
    //   842: iadd
    //   843: faload
    //   844: fstore #11
    //   846: fload #10
    //   848: fload #11
    //   850: fadd
    //   851: fstore #11
    //   853: fload #5
    //   855: fstore #10
    //   857: fload #6
    //   859: fstore #5
    //   861: fload #7
    //   863: fstore #6
    //   865: fload #10
    //   867: fstore #7
    //   869: fload #11
    //   871: fstore #10
    //   873: goto -> 392
    //   876: aload_0
    //   877: aload #4
    //   879: iload_2
    //   880: iconst_0
    //   881: iadd
    //   882: faload
    //   883: fload #9
    //   885: invokevirtual lineTo : (FF)V
    //   888: aload #4
    //   890: iload_2
    //   891: iconst_0
    //   892: iadd
    //   893: faload
    //   894: fstore #10
    //   896: fload #5
    //   898: fstore #11
    //   900: fload #6
    //   902: fstore #5
    //   904: fload #7
    //   906: fstore #6
    //   908: fload #11
    //   910: fstore #7
    //   912: goto -> 392
    //   915: aload_0
    //   916: fconst_0
    //   917: aload #4
    //   919: iload_2
    //   920: iconst_0
    //   921: iadd
    //   922: faload
    //   923: invokevirtual rLineTo : (FF)V
    //   926: aload #4
    //   928: iload_2
    //   929: iconst_0
    //   930: iadd
    //   931: faload
    //   932: fstore #12
    //   934: fload #5
    //   936: fstore #11
    //   938: fload #12
    //   940: fload #9
    //   942: fadd
    //   943: fstore #9
    //   945: fload #6
    //   947: fstore #5
    //   949: fload #7
    //   951: fstore #6
    //   953: fload #11
    //   955: fstore #7
    //   957: goto -> 392
    //   960: aload_0
    //   961: fload #10
    //   963: aload #4
    //   965: iload_2
    //   966: iconst_0
    //   967: iadd
    //   968: faload
    //   969: invokevirtual lineTo : (FF)V
    //   972: aload #4
    //   974: iload_2
    //   975: iconst_0
    //   976: iadd
    //   977: faload
    //   978: fstore #11
    //   980: fload #5
    //   982: fstore #9
    //   984: fload #6
    //   986: fstore #5
    //   988: fload #7
    //   990: fstore #6
    //   992: fload #9
    //   994: fstore #7
    //   996: fload #11
    //   998: fstore #9
    //   1000: goto -> 392
    //   1003: aload_0
    //   1004: aload #4
    //   1006: iload_2
    //   1007: iconst_0
    //   1008: iadd
    //   1009: faload
    //   1010: aload #4
    //   1012: iload_2
    //   1013: iconst_1
    //   1014: iadd
    //   1015: faload
    //   1016: aload #4
    //   1018: iload_2
    //   1019: iconst_2
    //   1020: iadd
    //   1021: faload
    //   1022: aload #4
    //   1024: iload_2
    //   1025: iconst_3
    //   1026: iadd
    //   1027: faload
    //   1028: aload #4
    //   1030: iload_2
    //   1031: iconst_4
    //   1032: iadd
    //   1033: faload
    //   1034: aload #4
    //   1036: iload_2
    //   1037: iconst_5
    //   1038: iadd
    //   1039: faload
    //   1040: invokevirtual rCubicTo : (FFFFFF)V
    //   1043: aload #4
    //   1045: iload_2
    //   1046: iconst_2
    //   1047: iadd
    //   1048: faload
    //   1049: fstore #8
    //   1051: aload #4
    //   1053: iload_2
    //   1054: iconst_3
    //   1055: iadd
    //   1056: faload
    //   1057: fstore #12
    //   1059: aload #4
    //   1061: iload_2
    //   1062: iconst_4
    //   1063: iadd
    //   1064: faload
    //   1065: fstore #7
    //   1067: aload #4
    //   1069: iload_2
    //   1070: iconst_5
    //   1071: iadd
    //   1072: faload
    //   1073: fstore #11
    //   1075: fload #10
    //   1077: fload #8
    //   1079: fadd
    //   1080: fstore #8
    //   1082: fload #11
    //   1084: fload #9
    //   1086: fadd
    //   1087: fstore #11
    //   1089: fload #10
    //   1091: fload #7
    //   1093: fadd
    //   1094: fstore #10
    //   1096: fload #5
    //   1098: fstore #7
    //   1100: fload #12
    //   1102: fload #9
    //   1104: fadd
    //   1105: fstore #9
    //   1107: fload #6
    //   1109: fstore #5
    //   1111: fload #9
    //   1113: fstore #6
    //   1115: fload #11
    //   1117: fstore #9
    //   1119: goto -> 392
    //   1122: aload_0
    //   1123: aload #4
    //   1125: iload_2
    //   1126: iconst_0
    //   1127: iadd
    //   1128: faload
    //   1129: aload #4
    //   1131: iload_2
    //   1132: iconst_1
    //   1133: iadd
    //   1134: faload
    //   1135: aload #4
    //   1137: iload_2
    //   1138: iconst_2
    //   1139: iadd
    //   1140: faload
    //   1141: aload #4
    //   1143: iload_2
    //   1144: iconst_3
    //   1145: iadd
    //   1146: faload
    //   1147: aload #4
    //   1149: iload_2
    //   1150: iconst_4
    //   1151: iadd
    //   1152: faload
    //   1153: aload #4
    //   1155: iload_2
    //   1156: iconst_5
    //   1157: iadd
    //   1158: faload
    //   1159: invokevirtual cubicTo : (FFFFFF)V
    //   1162: aload #4
    //   1164: iload_2
    //   1165: iconst_4
    //   1166: iadd
    //   1167: faload
    //   1168: fstore #10
    //   1170: aload #4
    //   1172: iload_2
    //   1173: iconst_5
    //   1174: iadd
    //   1175: faload
    //   1176: fstore #9
    //   1178: aload #4
    //   1180: iload_2
    //   1181: iconst_2
    //   1182: iadd
    //   1183: faload
    //   1184: fstore #8
    //   1186: aload #4
    //   1188: iload_2
    //   1189: iconst_3
    //   1190: iadd
    //   1191: faload
    //   1192: fstore #11
    //   1194: fload #5
    //   1196: fstore #7
    //   1198: fload #6
    //   1200: fstore #5
    //   1202: fload #11
    //   1204: fstore #6
    //   1206: goto -> 392
    //   1209: iload #15
    //   1211: bipush #99
    //   1213: if_icmpeq -> 1237
    //   1216: iload #15
    //   1218: bipush #115
    //   1220: if_icmpeq -> 1237
    //   1223: iload #15
    //   1225: bipush #67
    //   1227: if_icmpeq -> 1237
    //   1230: iload #15
    //   1232: bipush #83
    //   1234: if_icmpne -> 2264
    //   1237: fload #10
    //   1239: fload #8
    //   1241: fsub
    //   1242: fstore #11
    //   1244: fload #9
    //   1246: fload #7
    //   1248: fsub
    //   1249: fstore #8
    //   1251: fload #11
    //   1253: fstore #7
    //   1255: aload_0
    //   1256: fload #7
    //   1258: fload #8
    //   1260: aload #4
    //   1262: iload_2
    //   1263: iconst_0
    //   1264: iadd
    //   1265: faload
    //   1266: aload #4
    //   1268: iload_2
    //   1269: iconst_1
    //   1270: iadd
    //   1271: faload
    //   1272: aload #4
    //   1274: iload_2
    //   1275: iconst_2
    //   1276: iadd
    //   1277: faload
    //   1278: aload #4
    //   1280: iload_2
    //   1281: iconst_3
    //   1282: iadd
    //   1283: faload
    //   1284: invokevirtual rCubicTo : (FFFFFF)V
    //   1287: aload #4
    //   1289: iload_2
    //   1290: iconst_0
    //   1291: iadd
    //   1292: faload
    //   1293: fstore #8
    //   1295: aload #4
    //   1297: iload_2
    //   1298: iconst_1
    //   1299: iadd
    //   1300: faload
    //   1301: fstore #12
    //   1303: aload #4
    //   1305: iload_2
    //   1306: iconst_2
    //   1307: iadd
    //   1308: faload
    //   1309: fstore #7
    //   1311: aload #4
    //   1313: iload_2
    //   1314: iconst_3
    //   1315: iadd
    //   1316: faload
    //   1317: fstore #11
    //   1319: fload #10
    //   1321: fload #8
    //   1323: fadd
    //   1324: fstore #8
    //   1326: fload #11
    //   1328: fload #9
    //   1330: fadd
    //   1331: fstore #11
    //   1333: fload #10
    //   1335: fload #7
    //   1337: fadd
    //   1338: fstore #10
    //   1340: fload #5
    //   1342: fstore #7
    //   1344: fload #12
    //   1346: fload #9
    //   1348: fadd
    //   1349: fstore #9
    //   1351: fload #6
    //   1353: fstore #5
    //   1355: fload #9
    //   1357: fstore #6
    //   1359: fload #11
    //   1361: fstore #9
    //   1363: goto -> 392
    //   1366: iload #15
    //   1368: bipush #99
    //   1370: if_icmpeq -> 1394
    //   1373: iload #15
    //   1375: bipush #115
    //   1377: if_icmpeq -> 1394
    //   1380: iload #15
    //   1382: bipush #67
    //   1384: if_icmpeq -> 1394
    //   1387: iload #15
    //   1389: bipush #83
    //   1391: if_icmpne -> 2257
    //   1394: fconst_2
    //   1395: fload #10
    //   1397: fmul
    //   1398: fload #8
    //   1400: fsub
    //   1401: fstore #8
    //   1403: fconst_2
    //   1404: fload #9
    //   1406: fmul
    //   1407: fload #7
    //   1409: fsub
    //   1410: fstore #9
    //   1412: fload #8
    //   1414: fstore #7
    //   1416: aload_0
    //   1417: fload #7
    //   1419: fload #9
    //   1421: aload #4
    //   1423: iload_2
    //   1424: iconst_0
    //   1425: iadd
    //   1426: faload
    //   1427: aload #4
    //   1429: iload_2
    //   1430: iconst_1
    //   1431: iadd
    //   1432: faload
    //   1433: aload #4
    //   1435: iload_2
    //   1436: iconst_2
    //   1437: iadd
    //   1438: faload
    //   1439: aload #4
    //   1441: iload_2
    //   1442: iconst_3
    //   1443: iadd
    //   1444: faload
    //   1445: invokevirtual cubicTo : (FFFFFF)V
    //   1448: aload #4
    //   1450: iload_2
    //   1451: iconst_0
    //   1452: iadd
    //   1453: faload
    //   1454: fstore #8
    //   1456: aload #4
    //   1458: iload_2
    //   1459: iconst_1
    //   1460: iadd
    //   1461: faload
    //   1462: fstore #11
    //   1464: aload #4
    //   1466: iload_2
    //   1467: iconst_2
    //   1468: iadd
    //   1469: faload
    //   1470: fstore #10
    //   1472: aload #4
    //   1474: iload_2
    //   1475: iconst_3
    //   1476: iadd
    //   1477: faload
    //   1478: fstore #9
    //   1480: fload #5
    //   1482: fstore #7
    //   1484: fload #6
    //   1486: fstore #5
    //   1488: fload #11
    //   1490: fstore #6
    //   1492: goto -> 392
    //   1495: aload_0
    //   1496: aload #4
    //   1498: iload_2
    //   1499: iconst_0
    //   1500: iadd
    //   1501: faload
    //   1502: aload #4
    //   1504: iload_2
    //   1505: iconst_1
    //   1506: iadd
    //   1507: faload
    //   1508: aload #4
    //   1510: iload_2
    //   1511: iconst_2
    //   1512: iadd
    //   1513: faload
    //   1514: aload #4
    //   1516: iload_2
    //   1517: iconst_3
    //   1518: iadd
    //   1519: faload
    //   1520: invokevirtual rQuadTo : (FFFF)V
    //   1523: aload #4
    //   1525: iload_2
    //   1526: iconst_0
    //   1527: iadd
    //   1528: faload
    //   1529: fstore #8
    //   1531: aload #4
    //   1533: iload_2
    //   1534: iconst_1
    //   1535: iadd
    //   1536: faload
    //   1537: fstore #12
    //   1539: aload #4
    //   1541: iload_2
    //   1542: iconst_2
    //   1543: iadd
    //   1544: faload
    //   1545: fstore #7
    //   1547: aload #4
    //   1549: iload_2
    //   1550: iconst_3
    //   1551: iadd
    //   1552: faload
    //   1553: fstore #11
    //   1555: fload #10
    //   1557: fload #8
    //   1559: fadd
    //   1560: fstore #8
    //   1562: fload #11
    //   1564: fload #9
    //   1566: fadd
    //   1567: fstore #11
    //   1569: fload #10
    //   1571: fload #7
    //   1573: fadd
    //   1574: fstore #10
    //   1576: fload #5
    //   1578: fstore #7
    //   1580: fload #12
    //   1582: fload #9
    //   1584: fadd
    //   1585: fstore #9
    //   1587: fload #6
    //   1589: fstore #5
    //   1591: fload #9
    //   1593: fstore #6
    //   1595: fload #11
    //   1597: fstore #9
    //   1599: goto -> 392
    //   1602: aload_0
    //   1603: aload #4
    //   1605: iload_2
    //   1606: iconst_0
    //   1607: iadd
    //   1608: faload
    //   1609: aload #4
    //   1611: iload_2
    //   1612: iconst_1
    //   1613: iadd
    //   1614: faload
    //   1615: aload #4
    //   1617: iload_2
    //   1618: iconst_2
    //   1619: iadd
    //   1620: faload
    //   1621: aload #4
    //   1623: iload_2
    //   1624: iconst_3
    //   1625: iadd
    //   1626: faload
    //   1627: invokevirtual quadTo : (FFFF)V
    //   1630: aload #4
    //   1632: iload_2
    //   1633: iconst_0
    //   1634: iadd
    //   1635: faload
    //   1636: fstore #8
    //   1638: aload #4
    //   1640: iload_2
    //   1641: iconst_1
    //   1642: iadd
    //   1643: faload
    //   1644: fstore #11
    //   1646: aload #4
    //   1648: iload_2
    //   1649: iconst_2
    //   1650: iadd
    //   1651: faload
    //   1652: fstore #10
    //   1654: aload #4
    //   1656: iload_2
    //   1657: iconst_3
    //   1658: iadd
    //   1659: faload
    //   1660: fstore #9
    //   1662: fload #5
    //   1664: fstore #7
    //   1666: fload #6
    //   1668: fstore #5
    //   1670: fload #11
    //   1672: fstore #6
    //   1674: goto -> 392
    //   1677: iload #15
    //   1679: bipush #113
    //   1681: if_icmpeq -> 1705
    //   1684: iload #15
    //   1686: bipush #116
    //   1688: if_icmpeq -> 1705
    //   1691: iload #15
    //   1693: bipush #81
    //   1695: if_icmpeq -> 1705
    //   1698: iload #15
    //   1700: bipush #84
    //   1702: if_icmpne -> 2248
    //   1705: fload #10
    //   1707: fload #8
    //   1709: fsub
    //   1710: fstore #8
    //   1712: fload #9
    //   1714: fload #7
    //   1716: fsub
    //   1717: fstore #7
    //   1719: aload_0
    //   1720: fload #8
    //   1722: fload #7
    //   1724: aload #4
    //   1726: iload_2
    //   1727: iconst_0
    //   1728: iadd
    //   1729: faload
    //   1730: aload #4
    //   1732: iload_2
    //   1733: iconst_1
    //   1734: iadd
    //   1735: faload
    //   1736: invokevirtual rQuadTo : (FFFF)V
    //   1739: aload #4
    //   1741: iload_2
    //   1742: iconst_0
    //   1743: iadd
    //   1744: faload
    //   1745: fstore #13
    //   1747: aload #4
    //   1749: iload_2
    //   1750: iconst_1
    //   1751: iadd
    //   1752: faload
    //   1753: fstore #12
    //   1755: fload #10
    //   1757: fload #8
    //   1759: fadd
    //   1760: fstore #11
    //   1762: fload #12
    //   1764: fload #9
    //   1766: fadd
    //   1767: fstore #12
    //   1769: fload #10
    //   1771: fload #13
    //   1773: fadd
    //   1774: fstore #10
    //   1776: fload #5
    //   1778: fstore #8
    //   1780: fload #7
    //   1782: fload #9
    //   1784: fadd
    //   1785: fstore #7
    //   1787: fload #6
    //   1789: fstore #5
    //   1791: fload #7
    //   1793: fstore #6
    //   1795: fload #8
    //   1797: fstore #7
    //   1799: fload #11
    //   1801: fstore #8
    //   1803: fload #12
    //   1805: fstore #9
    //   1807: goto -> 392
    //   1810: iload #15
    //   1812: bipush #113
    //   1814: if_icmpeq -> 1846
    //   1817: iload #15
    //   1819: bipush #116
    //   1821: if_icmpeq -> 1846
    //   1824: iload #15
    //   1826: bipush #81
    //   1828: if_icmpeq -> 1846
    //   1831: fload #9
    //   1833: fstore #12
    //   1835: fload #10
    //   1837: fstore #11
    //   1839: iload #15
    //   1841: bipush #84
    //   1843: if_icmpne -> 1864
    //   1846: fconst_2
    //   1847: fload #10
    //   1849: fmul
    //   1850: fload #8
    //   1852: fsub
    //   1853: fstore #11
    //   1855: fconst_2
    //   1856: fload #9
    //   1858: fmul
    //   1859: fload #7
    //   1861: fsub
    //   1862: fstore #12
    //   1864: aload_0
    //   1865: fload #11
    //   1867: fload #12
    //   1869: aload #4
    //   1871: iload_2
    //   1872: iconst_0
    //   1873: iadd
    //   1874: faload
    //   1875: aload #4
    //   1877: iload_2
    //   1878: iconst_1
    //   1879: iadd
    //   1880: faload
    //   1881: invokevirtual quadTo : (FFFF)V
    //   1884: aload #4
    //   1886: iload_2
    //   1887: iconst_0
    //   1888: iadd
    //   1889: faload
    //   1890: fstore #10
    //   1892: aload #4
    //   1894: iload_2
    //   1895: iconst_1
    //   1896: iadd
    //   1897: faload
    //   1898: fstore #9
    //   1900: fload #11
    //   1902: fstore #8
    //   1904: fload #5
    //   1906: fstore #7
    //   1908: fload #6
    //   1910: fstore #5
    //   1912: fload #12
    //   1914: fstore #6
    //   1916: goto -> 392
    //   1919: aload #4
    //   1921: iload_2
    //   1922: iconst_5
    //   1923: iadd
    //   1924: faload
    //   1925: fstore #7
    //   1927: aload #4
    //   1929: iload_2
    //   1930: bipush #6
    //   1932: iadd
    //   1933: faload
    //   1934: fstore #8
    //   1936: aload #4
    //   1938: iload_2
    //   1939: iconst_0
    //   1940: iadd
    //   1941: faload
    //   1942: fstore #11
    //   1944: aload #4
    //   1946: iload_2
    //   1947: iconst_1
    //   1948: iadd
    //   1949: faload
    //   1950: fstore #12
    //   1952: aload #4
    //   1954: iload_2
    //   1955: iconst_2
    //   1956: iadd
    //   1957: faload
    //   1958: fstore #13
    //   1960: aload #4
    //   1962: iload_2
    //   1963: iconst_3
    //   1964: iadd
    //   1965: faload
    //   1966: fconst_0
    //   1967: fcmpl
    //   1968: ifeq -> 2062
    //   1971: iconst_1
    //   1972: istore #17
    //   1974: aload #4
    //   1976: iload_2
    //   1977: iconst_4
    //   1978: iadd
    //   1979: faload
    //   1980: fconst_0
    //   1981: fcmpl
    //   1982: ifeq -> 2068
    //   1985: iconst_1
    //   1986: istore #18
    //   1988: aload_0
    //   1989: fload #10
    //   1991: fload #9
    //   1993: fload #7
    //   1995: fload #10
    //   1997: fadd
    //   1998: fload #8
    //   2000: fload #9
    //   2002: fadd
    //   2003: fload #11
    //   2005: fload #12
    //   2007: fload #13
    //   2009: iload #17
    //   2011: iload #18
    //   2013: invokestatic drawArc : (Landroid/graphics/Path;FFFFFFFZZ)V
    //   2016: fload #10
    //   2018: aload #4
    //   2020: iload_2
    //   2021: iconst_5
    //   2022: iadd
    //   2023: faload
    //   2024: fadd
    //   2025: fstore #10
    //   2027: aload #4
    //   2029: iload_2
    //   2030: bipush #6
    //   2032: iadd
    //   2033: faload
    //   2034: fload #9
    //   2036: fadd
    //   2037: fstore #11
    //   2039: fload #5
    //   2041: fstore #7
    //   2043: fload #10
    //   2045: fstore #8
    //   2047: fload #11
    //   2049: fstore #9
    //   2051: fload #6
    //   2053: fstore #5
    //   2055: fload #11
    //   2057: fstore #6
    //   2059: goto -> 392
    //   2062: iconst_0
    //   2063: istore #17
    //   2065: goto -> 1974
    //   2068: iconst_0
    //   2069: istore #18
    //   2071: goto -> 1988
    //   2074: aload #4
    //   2076: iload_2
    //   2077: iconst_5
    //   2078: iadd
    //   2079: faload
    //   2080: fstore #7
    //   2082: aload #4
    //   2084: iload_2
    //   2085: bipush #6
    //   2087: iadd
    //   2088: faload
    //   2089: fstore #8
    //   2091: aload #4
    //   2093: iload_2
    //   2094: iconst_0
    //   2095: iadd
    //   2096: faload
    //   2097: fstore #11
    //   2099: aload #4
    //   2101: iload_2
    //   2102: iconst_1
    //   2103: iadd
    //   2104: faload
    //   2105: fstore #12
    //   2107: aload #4
    //   2109: iload_2
    //   2110: iconst_2
    //   2111: iadd
    //   2112: faload
    //   2113: fstore #13
    //   2115: aload #4
    //   2117: iload_2
    //   2118: iconst_3
    //   2119: iadd
    //   2120: faload
    //   2121: fconst_0
    //   2122: fcmpl
    //   2123: ifeq -> 2205
    //   2126: iconst_1
    //   2127: istore #17
    //   2129: aload #4
    //   2131: iload_2
    //   2132: iconst_4
    //   2133: iadd
    //   2134: faload
    //   2135: fconst_0
    //   2136: fcmpl
    //   2137: ifeq -> 2211
    //   2140: iconst_1
    //   2141: istore #18
    //   2143: aload_0
    //   2144: fload #10
    //   2146: fload #9
    //   2148: fload #7
    //   2150: fload #8
    //   2152: fload #11
    //   2154: fload #12
    //   2156: fload #13
    //   2158: iload #17
    //   2160: iload #18
    //   2162: invokestatic drawArc : (Landroid/graphics/Path;FFFFFFFZZ)V
    //   2165: aload #4
    //   2167: iload_2
    //   2168: iconst_5
    //   2169: iadd
    //   2170: faload
    //   2171: fstore #10
    //   2173: aload #4
    //   2175: iload_2
    //   2176: bipush #6
    //   2178: iadd
    //   2179: faload
    //   2180: fstore #11
    //   2182: fload #5
    //   2184: fstore #7
    //   2186: fload #10
    //   2188: fstore #8
    //   2190: fload #11
    //   2192: fstore #9
    //   2194: fload #6
    //   2196: fstore #5
    //   2198: fload #11
    //   2200: fstore #6
    //   2202: goto -> 392
    //   2205: iconst_0
    //   2206: istore #17
    //   2208: goto -> 2129
    //   2211: iconst_0
    //   2212: istore #18
    //   2214: goto -> 2143
    //   2217: aload_1
    //   2218: iconst_0
    //   2219: fload #10
    //   2221: fastore
    //   2222: aload_1
    //   2223: iconst_1
    //   2224: fload #9
    //   2226: fastore
    //   2227: aload_1
    //   2228: iconst_2
    //   2229: fload #8
    //   2231: fastore
    //   2232: aload_1
    //   2233: iconst_3
    //   2234: fload #7
    //   2236: fastore
    //   2237: aload_1
    //   2238: iconst_4
    //   2239: fload #5
    //   2241: fastore
    //   2242: aload_1
    //   2243: iconst_5
    //   2244: fload #6
    //   2246: fastore
    //   2247: return
    //   2248: fconst_0
    //   2249: fstore #7
    //   2251: fconst_0
    //   2252: fstore #8
    //   2254: goto -> 1719
    //   2257: fload #10
    //   2259: fstore #7
    //   2261: goto -> 1416
    //   2264: fconst_0
    //   2265: fstore #8
    //   2267: fconst_0
    //   2268: fstore #7
    //   2270: goto -> 1255
  }
  
  private static void arcToBezier(Path paramPath, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, double paramDouble8, double paramDouble9) {
    int j = (int)Math.ceil(Math.abs(4.0D * paramDouble9 / Math.PI));
    double d4 = Math.cos(paramDouble7);
    double d5 = Math.sin(paramDouble7);
    paramDouble7 = Math.cos(paramDouble8);
    double d2 = Math.sin(paramDouble8);
    double d3 = -paramDouble3;
    double d1 = -paramDouble3;
    double d6 = paramDouble9 / j;
    int i = 0;
    d1 = d2 * d1 * d5 + paramDouble7 * paramDouble4 * d4;
    d2 = d3 * d4 * d2 - paramDouble4 * d5 * paramDouble7;
    paramDouble9 = paramDouble8;
    paramDouble8 = paramDouble6;
    paramDouble7 = paramDouble5;
    paramDouble6 = d2;
    for (paramDouble5 = d1; i < j; paramDouble5 = d3) {
      double d7 = paramDouble9 + d6;
      d3 = Math.sin(d7);
      double d9 = Math.cos(d7);
      d1 = paramDouble3 * d4 * d9 + paramDouble1 - paramDouble4 * d5 * d3;
      d2 = paramDouble4 * d4 * d3 + paramDouble3 * d5 * d9 + paramDouble2;
      double d8 = -paramDouble3 * d4 * d3 - paramDouble4 * d5 * d9;
      d3 = d9 * paramDouble4 * d4 + d3 * -paramDouble3 * d5;
      d9 = Math.tan((d7 - paramDouble9) / 2.0D);
      paramDouble9 = Math.sin(d7 - paramDouble9);
      paramDouble9 = (Math.sqrt(d9 * 3.0D * d9 + 4.0D) - 1.0D) * paramDouble9 / 3.0D;
      paramPath.rLineTo(0.0F, 0.0F);
      paramPath.cubicTo((float)(paramDouble6 * paramDouble9 + paramDouble7), (float)(paramDouble8 + paramDouble5 * paramDouble9), (float)(d1 - paramDouble9 * d8), (float)(d2 - paramDouble9 * d3), (float)d1, (float)d2);
      i++;
      paramDouble6 = d8;
      paramDouble9 = d7;
      paramDouble8 = d2;
      paramDouble7 = d1;
    } 
  }
  
  private static void drawArc(Path paramPath, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, boolean paramBoolean1, boolean paramBoolean2) {
    double d5 = Math.toRadians(paramFloat7);
    double d6 = Math.cos(d5);
    double d7 = Math.sin(d5);
    double d8 = (paramFloat1 * d6 + paramFloat2 * d7) / paramFloat5;
    double d9 = (-paramFloat1 * d7 + paramFloat2 * d6) / paramFloat6;
    double d1 = (paramFloat3 * d6 + paramFloat4 * d7) / paramFloat5;
    double d4 = (-paramFloat3 * d7 + paramFloat4 * d6) / paramFloat6;
    double d11 = d8 - d1;
    double d10 = d9 - d4;
    double d3 = (d8 + d1) / 2.0D;
    double d2 = (d9 + d4) / 2.0D;
    double d12 = d11 * d11 + d10 * d10;
    if (d12 == 0.0D) {
      Log.w("PathParser", " Points are coincident");
      return;
    } 
    double d13 = 1.0D / d12 - 0.25D;
    if (d13 < 0.0D) {
      Log.w("PathParser", "Points are too far apart " + d12);
      float f = (float)(Math.sqrt(d12) / 1.99999D);
      drawArc(paramPath, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5 * f, paramFloat6 * f, paramFloat7, paramBoolean1, paramBoolean2);
      return;
    } 
    d12 = Math.sqrt(d13);
    d11 *= d12;
    d10 *= d12;
    if (paramBoolean1 == paramBoolean2) {
      d3 -= d10;
      d2 = d11 + d2;
    } else {
      d3 = d10 + d3;
      d2 -= d11;
    } 
    d8 = Math.atan2(d9 - d2, d8 - d3);
    d4 = Math.atan2(d4 - d2, d1 - d3) - d8;
    if (d4 >= 0.0D) {
      paramBoolean1 = true;
    } else {
      paramBoolean1 = false;
    } 
    d1 = d4;
    if (paramBoolean2 != paramBoolean1)
      if (d4 > 0.0D) {
        d1 = d4 - 6.283185307179586D;
      } else {
        d1 = d4 + 6.283185307179586D;
      }  
    d3 = paramFloat5 * d3;
    d2 *= paramFloat6;
    arcToBezier(paramPath, d3 * d6 - d2 * d7, d3 * d7 + d2 * d6, paramFloat5, paramFloat6, paramFloat1, paramFloat2, d5, d8, d1);
  }
  
  public static void nodesToPath(PathParser$PathDataNode[] paramArrayOfPathParser$PathDataNode, Path paramPath) {
    float[] arrayOfFloat = new float[6];
    char c = 'm';
    for (int i = 0; i < paramArrayOfPathParser$PathDataNode.length; i++) {
      addCommand(paramPath, arrayOfFloat, c, (paramArrayOfPathParser$PathDataNode[i]).type, (paramArrayOfPathParser$PathDataNode[i]).params);
      c = (paramArrayOfPathParser$PathDataNode[i]).type;
    } 
  }
  
  public void interpolatePathDataNode(PathParser$PathDataNode paramPathParser$PathDataNode1, PathParser$PathDataNode paramPathParser$PathDataNode2, float paramFloat) {
    int i;
    for (i = 0; i < paramPathParser$PathDataNode1.params.length; i++)
      this.params[i] = paramPathParser$PathDataNode1.params[i] * (1.0F - paramFloat) + paramPathParser$PathDataNode2.params[i] * paramFloat; 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\PathParser$PathDataNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */