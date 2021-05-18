package org.apache.commons.codec.language;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class Metaphone implements StringEncoder {
  private static final String FRONTV = "EIY";
  
  private static final String VARSON = "CSPTG";
  
  private static final String VOWELS = "AEIOU";
  
  private int maxCodeLen = 4;
  
  private boolean isLastChar(int paramInt1, int paramInt2) {
    return (paramInt2 + 1 == paramInt1);
  }
  
  private boolean isNextChar(StringBuffer paramStringBuffer, int paramInt, char paramChar) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt >= 0) {
      bool1 = bool2;
      if (paramInt < paramStringBuffer.length() - 1) {
        bool1 = bool2;
        if (paramStringBuffer.charAt(paramInt + 1) == paramChar)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  private boolean isPreviousChar(StringBuffer paramStringBuffer, int paramInt, char paramChar) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt > 0) {
      bool1 = bool2;
      if (paramInt < paramStringBuffer.length()) {
        bool1 = bool2;
        if (paramStringBuffer.charAt(paramInt - 1) == paramChar)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  private boolean isVowel(StringBuffer paramStringBuffer, int paramInt) {
    return ("AEIOU".indexOf(paramStringBuffer.charAt(paramInt)) >= 0);
  }
  
  private boolean regionMatch(StringBuffer paramStringBuffer, int paramInt, String paramString) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt >= 0) {
      bool1 = bool2;
      if (paramString.length() + paramInt - 1 < paramStringBuffer.length())
        bool1 = paramStringBuffer.substring(paramInt, paramString.length() + paramInt).equals(paramString); 
    } 
    return bool1;
  }
  
  public Object encode(Object paramObject) {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to Metaphone encode is not of type java.lang.String"); 
    return metaphone((String)paramObject);
  }
  
  public String encode(String paramString) {
    return metaphone(paramString);
  }
  
  public int getMaxCodeLen() {
    return this.maxCodeLen;
  }
  
  public boolean isMetaphoneEqual(String paramString1, String paramString2) {
    return metaphone(paramString1).equals(metaphone(paramString2));
  }
  
  public String metaphone(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 11
    //   4: aload_1
    //   5: invokevirtual length : ()I
    //   8: ifne -> 14
    //   11: ldc ''
    //   13: areturn
    //   14: aload_1
    //   15: invokevirtual length : ()I
    //   18: iconst_1
    //   19: if_icmpne -> 30
    //   22: aload_1
    //   23: getstatic java/util/Locale.ENGLISH : Ljava/util/Locale;
    //   26: invokevirtual toUpperCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   29: areturn
    //   30: aload_1
    //   31: getstatic java/util/Locale.ENGLISH : Ljava/util/Locale;
    //   34: invokevirtual toUpperCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   37: invokevirtual toCharArray : ()[C
    //   40: astore_1
    //   41: new java/lang/StringBuffer
    //   44: dup
    //   45: bipush #40
    //   47: invokespecial <init> : (I)V
    //   50: astore #6
    //   52: new java/lang/StringBuffer
    //   55: dup
    //   56: bipush #10
    //   58: invokespecial <init> : (I)V
    //   61: astore #7
    //   63: aload_1
    //   64: iconst_0
    //   65: caload
    //   66: lookupswitch default -> 124, 65 -> 250, 71 -> 217, 75 -> 217, 80 -> 217, 87 -> 283, 88 -> 347
    //   124: aload #6
    //   126: aload_1
    //   127: invokevirtual append : ([C)Ljava/lang/StringBuffer;
    //   130: pop
    //   131: aload #6
    //   133: invokevirtual length : ()I
    //   136: istore #5
    //   138: iconst_0
    //   139: istore_3
    //   140: aload #7
    //   142: invokevirtual length : ()I
    //   145: aload_0
    //   146: invokevirtual getMaxCodeLen : ()I
    //   149: if_icmpge -> 1443
    //   152: iload_3
    //   153: iload #5
    //   155: if_icmpge -> 1443
    //   158: aload #6
    //   160: iload_3
    //   161: invokevirtual charAt : (I)C
    //   164: istore_2
    //   165: iload_2
    //   166: bipush #67
    //   168: if_icmpeq -> 362
    //   171: aload_0
    //   172: aload #6
    //   174: iload_3
    //   175: iload_2
    //   176: invokespecial isPreviousChar : (Ljava/lang/StringBuffer;IC)Z
    //   179: ifeq -> 362
    //   182: iload_3
    //   183: iconst_1
    //   184: iadd
    //   185: istore #4
    //   187: iload #4
    //   189: istore_3
    //   190: aload #7
    //   192: invokevirtual length : ()I
    //   195: aload_0
    //   196: invokevirtual getMaxCodeLen : ()I
    //   199: if_icmple -> 140
    //   202: aload #7
    //   204: aload_0
    //   205: invokevirtual getMaxCodeLen : ()I
    //   208: invokevirtual setLength : (I)V
    //   211: iload #4
    //   213: istore_3
    //   214: goto -> 140
    //   217: aload_1
    //   218: iconst_1
    //   219: caload
    //   220: bipush #78
    //   222: if_icmpne -> 240
    //   225: aload #6
    //   227: aload_1
    //   228: iconst_1
    //   229: aload_1
    //   230: arraylength
    //   231: iconst_1
    //   232: isub
    //   233: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   236: pop
    //   237: goto -> 131
    //   240: aload #6
    //   242: aload_1
    //   243: invokevirtual append : ([C)Ljava/lang/StringBuffer;
    //   246: pop
    //   247: goto -> 131
    //   250: aload_1
    //   251: iconst_1
    //   252: caload
    //   253: bipush #69
    //   255: if_icmpne -> 273
    //   258: aload #6
    //   260: aload_1
    //   261: iconst_1
    //   262: aload_1
    //   263: arraylength
    //   264: iconst_1
    //   265: isub
    //   266: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   269: pop
    //   270: goto -> 131
    //   273: aload #6
    //   275: aload_1
    //   276: invokevirtual append : ([C)Ljava/lang/StringBuffer;
    //   279: pop
    //   280: goto -> 131
    //   283: aload_1
    //   284: iconst_1
    //   285: caload
    //   286: bipush #82
    //   288: if_icmpne -> 306
    //   291: aload #6
    //   293: aload_1
    //   294: iconst_1
    //   295: aload_1
    //   296: arraylength
    //   297: iconst_1
    //   298: isub
    //   299: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   302: pop
    //   303: goto -> 131
    //   306: aload_1
    //   307: iconst_1
    //   308: caload
    //   309: bipush #72
    //   311: if_icmpne -> 337
    //   314: aload #6
    //   316: aload_1
    //   317: iconst_1
    //   318: aload_1
    //   319: arraylength
    //   320: iconst_1
    //   321: isub
    //   322: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   325: pop
    //   326: aload #6
    //   328: iconst_0
    //   329: bipush #87
    //   331: invokevirtual setCharAt : (IC)V
    //   334: goto -> 131
    //   337: aload #6
    //   339: aload_1
    //   340: invokevirtual append : ([C)Ljava/lang/StringBuffer;
    //   343: pop
    //   344: goto -> 131
    //   347: aload_1
    //   348: iconst_0
    //   349: bipush #83
    //   351: castore
    //   352: aload #6
    //   354: aload_1
    //   355: invokevirtual append : ([C)Ljava/lang/StringBuffer;
    //   358: pop
    //   359: goto -> 131
    //   362: iload_2
    //   363: tableswitch default -> 480, 65 -> 492, 66 -> 512, 67 -> 550, 68 -> 769, 69 -> 492, 70 -> 1084, 71 -> 839, 72 -> 1019, 73 -> 492, 74 -> 1084, 75 -> 1097, 76 -> 1084, 77 -> 1084, 78 -> 1084, 79 -> 492, 80 -> 1142, 81 -> 1181, 82 -> 1084, 83 -> 1195, 84 -> 1259, 85 -> 492, 86 -> 1352, 87 -> 1366, 88 -> 1407, 89 -> 1366, 90 -> 1429
    //   480: iload_3
    //   481: istore #4
    //   483: iload #4
    //   485: iconst_1
    //   486: iadd
    //   487: istore #4
    //   489: goto -> 187
    //   492: iload_3
    //   493: istore #4
    //   495: iload_3
    //   496: ifne -> 483
    //   499: aload #7
    //   501: iload_2
    //   502: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   505: pop
    //   506: iload_3
    //   507: istore #4
    //   509: goto -> 483
    //   512: aload_0
    //   513: aload #6
    //   515: iload_3
    //   516: bipush #77
    //   518: invokespecial isPreviousChar : (Ljava/lang/StringBuffer;IC)Z
    //   521: ifeq -> 537
    //   524: iload_3
    //   525: istore #4
    //   527: aload_0
    //   528: iload #5
    //   530: iload_3
    //   531: invokespecial isLastChar : (II)Z
    //   534: ifne -> 483
    //   537: aload #7
    //   539: iload_2
    //   540: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   543: pop
    //   544: iload_3
    //   545: istore #4
    //   547: goto -> 483
    //   550: aload_0
    //   551: aload #6
    //   553: iload_3
    //   554: bipush #83
    //   556: invokespecial isPreviousChar : (Ljava/lang/StringBuffer;IC)Z
    //   559: ifeq -> 591
    //   562: aload_0
    //   563: iload #5
    //   565: iload_3
    //   566: invokespecial isLastChar : (II)Z
    //   569: ifne -> 591
    //   572: iload_3
    //   573: istore #4
    //   575: ldc 'EIY'
    //   577: aload #6
    //   579: iload_3
    //   580: iconst_1
    //   581: iadd
    //   582: invokevirtual charAt : (I)C
    //   585: invokevirtual indexOf : (I)I
    //   588: ifge -> 483
    //   591: aload_0
    //   592: aload #6
    //   594: iload_3
    //   595: ldc 'CIA'
    //   597: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   600: ifeq -> 617
    //   603: aload #7
    //   605: bipush #88
    //   607: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   610: pop
    //   611: iload_3
    //   612: istore #4
    //   614: goto -> 483
    //   617: aload_0
    //   618: iload #5
    //   620: iload_3
    //   621: invokespecial isLastChar : (II)Z
    //   624: ifne -> 657
    //   627: ldc 'EIY'
    //   629: aload #6
    //   631: iload_3
    //   632: iconst_1
    //   633: iadd
    //   634: invokevirtual charAt : (I)C
    //   637: invokevirtual indexOf : (I)I
    //   640: iflt -> 657
    //   643: aload #7
    //   645: bipush #83
    //   647: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   650: pop
    //   651: iload_3
    //   652: istore #4
    //   654: goto -> 483
    //   657: aload_0
    //   658: aload #6
    //   660: iload_3
    //   661: bipush #83
    //   663: invokespecial isPreviousChar : (Ljava/lang/StringBuffer;IC)Z
    //   666: ifeq -> 695
    //   669: aload_0
    //   670: aload #6
    //   672: iload_3
    //   673: bipush #72
    //   675: invokespecial isNextChar : (Ljava/lang/StringBuffer;IC)Z
    //   678: ifeq -> 695
    //   681: aload #7
    //   683: bipush #75
    //   685: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   688: pop
    //   689: iload_3
    //   690: istore #4
    //   692: goto -> 483
    //   695: aload_0
    //   696: aload #6
    //   698: iload_3
    //   699: bipush #72
    //   701: invokespecial isNextChar : (Ljava/lang/StringBuffer;IC)Z
    //   704: ifeq -> 755
    //   707: iload_3
    //   708: ifne -> 741
    //   711: iload #5
    //   713: iconst_3
    //   714: if_icmplt -> 741
    //   717: aload_0
    //   718: aload #6
    //   720: iconst_2
    //   721: invokespecial isVowel : (Ljava/lang/StringBuffer;I)Z
    //   724: ifeq -> 741
    //   727: aload #7
    //   729: bipush #75
    //   731: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   734: pop
    //   735: iload_3
    //   736: istore #4
    //   738: goto -> 483
    //   741: aload #7
    //   743: bipush #88
    //   745: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   748: pop
    //   749: iload_3
    //   750: istore #4
    //   752: goto -> 483
    //   755: aload #7
    //   757: bipush #75
    //   759: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   762: pop
    //   763: iload_3
    //   764: istore #4
    //   766: goto -> 483
    //   769: aload_0
    //   770: iload #5
    //   772: iload_3
    //   773: iconst_1
    //   774: iadd
    //   775: invokespecial isLastChar : (II)Z
    //   778: ifne -> 825
    //   781: aload_0
    //   782: aload #6
    //   784: iload_3
    //   785: bipush #71
    //   787: invokespecial isNextChar : (Ljava/lang/StringBuffer;IC)Z
    //   790: ifeq -> 825
    //   793: ldc 'EIY'
    //   795: aload #6
    //   797: iload_3
    //   798: iconst_2
    //   799: iadd
    //   800: invokevirtual charAt : (I)C
    //   803: invokevirtual indexOf : (I)I
    //   806: iflt -> 825
    //   809: aload #7
    //   811: bipush #74
    //   813: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   816: pop
    //   817: iload_3
    //   818: iconst_2
    //   819: iadd
    //   820: istore #4
    //   822: goto -> 483
    //   825: aload #7
    //   827: bipush #84
    //   829: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   832: pop
    //   833: iload_3
    //   834: istore #4
    //   836: goto -> 483
    //   839: aload_0
    //   840: iload #5
    //   842: iload_3
    //   843: iconst_1
    //   844: iadd
    //   845: invokespecial isLastChar : (II)Z
    //   848: ifeq -> 866
    //   851: iload_3
    //   852: istore #4
    //   854: aload_0
    //   855: aload #6
    //   857: iload_3
    //   858: bipush #72
    //   860: invokespecial isNextChar : (Ljava/lang/StringBuffer;IC)Z
    //   863: ifne -> 483
    //   866: aload_0
    //   867: iload #5
    //   869: iload_3
    //   870: iconst_1
    //   871: iadd
    //   872: invokespecial isLastChar : (II)Z
    //   875: ifne -> 905
    //   878: aload_0
    //   879: aload #6
    //   881: iload_3
    //   882: bipush #72
    //   884: invokespecial isNextChar : (Ljava/lang/StringBuffer;IC)Z
    //   887: ifeq -> 905
    //   890: iload_3
    //   891: istore #4
    //   893: aload_0
    //   894: aload #6
    //   896: iload_3
    //   897: iconst_2
    //   898: iadd
    //   899: invokespecial isVowel : (Ljava/lang/StringBuffer;I)Z
    //   902: ifeq -> 483
    //   905: iload_3
    //   906: ifle -> 939
    //   909: iload_3
    //   910: istore #4
    //   912: aload_0
    //   913: aload #6
    //   915: iload_3
    //   916: ldc 'GN'
    //   918: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   921: ifne -> 483
    //   924: iload_3
    //   925: istore #4
    //   927: aload_0
    //   928: aload #6
    //   930: iload_3
    //   931: ldc 'GNED'
    //   933: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   936: ifne -> 483
    //   939: aload_0
    //   940: aload #6
    //   942: iload_3
    //   943: bipush #71
    //   945: invokespecial isPreviousChar : (Ljava/lang/StringBuffer;IC)Z
    //   948: ifeq -> 999
    //   951: iconst_1
    //   952: istore #4
    //   954: aload_0
    //   955: iload #5
    //   957: iload_3
    //   958: invokespecial isLastChar : (II)Z
    //   961: ifne -> 1005
    //   964: ldc 'EIY'
    //   966: aload #6
    //   968: iload_3
    //   969: iconst_1
    //   970: iadd
    //   971: invokevirtual charAt : (I)C
    //   974: invokevirtual indexOf : (I)I
    //   977: iflt -> 1005
    //   980: iload #4
    //   982: ifne -> 1005
    //   985: aload #7
    //   987: bipush #74
    //   989: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   992: pop
    //   993: iload_3
    //   994: istore #4
    //   996: goto -> 483
    //   999: iconst_0
    //   1000: istore #4
    //   1002: goto -> 954
    //   1005: aload #7
    //   1007: bipush #75
    //   1009: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1012: pop
    //   1013: iload_3
    //   1014: istore #4
    //   1016: goto -> 483
    //   1019: iload_3
    //   1020: istore #4
    //   1022: aload_0
    //   1023: iload #5
    //   1025: iload_3
    //   1026: invokespecial isLastChar : (II)Z
    //   1029: ifne -> 483
    //   1032: iload_3
    //   1033: ifle -> 1055
    //   1036: iload_3
    //   1037: istore #4
    //   1039: ldc 'CSPTG'
    //   1041: aload #6
    //   1043: iload_3
    //   1044: iconst_1
    //   1045: isub
    //   1046: invokevirtual charAt : (I)C
    //   1049: invokevirtual indexOf : (I)I
    //   1052: ifge -> 483
    //   1055: iload_3
    //   1056: istore #4
    //   1058: aload_0
    //   1059: aload #6
    //   1061: iload_3
    //   1062: iconst_1
    //   1063: iadd
    //   1064: invokespecial isVowel : (Ljava/lang/StringBuffer;I)Z
    //   1067: ifeq -> 483
    //   1070: aload #7
    //   1072: bipush #72
    //   1074: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1077: pop
    //   1078: iload_3
    //   1079: istore #4
    //   1081: goto -> 483
    //   1084: aload #7
    //   1086: iload_2
    //   1087: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1090: pop
    //   1091: iload_3
    //   1092: istore #4
    //   1094: goto -> 483
    //   1097: iload_3
    //   1098: ifle -> 1129
    //   1101: iload_3
    //   1102: istore #4
    //   1104: aload_0
    //   1105: aload #6
    //   1107: iload_3
    //   1108: bipush #67
    //   1110: invokespecial isPreviousChar : (Ljava/lang/StringBuffer;IC)Z
    //   1113: ifne -> 483
    //   1116: aload #7
    //   1118: iload_2
    //   1119: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1122: pop
    //   1123: iload_3
    //   1124: istore #4
    //   1126: goto -> 483
    //   1129: aload #7
    //   1131: iload_2
    //   1132: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1135: pop
    //   1136: iload_3
    //   1137: istore #4
    //   1139: goto -> 483
    //   1142: aload_0
    //   1143: aload #6
    //   1145: iload_3
    //   1146: bipush #72
    //   1148: invokespecial isNextChar : (Ljava/lang/StringBuffer;IC)Z
    //   1151: ifeq -> 1168
    //   1154: aload #7
    //   1156: bipush #70
    //   1158: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1161: pop
    //   1162: iload_3
    //   1163: istore #4
    //   1165: goto -> 483
    //   1168: aload #7
    //   1170: iload_2
    //   1171: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1174: pop
    //   1175: iload_3
    //   1176: istore #4
    //   1178: goto -> 483
    //   1181: aload #7
    //   1183: bipush #75
    //   1185: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1188: pop
    //   1189: iload_3
    //   1190: istore #4
    //   1192: goto -> 483
    //   1195: aload_0
    //   1196: aload #6
    //   1198: iload_3
    //   1199: ldc 'SH'
    //   1201: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1204: ifne -> 1231
    //   1207: aload_0
    //   1208: aload #6
    //   1210: iload_3
    //   1211: ldc 'SIO'
    //   1213: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1216: ifne -> 1231
    //   1219: aload_0
    //   1220: aload #6
    //   1222: iload_3
    //   1223: ldc 'SIA'
    //   1225: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1228: ifeq -> 1245
    //   1231: aload #7
    //   1233: bipush #88
    //   1235: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1238: pop
    //   1239: iload_3
    //   1240: istore #4
    //   1242: goto -> 483
    //   1245: aload #7
    //   1247: bipush #83
    //   1249: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1252: pop
    //   1253: iload_3
    //   1254: istore #4
    //   1256: goto -> 483
    //   1259: aload_0
    //   1260: aload #6
    //   1262: iload_3
    //   1263: ldc 'TIA'
    //   1265: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1268: ifne -> 1283
    //   1271: aload_0
    //   1272: aload #6
    //   1274: iload_3
    //   1275: ldc 'TIO'
    //   1277: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1280: ifeq -> 1297
    //   1283: aload #7
    //   1285: bipush #88
    //   1287: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1290: pop
    //   1291: iload_3
    //   1292: istore #4
    //   1294: goto -> 483
    //   1297: iload_3
    //   1298: istore #4
    //   1300: aload_0
    //   1301: aload #6
    //   1303: iload_3
    //   1304: ldc 'TCH'
    //   1306: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1309: ifne -> 483
    //   1312: aload_0
    //   1313: aload #6
    //   1315: iload_3
    //   1316: ldc 'TH'
    //   1318: invokespecial regionMatch : (Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    //   1321: ifeq -> 1338
    //   1324: aload #7
    //   1326: bipush #48
    //   1328: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1331: pop
    //   1332: iload_3
    //   1333: istore #4
    //   1335: goto -> 483
    //   1338: aload #7
    //   1340: bipush #84
    //   1342: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1345: pop
    //   1346: iload_3
    //   1347: istore #4
    //   1349: goto -> 483
    //   1352: aload #7
    //   1354: bipush #70
    //   1356: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1359: pop
    //   1360: iload_3
    //   1361: istore #4
    //   1363: goto -> 483
    //   1366: iload_3
    //   1367: istore #4
    //   1369: aload_0
    //   1370: iload #5
    //   1372: iload_3
    //   1373: invokespecial isLastChar : (II)Z
    //   1376: ifne -> 483
    //   1379: iload_3
    //   1380: istore #4
    //   1382: aload_0
    //   1383: aload #6
    //   1385: iload_3
    //   1386: iconst_1
    //   1387: iadd
    //   1388: invokespecial isVowel : (Ljava/lang/StringBuffer;I)Z
    //   1391: ifeq -> 483
    //   1394: aload #7
    //   1396: iload_2
    //   1397: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1400: pop
    //   1401: iload_3
    //   1402: istore #4
    //   1404: goto -> 483
    //   1407: aload #7
    //   1409: bipush #75
    //   1411: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1414: pop
    //   1415: aload #7
    //   1417: bipush #83
    //   1419: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1422: pop
    //   1423: iload_3
    //   1424: istore #4
    //   1426: goto -> 483
    //   1429: aload #7
    //   1431: bipush #83
    //   1433: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   1436: pop
    //   1437: iload_3
    //   1438: istore #4
    //   1440: goto -> 483
    //   1443: aload #7
    //   1445: invokevirtual toString : ()Ljava/lang/String;
    //   1448: areturn
  }
  
  public void setMaxCodeLen(int paramInt) {
    this.maxCodeLen = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\codec\language\Metaphone.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */