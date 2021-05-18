import java.nio.charset.Charset;
import java.util.Map;

public final class eud {
  static {
    if ("SJIS".equalsIgnoreCase(c) || "EUC_JP".equalsIgnoreCase(c)) {
      bool = true;
    } else {
      bool = false;
    } 
    g = bool;
  }
  
  public static String a(byte[] paramArrayOfbyte, Map<epy, ?> paramMap) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 23
    //   4: aload_1
    //   5: getstatic epy.CHARACTER_SET : Lepy;
    //   8: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   13: checkcast java/lang/String
    //   16: astore_1
    //   17: aload_1
    //   18: ifnull -> 23
    //   21: aload_1
    //   22: areturn
    //   23: aload_0
    //   24: arraylength
    //   25: istore #22
    //   27: iconst_1
    //   28: istore #19
    //   30: iconst_1
    //   31: istore_3
    //   32: iconst_0
    //   33: istore #10
    //   35: iconst_0
    //   36: istore #16
    //   38: iconst_0
    //   39: istore #15
    //   41: iconst_0
    //   42: istore #14
    //   44: iconst_0
    //   45: istore #5
    //   47: iconst_0
    //   48: istore #4
    //   50: iconst_0
    //   51: istore #8
    //   53: iconst_0
    //   54: istore_2
    //   55: iconst_0
    //   56: istore #20
    //   58: aload_0
    //   59: arraylength
    //   60: iconst_3
    //   61: if_icmple -> 263
    //   64: aload_0
    //   65: iconst_0
    //   66: baload
    //   67: bipush #-17
    //   69: if_icmpne -> 263
    //   72: aload_0
    //   73: iconst_1
    //   74: baload
    //   75: bipush #-69
    //   77: if_icmpne -> 263
    //   80: aload_0
    //   81: iconst_2
    //   82: baload
    //   83: bipush #-65
    //   85: if_icmpne -> 263
    //   88: iconst_1
    //   89: istore #11
    //   91: iconst_0
    //   92: istore #12
    //   94: iconst_0
    //   95: istore #13
    //   97: iconst_0
    //   98: istore #9
    //   100: iconst_1
    //   101: istore #6
    //   103: iload #12
    //   105: iload #22
    //   107: if_icmpge -> 623
    //   110: iload #19
    //   112: ifne -> 124
    //   115: iload_3
    //   116: ifne -> 124
    //   119: iload #6
    //   121: ifeq -> 623
    //   124: aload_0
    //   125: iload #12
    //   127: baload
    //   128: sipush #255
    //   131: iand
    //   132: istore #21
    //   134: iload #6
    //   136: ifeq -> 817
    //   139: iload #10
    //   141: ifle -> 282
    //   144: iload #21
    //   146: sipush #128
    //   149: iand
    //   150: ifne -> 269
    //   153: iconst_0
    //   154: istore #7
    //   156: iload #20
    //   158: istore #17
    //   160: iload #19
    //   162: istore #18
    //   164: iload #19
    //   166: ifeq -> 191
    //   169: iload #21
    //   171: bipush #127
    //   173: if_icmple -> 392
    //   176: iload #21
    //   178: sipush #160
    //   181: if_icmpge -> 392
    //   184: iconst_0
    //   185: istore #18
    //   187: iload #20
    //   189: istore #17
    //   191: iload_3
    //   192: ifeq -> 808
    //   195: iload #5
    //   197: ifle -> 468
    //   200: iload #21
    //   202: bipush #64
    //   204: if_icmplt -> 222
    //   207: iload #21
    //   209: bipush #127
    //   211: if_icmpeq -> 222
    //   214: iload #21
    //   216: sipush #252
    //   219: if_icmple -> 453
    //   222: iload #9
    //   224: istore_3
    //   225: iconst_0
    //   226: istore #6
    //   228: iload #12
    //   230: iconst_1
    //   231: iadd
    //   232: istore #21
    //   234: iload #6
    //   236: istore #12
    //   238: iload #7
    //   240: istore #6
    //   242: iload_3
    //   243: istore #9
    //   245: iload #12
    //   247: istore_3
    //   248: iload #17
    //   250: istore #20
    //   252: iload #18
    //   254: istore #19
    //   256: iload #21
    //   258: istore #12
    //   260: goto -> 103
    //   263: iconst_0
    //   264: istore #11
    //   266: goto -> 91
    //   269: iload #10
    //   271: iconst_1
    //   272: isub
    //   273: istore #10
    //   275: iload #6
    //   277: istore #7
    //   279: goto -> 156
    //   282: iload #21
    //   284: sipush #128
    //   287: iand
    //   288: ifeq -> 817
    //   291: iload #21
    //   293: bipush #64
    //   295: iand
    //   296: ifne -> 305
    //   299: iconst_0
    //   300: istore #7
    //   302: goto -> 156
    //   305: iload #10
    //   307: iconst_1
    //   308: iadd
    //   309: istore #10
    //   311: iload #21
    //   313: bipush #32
    //   315: iand
    //   316: ifne -> 332
    //   319: iload #16
    //   321: iconst_1
    //   322: iadd
    //   323: istore #16
    //   325: iload #6
    //   327: istore #7
    //   329: goto -> 156
    //   332: iload #10
    //   334: iconst_1
    //   335: iadd
    //   336: istore #10
    //   338: iload #21
    //   340: bipush #16
    //   342: iand
    //   343: ifne -> 359
    //   346: iload #15
    //   348: iconst_1
    //   349: iadd
    //   350: istore #15
    //   352: iload #6
    //   354: istore #7
    //   356: goto -> 156
    //   359: iload #10
    //   361: iconst_1
    //   362: iadd
    //   363: istore #10
    //   365: iload #21
    //   367: bipush #8
    //   369: iand
    //   370: ifne -> 386
    //   373: iload #14
    //   375: iconst_1
    //   376: iadd
    //   377: istore #14
    //   379: iload #6
    //   381: istore #7
    //   383: goto -> 156
    //   386: iconst_0
    //   387: istore #7
    //   389: goto -> 156
    //   392: iload #20
    //   394: istore #17
    //   396: iload #19
    //   398: istore #18
    //   400: iload #21
    //   402: sipush #159
    //   405: if_icmple -> 191
    //   408: iload #21
    //   410: sipush #192
    //   413: if_icmplt -> 440
    //   416: iload #21
    //   418: sipush #215
    //   421: if_icmpeq -> 440
    //   424: iload #20
    //   426: istore #17
    //   428: iload #19
    //   430: istore #18
    //   432: iload #21
    //   434: sipush #247
    //   437: if_icmpne -> 191
    //   440: iload #20
    //   442: iconst_1
    //   443: iadd
    //   444: istore #17
    //   446: iload #19
    //   448: istore #18
    //   450: goto -> 191
    //   453: iload_3
    //   454: istore #6
    //   456: iload #9
    //   458: istore_3
    //   459: iload #5
    //   461: iconst_1
    //   462: isub
    //   463: istore #5
    //   465: goto -> 228
    //   468: iload #21
    //   470: sipush #128
    //   473: if_icmpeq -> 492
    //   476: iload #21
    //   478: sipush #160
    //   481: if_icmpeq -> 492
    //   484: iload #21
    //   486: sipush #239
    //   489: if_icmple -> 501
    //   492: iload #9
    //   494: istore_3
    //   495: iconst_0
    //   496: istore #6
    //   498: goto -> 228
    //   501: iload #21
    //   503: sipush #160
    //   506: if_icmple -> 562
    //   509: iload #21
    //   511: sipush #224
    //   514: if_icmpge -> 562
    //   517: iload #4
    //   519: iconst_1
    //   520: iadd
    //   521: istore #6
    //   523: iload #8
    //   525: iconst_1
    //   526: iadd
    //   527: istore #4
    //   529: iload #4
    //   531: iload_2
    //   532: if_icmple -> 788
    //   535: iconst_0
    //   536: istore #19
    //   538: iload #4
    //   540: istore #8
    //   542: iload_3
    //   543: istore #9
    //   545: iload #4
    //   547: istore_2
    //   548: iload #19
    //   550: istore_3
    //   551: iload #6
    //   553: istore #4
    //   555: iload #9
    //   557: istore #6
    //   559: goto -> 228
    //   562: iload #21
    //   564: bipush #127
    //   566: if_icmple -> 612
    //   569: iload #5
    //   571: iconst_1
    //   572: iadd
    //   573: istore #6
    //   575: iconst_0
    //   576: istore #8
    //   578: iload #9
    //   580: iconst_1
    //   581: iadd
    //   582: istore #5
    //   584: iload #5
    //   586: iload #13
    //   588: if_icmple -> 771
    //   591: iload #5
    //   593: istore #13
    //   595: iload_3
    //   596: istore #9
    //   598: iload #5
    //   600: istore_3
    //   601: iload #6
    //   603: istore #5
    //   605: iload #9
    //   607: istore #6
    //   609: goto -> 228
    //   612: iconst_0
    //   613: istore #8
    //   615: iload_3
    //   616: istore #6
    //   618: iconst_0
    //   619: istore_3
    //   620: goto -> 228
    //   623: iload #6
    //   625: ifeq -> 768
    //   628: iload #10
    //   630: ifle -> 768
    //   633: iconst_0
    //   634: istore #6
    //   636: iload_3
    //   637: istore #7
    //   639: iload_3
    //   640: ifeq -> 654
    //   643: iload_3
    //   644: istore #7
    //   646: iload #5
    //   648: ifle -> 654
    //   651: iconst_0
    //   652: istore #7
    //   654: iload #6
    //   656: ifeq -> 678
    //   659: iload #11
    //   661: ifne -> 675
    //   664: iload #16
    //   666: iload #15
    //   668: iadd
    //   669: iload #14
    //   671: iadd
    //   672: ifle -> 678
    //   675: ldc 'UTF8'
    //   677: areturn
    //   678: iload #7
    //   680: ifeq -> 703
    //   683: getstatic eud.g : Z
    //   686: ifne -> 700
    //   689: iload_2
    //   690: iconst_3
    //   691: if_icmpge -> 700
    //   694: iload #13
    //   696: iconst_3
    //   697: if_icmplt -> 703
    //   700: ldc 'SJIS'
    //   702: areturn
    //   703: iload #19
    //   705: ifeq -> 740
    //   708: iload #7
    //   710: ifeq -> 740
    //   713: iload_2
    //   714: iconst_2
    //   715: if_icmpne -> 724
    //   718: iload #4
    //   720: iconst_2
    //   721: if_icmpeq -> 734
    //   724: iload #20
    //   726: bipush #10
    //   728: imul
    //   729: iload #22
    //   731: if_icmplt -> 737
    //   734: ldc 'SJIS'
    //   736: areturn
    //   737: ldc 'ISO8859_1'
    //   739: areturn
    //   740: iload #19
    //   742: ifeq -> 748
    //   745: ldc 'ISO8859_1'
    //   747: areturn
    //   748: iload #7
    //   750: ifeq -> 756
    //   753: ldc 'SJIS'
    //   755: areturn
    //   756: iload #6
    //   758: ifeq -> 764
    //   761: ldc 'UTF8'
    //   763: areturn
    //   764: getstatic eud.c : Ljava/lang/String;
    //   767: areturn
    //   768: goto -> 636
    //   771: iload_3
    //   772: istore #9
    //   774: iload #5
    //   776: istore_3
    //   777: iload #6
    //   779: istore #5
    //   781: iload #9
    //   783: istore #6
    //   785: goto -> 228
    //   788: iload_3
    //   789: istore #9
    //   791: iconst_0
    //   792: istore_3
    //   793: iload #4
    //   795: istore #8
    //   797: iload #6
    //   799: istore #4
    //   801: iload #9
    //   803: istore #6
    //   805: goto -> 228
    //   808: iload_3
    //   809: istore #6
    //   811: iload #9
    //   813: istore_3
    //   814: goto -> 228
    //   817: iload #6
    //   819: istore #7
    //   821: goto -> 156
  }
  
  static {
    boolean bool;
  }
  
  public static final String a = "SJIS";
  
  public static final String b = "GB2312";
  
  private static final String c = Charset.defaultCharset().name();
  
  private static final String d = "EUC_JP";
  
  private static final String e = "UTF8";
  
  private static final String f = "ISO8859_1";
  
  private static final boolean g;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */