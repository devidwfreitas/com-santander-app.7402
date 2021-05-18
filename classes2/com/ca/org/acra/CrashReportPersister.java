package com.ca.org.acra;

import android.content.Context;
import com.ca.org.acra.collector.CrashReportData;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;

final class CrashReportPersister {
  private static final int CONTINUE = 3;
  
  private static final int IGNORE = 5;
  
  private static final int KEY_DONE = 4;
  
  private static final String LINE_SEPARATOR = "\n";
  
  private static final int NONE = 0;
  
  private static final int SLASH = 1;
  
  private static final int UNICODE = 2;
  
  private final Context context;
  
  CrashReportPersister(Context paramContext) {
    this.context = paramContext;
  }
  
  private void dumpString(StringBuilder paramStringBuilder, String paramString, boolean paramBoolean) {
    int j = 0;
    int i = j;
    if (!paramBoolean) {
      i = j;
      if (paramString.length() < 0) {
        i = j;
        if (paramString.charAt(0) == ' ') {
          paramStringBuilder.append("\\ ");
          i = 0 + 1;
        } 
      } 
    } 
    while (true) {
      if (i < paramString.length()) {
        char c = paramString.charAt(i);
        switch (c) {
          default:
            if ("\\#!=:".indexOf(c) >= 0 || (paramBoolean && c == ' '))
              paramStringBuilder.append('\\'); 
            if (c >= ' ' && c <= '~') {
              paramStringBuilder.append(c);
            } else {
              break;
            } 
            i++;
            continue;
          case '\t':
            paramStringBuilder.append("\\t");
            i++;
            continue;
          case '\n':
            paramStringBuilder.append("\\n");
            i++;
            continue;
          case '\f':
            paramStringBuilder.append("\\f");
            i++;
            continue;
          case '\r':
            paramStringBuilder.append("\\r");
            i++;
            continue;
        } 
        String str = Integer.toHexString(c);
        paramStringBuilder.append("\\u");
        for (j = 0; j < 4 - str.length(); j++)
          paramStringBuilder.append("0"); 
        paramStringBuilder.append(str);
      } else {
        break;
      } 
      i++;
    } 
  }
  
  private boolean isEbcdic(BufferedInputStream paramBufferedInputStream) throws IOException {
    while (true) {
      byte b = (byte)paramBufferedInputStream.read();
      if (b == -1 || b == 35 || b == 10 || b == 61)
        return false; 
      if (b == 21)
        return true; 
    } 
  }
  
  private CrashReportData load(Reader paramReader) throws IOException {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore #4
    //   5: iconst_0
    //   6: istore #9
    //   8: iconst_0
    //   9: istore #8
    //   11: bipush #40
    //   13: newarray char
    //   15: astore #15
    //   17: iconst_m1
    //   18: istore #5
    //   20: iconst_1
    //   21: istore #12
    //   23: new com/ca/org/acra/collector/CrashReportData
    //   26: dup
    //   27: invokespecial <init> : ()V
    //   30: astore #16
    //   32: new java/io/BufferedReader
    //   35: dup
    //   36: aload_1
    //   37: sipush #8192
    //   40: invokespecial <init> : (Ljava/io/Reader;I)V
    //   43: astore #17
    //   45: iconst_0
    //   46: istore #7
    //   48: aload #15
    //   50: astore_1
    //   51: aload #17
    //   53: invokevirtual read : ()I
    //   56: istore #6
    //   58: iload #6
    //   60: iconst_m1
    //   61: if_icmpne -> 91
    //   64: iload #4
    //   66: iconst_2
    //   67: if_icmpne -> 1162
    //   70: iload #8
    //   72: iconst_4
    //   73: if_icmpgt -> 1162
    //   76: new java/lang/IllegalArgumentException
    //   79: dup
    //   80: ldc 'luni.08'
    //   82: invokespecial <init> : (Ljava/lang/String;)V
    //   85: athrow
    //   86: astore_1
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_1
    //   90: athrow
    //   91: iload #6
    //   93: i2c
    //   94: istore_3
    //   95: aload_1
    //   96: astore #15
    //   98: iload #7
    //   100: aload_1
    //   101: arraylength
    //   102: if_icmpne -> 123
    //   105: aload_1
    //   106: arraylength
    //   107: iconst_2
    //   108: imul
    //   109: newarray char
    //   111: astore #15
    //   113: aload_1
    //   114: iconst_0
    //   115: aload #15
    //   117: iconst_0
    //   118: iload #7
    //   120: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   123: iload #8
    //   125: istore #14
    //   127: iload #4
    //   129: istore #10
    //   131: iload #7
    //   133: istore #6
    //   135: iload #9
    //   137: istore #13
    //   139: iload #4
    //   141: iconst_2
    //   142: if_icmpne -> 552
    //   145: iload_3
    //   146: bipush #16
    //   148: invokestatic digit : (CI)I
    //   151: istore #6
    //   153: iload #6
    //   155: iflt -> 201
    //   158: iload #9
    //   160: iconst_4
    //   161: ishl
    //   162: iload #6
    //   164: iadd
    //   165: istore #6
    //   167: iload #8
    //   169: iconst_1
    //   170: iadd
    //   171: istore #10
    //   173: aload #15
    //   175: astore_1
    //   176: iload #10
    //   178: istore #8
    //   180: iload #6
    //   182: istore #9
    //   184: iload #10
    //   186: iconst_4
    //   187: if_icmplt -> 51
    //   190: iload #10
    //   192: istore #4
    //   194: iload #6
    //   196: istore #9
    //   198: goto -> 493
    //   201: iload #8
    //   203: istore #4
    //   205: iload #8
    //   207: iconst_4
    //   208: if_icmpgt -> 493
    //   211: new java/lang/IllegalArgumentException
    //   214: dup
    //   215: ldc 'luni.09'
    //   217: invokespecial <init> : (Ljava/lang/String;)V
    //   220: athrow
    //   221: iload #10
    //   223: istore #11
    //   225: iload_3
    //   226: invokestatic isWhitespace : (C)Z
    //   229: ifeq -> 1136
    //   232: iload #10
    //   234: istore #11
    //   236: iload #10
    //   238: iconst_3
    //   239: if_icmpne -> 871
    //   242: iconst_5
    //   243: istore #11
    //   245: goto -> 871
    //   248: aload #17
    //   250: invokevirtual read : ()I
    //   253: istore #11
    //   255: aload #15
    //   257: astore_1
    //   258: iload #14
    //   260: istore #8
    //   262: iload #10
    //   264: istore #4
    //   266: iload #6
    //   268: istore #7
    //   270: iload #13
    //   272: istore #9
    //   274: iload #11
    //   276: iconst_m1
    //   277: if_icmpeq -> 51
    //   280: iload #11
    //   282: i2c
    //   283: istore #11
    //   285: aload #15
    //   287: astore_1
    //   288: iload #14
    //   290: istore #8
    //   292: iload #10
    //   294: istore #4
    //   296: iload #6
    //   298: istore #7
    //   300: iload #13
    //   302: istore #9
    //   304: iload #11
    //   306: bipush #13
    //   308: if_icmpeq -> 51
    //   311: aload #15
    //   313: astore_1
    //   314: iload #14
    //   316: istore #8
    //   318: iload #10
    //   320: istore #4
    //   322: iload #6
    //   324: istore #7
    //   326: iload #13
    //   328: istore #9
    //   330: iload #11
    //   332: bipush #10
    //   334: if_icmpeq -> 51
    //   337: iload #11
    //   339: sipush #133
    //   342: if_icmpne -> 248
    //   345: aload #15
    //   347: astore_1
    //   348: iload #14
    //   350: istore #8
    //   352: iload #10
    //   354: istore #4
    //   356: iload #6
    //   358: istore #7
    //   360: iload #13
    //   362: istore #9
    //   364: goto -> 51
    //   367: new java/lang/String
    //   370: dup
    //   371: aload #15
    //   373: iconst_0
    //   374: iload #6
    //   376: invokespecial <init> : ([CII)V
    //   379: astore_1
    //   380: aload #16
    //   382: ldc com/ca/org/acra/ReportField
    //   384: aload_1
    //   385: iconst_0
    //   386: iload #4
    //   388: invokevirtual substring : (II)Ljava/lang/String;
    //   391: invokestatic valueOf : (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    //   394: aload_1
    //   395: iload #4
    //   397: invokevirtual substring : (I)Ljava/lang/String;
    //   400: invokevirtual put : (Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    //   403: pop
    //   404: goto -> 1046
    //   407: iload #6
    //   409: iflt -> 488
    //   412: new java/lang/String
    //   415: dup
    //   416: aload_1
    //   417: iconst_0
    //   418: iload #7
    //   420: invokespecial <init> : ([CII)V
    //   423: astore_1
    //   424: ldc com/ca/org/acra/ReportField
    //   426: aload_1
    //   427: iconst_0
    //   428: iload #6
    //   430: invokevirtual substring : (II)Ljava/lang/String;
    //   433: invokestatic valueOf : (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    //   436: checkcast com/ca/org/acra/ReportField
    //   439: astore #17
    //   441: aload_1
    //   442: iload #6
    //   444: invokevirtual substring : (I)Ljava/lang/String;
    //   447: astore #15
    //   449: aload #15
    //   451: astore_1
    //   452: iload #4
    //   454: iconst_1
    //   455: if_icmpne -> 479
    //   458: new java/lang/StringBuilder
    //   461: dup
    //   462: invokespecial <init> : ()V
    //   465: aload #15
    //   467: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: ldc ' '
    //   472: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: invokevirtual toString : ()Ljava/lang/String;
    //   478: astore_1
    //   479: aload #16
    //   481: aload #17
    //   483: aload_1
    //   484: invokevirtual put : (Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    //   487: pop
    //   488: aload_0
    //   489: monitorexit
    //   490: aload #16
    //   492: areturn
    //   493: iconst_0
    //   494: istore #10
    //   496: iconst_0
    //   497: istore #11
    //   499: iload #7
    //   501: iconst_1
    //   502: iadd
    //   503: istore #6
    //   505: aload #15
    //   507: iload #7
    //   509: iload #9
    //   511: i2c
    //   512: castore
    //   513: iload_3
    //   514: bipush #10
    //   516: if_icmpeq -> 544
    //   519: iload_3
    //   520: sipush #133
    //   523: if_icmpeq -> 544
    //   526: aload #15
    //   528: astore_1
    //   529: iload #4
    //   531: istore #8
    //   533: iload #11
    //   535: istore #4
    //   537: iload #6
    //   539: istore #7
    //   541: goto -> 51
    //   544: iload #9
    //   546: istore #13
    //   548: iload #4
    //   550: istore #14
    //   552: iload #10
    //   554: iconst_1
    //   555: if_icmpne -> 791
    //   558: iconst_0
    //   559: istore #4
    //   561: iload_3
    //   562: lookupswitch default -> 644, 10 -> 721, 13 -> 700, 98 -> 742, 102 -> 748, 110 -> 754, 114 -> 760, 116 -> 766, 117 -> 772, 133 -> 721
    //   644: iload_3
    //   645: istore_2
    //   646: iconst_0
    //   647: istore #12
    //   649: iload #4
    //   651: istore #7
    //   653: iload #4
    //   655: iconst_4
    //   656: if_icmpne -> 666
    //   659: iload #6
    //   661: istore #5
    //   663: iconst_0
    //   664: istore #7
    //   666: aload #15
    //   668: iload #6
    //   670: iload_2
    //   671: castore
    //   672: iload #6
    //   674: iconst_1
    //   675: iadd
    //   676: istore #6
    //   678: aload #15
    //   680: astore_1
    //   681: iload #14
    //   683: istore #8
    //   685: iload #7
    //   687: istore #4
    //   689: iload #6
    //   691: istore #7
    //   693: iload #13
    //   695: istore #9
    //   697: goto -> 51
    //   700: iconst_3
    //   701: istore #4
    //   703: aload #15
    //   705: astore_1
    //   706: iload #14
    //   708: istore #8
    //   710: iload #6
    //   712: istore #7
    //   714: iload #13
    //   716: istore #9
    //   718: goto -> 51
    //   721: iconst_5
    //   722: istore #4
    //   724: aload #15
    //   726: astore_1
    //   727: iload #14
    //   729: istore #8
    //   731: iload #6
    //   733: istore #7
    //   735: iload #13
    //   737: istore #9
    //   739: goto -> 51
    //   742: bipush #8
    //   744: istore_2
    //   745: goto -> 646
    //   748: bipush #12
    //   750: istore_2
    //   751: goto -> 646
    //   754: bipush #10
    //   756: istore_2
    //   757: goto -> 646
    //   760: bipush #13
    //   762: istore_2
    //   763: goto -> 646
    //   766: bipush #9
    //   768: istore_2
    //   769: goto -> 646
    //   772: iconst_2
    //   773: istore #4
    //   775: iconst_0
    //   776: istore #8
    //   778: iconst_0
    //   779: istore #9
    //   781: aload #15
    //   783: astore_1
    //   784: iload #6
    //   786: istore #7
    //   788: goto -> 51
    //   791: iload_3
    //   792: lookupswitch default -> 868, 10 -> 981, 13 -> 1008, 33 -> 973, 35 -> 973, 58 -> 1105, 61 -> 1105, 92 -> 1074, 133 -> 1008
    //   868: goto -> 221
    //   871: aload #15
    //   873: astore_1
    //   874: iload #14
    //   876: istore #8
    //   878: iload #11
    //   880: istore #4
    //   882: iload #6
    //   884: istore #7
    //   886: iload #13
    //   888: istore #9
    //   890: iload #6
    //   892: ifeq -> 51
    //   895: aload #15
    //   897: astore_1
    //   898: iload #14
    //   900: istore #8
    //   902: iload #11
    //   904: istore #4
    //   906: iload #6
    //   908: istore #7
    //   910: iload #13
    //   912: istore #9
    //   914: iload #6
    //   916: iload #5
    //   918: if_icmpeq -> 51
    //   921: aload #15
    //   923: astore_1
    //   924: iload #14
    //   926: istore #8
    //   928: iload #11
    //   930: istore #4
    //   932: iload #6
    //   934: istore #7
    //   936: iload #13
    //   938: istore #9
    //   940: iload #11
    //   942: iconst_5
    //   943: if_icmpeq -> 51
    //   946: iload #5
    //   948: iconst_m1
    //   949: if_icmpne -> 1136
    //   952: iconst_4
    //   953: istore #4
    //   955: aload #15
    //   957: astore_1
    //   958: iload #14
    //   960: istore #8
    //   962: iload #6
    //   964: istore #7
    //   966: iload #13
    //   968: istore #9
    //   970: goto -> 51
    //   973: iload #12
    //   975: ifeq -> 221
    //   978: goto -> 248
    //   981: iload #10
    //   983: iconst_3
    //   984: if_icmpne -> 1008
    //   987: iconst_5
    //   988: istore #4
    //   990: aload #15
    //   992: astore_1
    //   993: iload #14
    //   995: istore #8
    //   997: iload #6
    //   999: istore #7
    //   1001: iload #13
    //   1003: istore #9
    //   1005: goto -> 51
    //   1008: iconst_0
    //   1009: istore #7
    //   1011: iconst_1
    //   1012: istore #12
    //   1014: iload #6
    //   1016: ifgt -> 1029
    //   1019: iload #6
    //   1021: ifne -> 1046
    //   1024: iload #5
    //   1026: ifne -> 1046
    //   1029: iload #5
    //   1031: istore #4
    //   1033: iload #5
    //   1035: iconst_m1
    //   1036: if_icmpne -> 367
    //   1039: iload #6
    //   1041: istore #4
    //   1043: goto -> 367
    //   1046: iconst_m1
    //   1047: istore #5
    //   1049: iconst_0
    //   1050: istore #6
    //   1052: aload #15
    //   1054: astore_1
    //   1055: iload #14
    //   1057: istore #8
    //   1059: iload #7
    //   1061: istore #4
    //   1063: iload #6
    //   1065: istore #7
    //   1067: iload #13
    //   1069: istore #9
    //   1071: goto -> 51
    //   1074: iload #10
    //   1076: iconst_4
    //   1077: if_icmpne -> 1084
    //   1080: iload #6
    //   1082: istore #5
    //   1084: iconst_1
    //   1085: istore #4
    //   1087: aload #15
    //   1089: astore_1
    //   1090: iload #14
    //   1092: istore #8
    //   1094: iload #6
    //   1096: istore #7
    //   1098: iload #13
    //   1100: istore #9
    //   1102: goto -> 51
    //   1105: iload #5
    //   1107: iconst_m1
    //   1108: if_icmpne -> 221
    //   1111: iconst_0
    //   1112: istore #4
    //   1114: iload #6
    //   1116: istore #5
    //   1118: aload #15
    //   1120: astore_1
    //   1121: iload #14
    //   1123: istore #8
    //   1125: iload #6
    //   1127: istore #7
    //   1129: iload #13
    //   1131: istore #9
    //   1133: goto -> 51
    //   1136: iload #11
    //   1138: iconst_5
    //   1139: if_icmpeq -> 1154
    //   1142: iload #11
    //   1144: istore #4
    //   1146: iload_3
    //   1147: istore_2
    //   1148: iload #11
    //   1150: iconst_3
    //   1151: if_icmpne -> 646
    //   1154: iconst_0
    //   1155: istore #4
    //   1157: iload_3
    //   1158: istore_2
    //   1159: goto -> 646
    //   1162: iload #5
    //   1164: istore #6
    //   1166: iload #5
    //   1168: iconst_m1
    //   1169: if_icmpne -> 407
    //   1172: iload #5
    //   1174: istore #6
    //   1176: iload #7
    //   1178: ifle -> 407
    //   1181: iload #7
    //   1183: istore #6
    //   1185: goto -> 407
    // Exception table:
    //   from	to	target	type
    //   11	17	86	finally
    //   23	45	86	finally
    //   51	58	86	finally
    //   76	86	86	finally
    //   98	123	86	finally
    //   145	153	86	finally
    //   211	221	86	finally
    //   225	232	86	finally
    //   248	255	86	finally
    //   367	404	86	finally
    //   412	449	86	finally
    //   458	479	86	finally
    //   479	488	86	finally
  }
  
  public CrashReportData load(String paramString) throws IOException {
    FileInputStream fileInputStream = this.context.openFileInput(paramString);
    if (fileInputStream == null)
      throw new IllegalArgumentException("Invalid crash report fileName : " + paramString); 
    try {
      BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream, 8192);
      bufferedInputStream.mark(2147483647);
      boolean bool = isEbcdic(bufferedInputStream);
      bufferedInputStream.reset();
      if (!bool) {
        crashReportData = load(new InputStreamReader(bufferedInputStream, "ISO8859-1"));
        return crashReportData;
      } 
      CrashReportData crashReportData = load(new InputStreamReader((InputStream)crashReportData));
      return crashReportData;
    } finally {
      fileInputStream.close();
    } 
  }
  
  public void store(CrashReportData paramCrashReportData, String paramString) throws IOException {
    OutputStreamWriter outputStreamWriter;
    FileOutputStream fileOutputStream = this.context.openFileOutput(paramString, 0);
    try {
      StringBuilder stringBuilder = new StringBuilder(200);
      outputStreamWriter = new OutputStreamWriter(fileOutputStream, "ISO8859_1");
    } finally {
      fileOutputStream.close();
    } 
    outputStreamWriter.flush();
    fileOutputStream.close();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\CrashReportPersister.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */