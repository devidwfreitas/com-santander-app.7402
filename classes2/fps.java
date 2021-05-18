import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class fps extends PagerAdapter {
  private List<? extends fuu> a;
  
  private Context b;
  
  private int c = 12;
  
  private Number[] d;
  
  private String[] e;
  
  private Date[] f;
  
  private Number[] g;
  
  private Number[] h;
  
  private Number[] i;
  
  private Number[] j;
  
  private Number[] k;
  
  private Number[] l;
  
  private int m = 0;
  
  private int n = 4;
  
  public fps(Activity paramActivity, List<? extends fuu> paramList) {
    this.b = (Context)paramActivity;
    this.a = paramList;
    this.d = new Number[7];
    this.e = new String[7];
    this.f = new Date[7];
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    int j = 6;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM");
    while (i < 7) {
      calendar.setTime(new Date());
      calendar.add(5, -j);
      this.d[i] = Integer.valueOf(calendar.get(5));
      this.e[i] = simpleDateFormat.format(new Date(calendar.getTimeInMillis()));
      this.f[i] = new Date(calendar.getTimeInMillis());
      j--;
      i++;
    } 
  }
  
  public boolean a(fuy paramfuy) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #5
    //   3: new java/util/Vector
    //   6: dup
    //   7: invokespecial <init> : ()V
    //   10: astore #6
    //   12: iconst_0
    //   13: istore_3
    //   14: iload_3
    //   15: aload_1
    //   16: invokevirtual y : ()Ljava/util/Vector;
    //   19: invokevirtual size : ()I
    //   22: if_icmpge -> 85
    //   25: aload_1
    //   26: invokevirtual y : ()Ljava/util/Vector;
    //   29: iload_3
    //   30: invokevirtual get : (I)Ljava/lang/Object;
    //   33: checkcast fve
    //   36: astore #7
    //   38: aload #7
    //   40: invokevirtual getHistorico : ()Ljava/lang/String;
    //   43: ifnull -> 70
    //   46: aload #7
    //   48: invokevirtual getHistorico : ()Ljava/lang/String;
    //   51: invokevirtual length : ()I
    //   54: ifeq -> 70
    //   57: aload #7
    //   59: invokevirtual getHistorico : ()Ljava/lang/String;
    //   62: ldc 'SALDO ANTERIOR'
    //   64: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   67: ifne -> 78
    //   70: aload #6
    //   72: aload #7
    //   74: invokevirtual add : (Ljava/lang/Object;)Z
    //   77: pop
    //   78: iload_3
    //   79: iconst_1
    //   80: iadd
    //   81: istore_3
    //   82: goto -> 14
    //   85: aload_0
    //   86: aload_0
    //   87: getfield d : [Ljava/lang/Number;
    //   90: arraylength
    //   91: anewarray java/lang/Number
    //   94: putfield g : [Ljava/lang/Number;
    //   97: aload_0
    //   98: aload_0
    //   99: getfield d : [Ljava/lang/Number;
    //   102: arraylength
    //   103: anewarray java/lang/Number
    //   106: putfield h : [Ljava/lang/Number;
    //   109: aload_0
    //   110: aload_0
    //   111: getfield d : [Ljava/lang/Number;
    //   114: arraylength
    //   115: anewarray java/lang/Number
    //   118: putfield i : [Ljava/lang/Number;
    //   121: new java/text/SimpleDateFormat
    //   124: dup
    //   125: ldc 'dd/MM/yyyy'
    //   127: invokespecial <init> : (Ljava/lang/String;)V
    //   130: astore_1
    //   131: iconst_0
    //   132: istore_3
    //   133: iload_3
    //   134: aload_0
    //   135: getfield d : [Ljava/lang/Number;
    //   138: arraylength
    //   139: if_icmpge -> 415
    //   142: aload_0
    //   143: getfield i : [Ljava/lang/Number;
    //   146: iload_3
    //   147: iconst_0
    //   148: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   151: aastore
    //   152: aload_0
    //   153: getfield g : [Ljava/lang/Number;
    //   156: iload_3
    //   157: iconst_0
    //   158: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   161: aastore
    //   162: aload_0
    //   163: getfield h : [Ljava/lang/Number;
    //   166: iload_3
    //   167: iconst_0
    //   168: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   171: aastore
    //   172: iconst_0
    //   173: istore #4
    //   175: iload #4
    //   177: aload #6
    //   179: invokevirtual size : ()I
    //   182: if_icmpge -> 396
    //   185: aload #6
    //   187: iload #4
    //   189: invokevirtual get : (I)Ljava/lang/Object;
    //   192: checkcast fve
    //   195: invokevirtual getData : ()Ljava/lang/String;
    //   198: ifnull -> 371
    //   201: aload_1
    //   202: aload_0
    //   203: getfield f : [Ljava/util/Date;
    //   206: iload_3
    //   207: aaload
    //   208: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   211: aload #6
    //   213: iload #4
    //   215: invokevirtual get : (I)Ljava/lang/Object;
    //   218: checkcast fve
    //   221: invokevirtual getData : ()Ljava/lang/String;
    //   224: invokevirtual equals : (Ljava/lang/Object;)Z
    //   227: ifeq -> 371
    //   230: aload #6
    //   232: iload #4
    //   234: invokevirtual get : (I)Ljava/lang/Object;
    //   237: checkcast fve
    //   240: invokevirtual getValor : ()Ljava/lang/String;
    //   243: ifnull -> 371
    //   246: aload #6
    //   248: iload #4
    //   250: invokevirtual get : (I)Ljava/lang/Object;
    //   253: checkcast fve
    //   256: invokevirtual getValor : ()Ljava/lang/String;
    //   259: invokevirtual length : ()I
    //   262: ifle -> 371
    //   265: aload #6
    //   267: iload #4
    //   269: invokevirtual get : (I)Ljava/lang/Object;
    //   272: checkcast fve
    //   275: invokevirtual getValor : ()Ljava/lang/String;
    //   278: invokevirtual toString : ()Ljava/lang/String;
    //   281: ldc '\.'
    //   283: ldc ''
    //   285: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   288: ldc ','
    //   290: ldc '.'
    //   292: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   295: invokestatic parseFloat : (Ljava/lang/String;)F
    //   298: fstore_2
    //   299: aload_0
    //   300: getfield i : [Ljava/lang/Number;
    //   303: iload_3
    //   304: aload_0
    //   305: getfield i : [Ljava/lang/Number;
    //   308: iload_3
    //   309: aaload
    //   310: invokevirtual floatValue : ()F
    //   313: fload_2
    //   314: fadd
    //   315: invokestatic valueOf : (F)Ljava/lang/Float;
    //   318: aastore
    //   319: fload_2
    //   320: fconst_0
    //   321: fcmpl
    //   322: ifle -> 345
    //   325: aload_0
    //   326: getfield g : [Ljava/lang/Number;
    //   329: iload_3
    //   330: aload_0
    //   331: getfield g : [Ljava/lang/Number;
    //   334: iload_3
    //   335: aaload
    //   336: invokevirtual floatValue : ()F
    //   339: fload_2
    //   340: fadd
    //   341: invokestatic valueOf : (F)Ljava/lang/Float;
    //   344: aastore
    //   345: fload_2
    //   346: fconst_0
    //   347: fcmpg
    //   348: ifge -> 371
    //   351: aload_0
    //   352: getfield h : [Ljava/lang/Number;
    //   355: iload_3
    //   356: fload_2
    //   357: aload_0
    //   358: getfield h : [Ljava/lang/Number;
    //   361: iload_3
    //   362: aaload
    //   363: invokevirtual floatValue : ()F
    //   366: fadd
    //   367: invokestatic valueOf : (F)Ljava/lang/Float;
    //   370: aastore
    //   371: iload #4
    //   373: iconst_1
    //   374: iadd
    //   375: istore #4
    //   377: goto -> 175
    //   380: astore #7
    //   382: ldc 'Error'
    //   384: aload #7
    //   386: invokevirtual getMessage : ()Ljava/lang/String;
    //   389: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   392: pop
    //   393: goto -> 371
    //   396: aload_0
    //   397: getfield i : [Ljava/lang/Number;
    //   400: iload_3
    //   401: aload_0
    //   402: getfield h : [Ljava/lang/Number;
    //   405: iload_3
    //   406: aaload
    //   407: aastore
    //   408: iload_3
    //   409: iconst_1
    //   410: iadd
    //   411: istore_3
    //   412: goto -> 133
    //   415: aload_0
    //   416: aload_0
    //   417: getfield d : [Ljava/lang/Number;
    //   420: arraylength
    //   421: anewarray java/lang/Number
    //   424: putfield j : [Ljava/lang/Number;
    //   427: iconst_0
    //   428: istore_3
    //   429: iload_3
    //   430: aload_0
    //   431: getfield d : [Ljava/lang/Number;
    //   434: arraylength
    //   435: if_icmpge -> 484
    //   438: aload_0
    //   439: getfield i : [Ljava/lang/Number;
    //   442: iload_3
    //   443: aaload
    //   444: invokevirtual floatValue : ()F
    //   447: fconst_0
    //   448: fcmpl
    //   449: ifle -> 471
    //   452: aload_0
    //   453: getfield j : [Ljava/lang/Number;
    //   456: iload_3
    //   457: aload_0
    //   458: getfield i : [Ljava/lang/Number;
    //   461: iload_3
    //   462: aaload
    //   463: aastore
    //   464: iload_3
    //   465: iconst_1
    //   466: iadd
    //   467: istore_3
    //   468: goto -> 429
    //   471: aload_0
    //   472: getfield j : [Ljava/lang/Number;
    //   475: iload_3
    //   476: iconst_0
    //   477: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   480: aastore
    //   481: goto -> 464
    //   484: aload_0
    //   485: aload_0
    //   486: getfield d : [Ljava/lang/Number;
    //   489: arraylength
    //   490: anewarray java/lang/Number
    //   493: putfield l : [Ljava/lang/Number;
    //   496: iconst_0
    //   497: istore_3
    //   498: iload_3
    //   499: aload_0
    //   500: getfield d : [Ljava/lang/Number;
    //   503: arraylength
    //   504: if_icmpge -> 553
    //   507: aload_0
    //   508: getfield g : [Ljava/lang/Number;
    //   511: iload_3
    //   512: aaload
    //   513: invokevirtual floatValue : ()F
    //   516: fconst_0
    //   517: fcmpl
    //   518: ifle -> 540
    //   521: aload_0
    //   522: getfield l : [Ljava/lang/Number;
    //   525: iload_3
    //   526: aload_0
    //   527: getfield g : [Ljava/lang/Number;
    //   530: iload_3
    //   531: aaload
    //   532: aastore
    //   533: iload_3
    //   534: iconst_1
    //   535: iadd
    //   536: istore_3
    //   537: goto -> 498
    //   540: aload_0
    //   541: getfield l : [Ljava/lang/Number;
    //   544: iload_3
    //   545: iconst_0
    //   546: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   549: aastore
    //   550: goto -> 533
    //   553: aload_0
    //   554: getfield g : [Ljava/lang/Number;
    //   557: iconst_0
    //   558: aaload
    //   559: invokevirtual intValue : ()I
    //   562: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   565: astore #7
    //   567: iconst_0
    //   568: istore_3
    //   569: iload_3
    //   570: aload_0
    //   571: getfield d : [Ljava/lang/Number;
    //   574: arraylength
    //   575: if_icmpge -> 622
    //   578: aload #7
    //   580: astore_1
    //   581: aload_0
    //   582: getfield g : [Ljava/lang/Number;
    //   585: iload_3
    //   586: aaload
    //   587: invokevirtual floatValue : ()F
    //   590: aload #7
    //   592: invokevirtual floatValue : ()F
    //   595: fcmpl
    //   596: ifle -> 612
    //   599: aload_0
    //   600: getfield g : [Ljava/lang/Number;
    //   603: iload_3
    //   604: aaload
    //   605: invokevirtual intValue : ()I
    //   608: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   611: astore_1
    //   612: iload_3
    //   613: iconst_1
    //   614: iadd
    //   615: istore_3
    //   616: aload_1
    //   617: astore #7
    //   619: goto -> 569
    //   622: aload_0
    //   623: getfield h : [Ljava/lang/Number;
    //   626: iconst_0
    //   627: aaload
    //   628: invokevirtual intValue : ()I
    //   631: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   634: astore #8
    //   636: iconst_0
    //   637: istore_3
    //   638: iload_3
    //   639: aload_0
    //   640: getfield d : [Ljava/lang/Number;
    //   643: arraylength
    //   644: if_icmpge -> 691
    //   647: aload #8
    //   649: astore_1
    //   650: aload_0
    //   651: getfield h : [Ljava/lang/Number;
    //   654: iload_3
    //   655: aaload
    //   656: invokevirtual floatValue : ()F
    //   659: aload #8
    //   661: invokevirtual floatValue : ()F
    //   664: fcmpg
    //   665: ifge -> 681
    //   668: aload_0
    //   669: getfield h : [Ljava/lang/Number;
    //   672: iload_3
    //   673: aaload
    //   674: invokevirtual intValue : ()I
    //   677: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   680: astore_1
    //   681: iload_3
    //   682: iconst_1
    //   683: iadd
    //   684: istore_3
    //   685: aload_1
    //   686: astore #8
    //   688: goto -> 638
    //   691: aload #8
    //   693: aload #7
    //   695: if_acmpne -> 788
    //   698: aload #7
    //   700: invokevirtual floatValue : ()F
    //   703: f2d
    //   704: ldc2_w 100.0
    //   707: dadd
    //   708: invokestatic valueOf : (D)Ljava/lang/Double;
    //   711: astore_1
    //   712: aload #8
    //   714: astore #6
    //   716: aload_0
    //   717: aload_0
    //   718: getfield d : [Ljava/lang/Number;
    //   721: arraylength
    //   722: anewarray java/lang/Number
    //   725: putfield k : [Ljava/lang/Number;
    //   728: iconst_0
    //   729: istore_3
    //   730: iload_3
    //   731: aload_0
    //   732: getfield d : [Ljava/lang/Number;
    //   735: arraylength
    //   736: if_icmpge -> 859
    //   739: aload_0
    //   740: getfield k : [Ljava/lang/Number;
    //   743: iload_3
    //   744: iconst_0
    //   745: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   748: aastore
    //   749: aload_0
    //   750: getfield i : [Ljava/lang/Number;
    //   753: iload_3
    //   754: aaload
    //   755: invokevirtual floatValue : ()F
    //   758: fconst_0
    //   759: fcmpg
    //   760: ifgt -> 781
    //   763: aload_0
    //   764: getfield k : [Ljava/lang/Number;
    //   767: iload_3
    //   768: aload_0
    //   769: getfield i : [Ljava/lang/Number;
    //   772: iload_3
    //   773: aaload
    //   774: invokevirtual floatValue : ()F
    //   777: invokestatic valueOf : (F)Ljava/lang/Float;
    //   780: aastore
    //   781: iload_3
    //   782: iconst_1
    //   783: iadd
    //   784: istore_3
    //   785: goto -> 730
    //   788: aload #7
    //   790: invokevirtual floatValue : ()F
    //   793: aload #8
    //   795: invokevirtual floatValue : ()F
    //   798: fneg
    //   799: fcmpg
    //   800: ifge -> 820
    //   803: aload #8
    //   805: invokevirtual floatValue : ()F
    //   808: fneg
    //   809: invokestatic valueOf : (F)Ljava/lang/Float;
    //   812: astore_1
    //   813: aload #8
    //   815: astore #6
    //   817: goto -> 716
    //   820: aload #7
    //   822: astore_1
    //   823: aload #8
    //   825: astore #6
    //   827: aload #7
    //   829: invokevirtual floatValue : ()F
    //   832: aload #8
    //   834: invokevirtual floatValue : ()F
    //   837: fneg
    //   838: fcmpl
    //   839: ifle -> 716
    //   842: aload #7
    //   844: invokevirtual floatValue : ()F
    //   847: fneg
    //   848: invokestatic valueOf : (F)Ljava/lang/Float;
    //   851: astore #6
    //   853: aload #7
    //   855: astore_1
    //   856: goto -> 716
    //   859: aload_1
    //   860: invokevirtual floatValue : ()F
    //   863: ldc 1000.0
    //   865: fcmpl
    //   866: ifgt -> 887
    //   869: aload_1
    //   870: astore #7
    //   872: aload #6
    //   874: astore #8
    //   876: aload #6
    //   878: invokevirtual floatValue : ()F
    //   881: ldc -1000.0
    //   883: fcmpg
    //   884: ifge -> 984
    //   887: iconst_0
    //   888: istore_3
    //   889: aload_1
    //   890: astore #7
    //   892: aload #6
    //   894: astore #8
    //   896: iload_3
    //   897: aload_0
    //   898: getfield d : [Ljava/lang/Number;
    //   901: arraylength
    //   902: if_icmpge -> 984
    //   905: aload_0
    //   906: getfield j : [Ljava/lang/Number;
    //   909: iload_3
    //   910: aload_0
    //   911: getfield j : [Ljava/lang/Number;
    //   914: iload_3
    //   915: aaload
    //   916: invokevirtual intValue : ()I
    //   919: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   922: aastore
    //   923: aload_0
    //   924: getfield k : [Ljava/lang/Number;
    //   927: iload_3
    //   928: aload_0
    //   929: getfield k : [Ljava/lang/Number;
    //   932: iload_3
    //   933: aaload
    //   934: invokevirtual intValue : ()I
    //   937: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   940: aastore
    //   941: aload_0
    //   942: getfield l : [Ljava/lang/Number;
    //   945: iload_3
    //   946: aload_0
    //   947: getfield l : [Ljava/lang/Number;
    //   950: iload_3
    //   951: aaload
    //   952: invokevirtual intValue : ()I
    //   955: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   958: aastore
    //   959: aload #6
    //   961: invokevirtual intValue : ()I
    //   964: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   967: astore #6
    //   969: aload_1
    //   970: invokevirtual intValue : ()I
    //   973: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   976: astore_1
    //   977: iload_3
    //   978: iconst_1
    //   979: iadd
    //   980: istore_3
    //   981: goto -> 889
    //   984: iconst_0
    //   985: istore_3
    //   986: iload #5
    //   988: istore #4
    //   990: iload_3
    //   991: aload_0
    //   992: getfield d : [Ljava/lang/Number;
    //   995: arraylength
    //   996: if_icmpge -> 1031
    //   999: aload_0
    //   1000: getfield j : [Ljava/lang/Number;
    //   1003: iload_3
    //   1004: aload #8
    //   1006: invokevirtual floatValue : ()F
    //   1009: aload_0
    //   1010: getfield k : [Ljava/lang/Number;
    //   1013: iload_3
    //   1014: aaload
    //   1015: invokevirtual intValue : ()I
    //   1018: i2f
    //   1019: fsub
    //   1020: invokestatic valueOf : (F)Ljava/lang/Float;
    //   1023: aastore
    //   1024: iload_3
    //   1025: iconst_1
    //   1026: iadd
    //   1027: istore_3
    //   1028: goto -> 986
    //   1031: iload #4
    //   1033: aload_0
    //   1034: getfield d : [Ljava/lang/Number;
    //   1037: arraylength
    //   1038: if_icmpge -> 1076
    //   1041: aload_0
    //   1042: getfield l : [Ljava/lang/Number;
    //   1045: iload #4
    //   1047: aload_0
    //   1048: getfield l : [Ljava/lang/Number;
    //   1051: iload #4
    //   1053: aaload
    //   1054: invokevirtual floatValue : ()F
    //   1057: aload #7
    //   1059: invokevirtual floatValue : ()F
    //   1062: fsub
    //   1063: invokestatic valueOf : (F)Ljava/lang/Float;
    //   1066: aastore
    //   1067: iload #4
    //   1069: iconst_1
    //   1070: iadd
    //   1071: istore #4
    //   1073: goto -> 1031
    //   1076: new android/graphics/Paint
    //   1079: dup
    //   1080: invokespecial <init> : ()V
    //   1083: astore_1
    //   1084: aload_1
    //   1085: sipush #255
    //   1088: invokevirtual setAlpha : (I)V
    //   1091: aload_1
    //   1092: new android/graphics/LinearGradient
    //   1095: dup
    //   1096: fconst_0
    //   1097: fconst_0
    //   1098: ldc 200.0
    //   1100: ldc 200.0
    //   1102: sipush #220
    //   1105: sipush #212
    //   1108: sipush #211
    //   1111: invokestatic rgb : (III)I
    //   1114: sipush #220
    //   1117: sipush #212
    //   1120: sipush #211
    //   1123: invokestatic rgb : (III)I
    //   1126: getstatic android/graphics/Shader$TileMode.CLAMP : Landroid/graphics/Shader$TileMode;
    //   1129: invokespecial <init> : (FFFFIILandroid/graphics/Shader$TileMode;)V
    //   1132: invokevirtual setShader : (Landroid/graphics/Shader;)Landroid/graphics/Shader;
    //   1135: pop
    //   1136: iconst_1
    //   1137: ireturn
    // Exception table:
    //   from	to	target	type
    //   265	319	380	java/lang/NumberFormatException
    //   325	345	380	java/lang/NumberFormatException
    //   351	371	380	java/lang/NumberFormatException
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((Activity)this.b).getLayoutInflater().inflate(2130968879, null);
    fuu fuu = this.a.get(paramInt);
    TextView textView1 = (TextView)view.findViewById(2131756585);
    TextView textView2 = (TextView)view.findViewById(2131756586);
    TextView textView3 = (TextView)view.findViewById(2131756589);
    TextView textView4 = (TextView)view.findViewById(2131756590);
    this.m = 0;
    if (fuu.getExtracto() != null && fuu.getExtracto().y() != null && fuu.getExtracto().y().size() > 0)
      a(fuu.getExtracto()); 
    textView1.setText("Conta Santander");
    textView2.setText(naq.c(fuu.getAgencia(), fuu.getCuenta()));
    textView3.setText(naj.f(((fuu)this.a.get(paramInt)).getExtractoHome().u()));
    textView4.setText(naj.f(fuu.getValor()));
    paramViewGroup.addView(view, 0);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */