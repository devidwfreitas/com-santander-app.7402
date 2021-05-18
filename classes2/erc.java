public final class erc {
  public static final int a = 33;
  
  public static final int b = 0;
  
  private static final int c = 32;
  
  private static final int d = 4;
  
  private static final int[] e = new int[] { 
      4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 
      10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 
      10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 
      12, 12, 12 };
  
  private static int a(int paramInt, boolean paramBoolean) {
    if (paramBoolean) {
      byte b1 = 88;
      return (b1 + paramInt * 16) * paramInt;
    } 
    byte b = 112;
    return (b + paramInt * 16) * paramInt;
  }
  
  public static era a(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, 33, 0);
  }
  
  public static era a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: new erd
    //   3: dup
    //   4: aload_0
    //   5: invokespecial <init> : ([B)V
    //   8: invokevirtual a : ()Lets;
    //   11: astore #13
    //   13: aload #13
    //   15: invokevirtual a : ()I
    //   18: iload_1
    //   19: imul
    //   20: bipush #100
    //   22: idiv
    //   23: bipush #11
    //   25: iadd
    //   26: istore #6
    //   28: aload #13
    //   30: invokevirtual a : ()I
    //   33: istore #7
    //   35: iload_2
    //   36: ifeq -> 246
    //   39: iload_2
    //   40: ifge -> 89
    //   43: iconst_1
    //   44: istore #11
    //   46: iload_2
    //   47: invokestatic abs : (I)I
    //   50: istore #4
    //   52: iload #11
    //   54: ifeq -> 95
    //   57: iconst_4
    //   58: istore_1
    //   59: iload #4
    //   61: iload_1
    //   62: if_icmple -> 101
    //   65: new java/lang/IllegalArgumentException
    //   68: dup
    //   69: ldc 'Illegal value %s for layers'
    //   71: iconst_1
    //   72: anewarray java/lang/Object
    //   75: dup
    //   76: iconst_0
    //   77: iload_2
    //   78: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   81: aastore
    //   82: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   85: invokespecial <init> : (Ljava/lang/String;)V
    //   88: athrow
    //   89: iconst_0
    //   90: istore #11
    //   92: goto -> 46
    //   95: bipush #32
    //   97: istore_1
    //   98: goto -> 59
    //   101: iload #4
    //   103: iload #11
    //   105: invokestatic a : (IZ)I
    //   108: istore_3
    //   109: getstatic erc.e : [I
    //   112: iload #4
    //   114: iaload
    //   115: istore_1
    //   116: aload #13
    //   118: iload_1
    //   119: invokestatic a : (Lets;I)Lets;
    //   122: astore_0
    //   123: aload_0
    //   124: invokevirtual a : ()I
    //   127: iload #6
    //   129: iadd
    //   130: iload_3
    //   131: iload_3
    //   132: iload_1
    //   133: irem
    //   134: isub
    //   135: if_icmple -> 148
    //   138: new java/lang/IllegalArgumentException
    //   141: dup
    //   142: ldc 'Data to large for user specified layer'
    //   144: invokespecial <init> : (Ljava/lang/String;)V
    //   147: athrow
    //   148: iload #11
    //   150: ifeq -> 174
    //   153: aload_0
    //   154: invokevirtual a : ()I
    //   157: iload_1
    //   158: bipush #64
    //   160: imul
    //   161: if_icmple -> 174
    //   164: new java/lang/IllegalArgumentException
    //   167: dup
    //   168: ldc 'Data to large for user specified layer'
    //   170: invokespecial <init> : (Ljava/lang/String;)V
    //   173: athrow
    //   174: iload #4
    //   176: istore_2
    //   177: aload_0
    //   178: iload_3
    //   179: iload_1
    //   180: invokestatic a : (Lets;II)Lets;
    //   183: astore #12
    //   185: aload_0
    //   186: invokevirtual a : ()I
    //   189: iload_1
    //   190: idiv
    //   191: istore #9
    //   193: iload #11
    //   195: iload_2
    //   196: iload #9
    //   198: invokestatic a : (ZII)Lets;
    //   201: astore #13
    //   203: iload #11
    //   205: ifeq -> 408
    //   208: iload_2
    //   209: iconst_4
    //   210: imul
    //   211: bipush #11
    //   213: iadd
    //   214: istore_1
    //   215: iload_1
    //   216: newarray int
    //   218: astore #14
    //   220: iload #11
    //   222: ifeq -> 683
    //   225: iconst_0
    //   226: istore_3
    //   227: iload_3
    //   228: aload #14
    //   230: arraylength
    //   231: if_icmpge -> 418
    //   234: aload #14
    //   236: iload_3
    //   237: iload_3
    //   238: iastore
    //   239: iload_3
    //   240: iconst_1
    //   241: iadd
    //   242: istore_3
    //   243: goto -> 227
    //   246: iconst_0
    //   247: istore_3
    //   248: aconst_null
    //   249: astore_0
    //   250: iconst_0
    //   251: istore_2
    //   252: iload_2
    //   253: bipush #32
    //   255: if_icmple -> 268
    //   258: new java/lang/IllegalArgumentException
    //   261: dup
    //   262: ldc 'Data too large for an Aztec code'
    //   264: invokespecial <init> : (Ljava/lang/String;)V
    //   267: athrow
    //   268: iload_2
    //   269: iconst_3
    //   270: if_icmpgt -> 318
    //   273: iconst_1
    //   274: istore #11
    //   276: iload #11
    //   278: ifeq -> 324
    //   281: iload_2
    //   282: iconst_1
    //   283: iadd
    //   284: istore #4
    //   286: iload #4
    //   288: iload #11
    //   290: invokestatic a : (IZ)I
    //   293: istore #5
    //   295: iload #7
    //   297: iload #6
    //   299: iadd
    //   300: iload #5
    //   302: if_icmple -> 330
    //   305: aload_0
    //   306: astore #12
    //   308: iload_2
    //   309: iconst_1
    //   310: iadd
    //   311: istore_2
    //   312: aload #12
    //   314: astore_0
    //   315: goto -> 252
    //   318: iconst_0
    //   319: istore #11
    //   321: goto -> 276
    //   324: iload_2
    //   325: istore #4
    //   327: goto -> 286
    //   330: iload_3
    //   331: istore_1
    //   332: iload_3
    //   333: getstatic erc.e : [I
    //   336: iload #4
    //   338: iaload
    //   339: if_icmpeq -> 356
    //   342: getstatic erc.e : [I
    //   345: iload #4
    //   347: iaload
    //   348: istore_1
    //   349: aload #13
    //   351: iload_1
    //   352: invokestatic a : (Lets;I)Lets;
    //   355: astore_0
    //   356: iload #11
    //   358: ifeq -> 377
    //   361: aload_0
    //   362: astore #12
    //   364: iload_1
    //   365: istore_3
    //   366: aload_0
    //   367: invokevirtual a : ()I
    //   370: iload_1
    //   371: bipush #64
    //   373: imul
    //   374: if_icmpgt -> 308
    //   377: aload_0
    //   378: astore #12
    //   380: iload_1
    //   381: istore_3
    //   382: aload_0
    //   383: invokevirtual a : ()I
    //   386: iload #6
    //   388: iadd
    //   389: iload #5
    //   391: iload #5
    //   393: iload_1
    //   394: irem
    //   395: isub
    //   396: if_icmpgt -> 308
    //   399: iload #4
    //   401: istore_2
    //   402: iload #5
    //   404: istore_3
    //   405: goto -> 177
    //   408: iload_2
    //   409: iconst_4
    //   410: imul
    //   411: bipush #14
    //   413: iadd
    //   414: istore_1
    //   415: goto -> 215
    //   418: iload_1
    //   419: istore_3
    //   420: new ett
    //   423: dup
    //   424: iload_3
    //   425: invokespecial <init> : (I)V
    //   428: astore_0
    //   429: iconst_0
    //   430: istore #5
    //   432: iconst_0
    //   433: istore #4
    //   435: iload #4
    //   437: iload_2
    //   438: if_icmpge -> 813
    //   441: iload #11
    //   443: ifeq -> 771
    //   446: iload_2
    //   447: iload #4
    //   449: isub
    //   450: iconst_4
    //   451: imul
    //   452: bipush #9
    //   454: iadd
    //   455: istore #6
    //   457: iconst_0
    //   458: istore #7
    //   460: iload #7
    //   462: iload #6
    //   464: if_icmpge -> 794
    //   467: iload #7
    //   469: iconst_2
    //   470: imul
    //   471: istore #10
    //   473: iconst_0
    //   474: istore #8
    //   476: iload #8
    //   478: iconst_2
    //   479: if_icmpge -> 785
    //   482: aload #12
    //   484: iload #5
    //   486: iload #10
    //   488: iadd
    //   489: iload #8
    //   491: iadd
    //   492: invokevirtual a : (I)Z
    //   495: ifeq -> 522
    //   498: aload_0
    //   499: aload #14
    //   501: iload #4
    //   503: iconst_2
    //   504: imul
    //   505: iload #8
    //   507: iadd
    //   508: iaload
    //   509: aload #14
    //   511: iload #4
    //   513: iconst_2
    //   514: imul
    //   515: iload #7
    //   517: iadd
    //   518: iaload
    //   519: invokevirtual b : (II)V
    //   522: aload #12
    //   524: iload #6
    //   526: iconst_2
    //   527: imul
    //   528: iload #5
    //   530: iadd
    //   531: iload #10
    //   533: iadd
    //   534: iload #8
    //   536: iadd
    //   537: invokevirtual a : (I)Z
    //   540: ifeq -> 571
    //   543: aload_0
    //   544: aload #14
    //   546: iload #4
    //   548: iconst_2
    //   549: imul
    //   550: iload #7
    //   552: iadd
    //   553: iaload
    //   554: aload #14
    //   556: iload_1
    //   557: iconst_1
    //   558: isub
    //   559: iload #4
    //   561: iconst_2
    //   562: imul
    //   563: isub
    //   564: iload #8
    //   566: isub
    //   567: iaload
    //   568: invokevirtual b : (II)V
    //   571: aload #12
    //   573: iload #6
    //   575: iconst_4
    //   576: imul
    //   577: iload #5
    //   579: iadd
    //   580: iload #10
    //   582: iadd
    //   583: iload #8
    //   585: iadd
    //   586: invokevirtual a : (I)Z
    //   589: ifeq -> 624
    //   592: aload_0
    //   593: aload #14
    //   595: iload_1
    //   596: iconst_1
    //   597: isub
    //   598: iload #4
    //   600: iconst_2
    //   601: imul
    //   602: isub
    //   603: iload #8
    //   605: isub
    //   606: iaload
    //   607: aload #14
    //   609: iload_1
    //   610: iconst_1
    //   611: isub
    //   612: iload #4
    //   614: iconst_2
    //   615: imul
    //   616: isub
    //   617: iload #7
    //   619: isub
    //   620: iaload
    //   621: invokevirtual b : (II)V
    //   624: aload #12
    //   626: iload #6
    //   628: bipush #6
    //   630: imul
    //   631: iload #5
    //   633: iadd
    //   634: iload #10
    //   636: iadd
    //   637: iload #8
    //   639: iadd
    //   640: invokevirtual a : (I)Z
    //   643: ifeq -> 674
    //   646: aload_0
    //   647: aload #14
    //   649: iload_1
    //   650: iconst_1
    //   651: isub
    //   652: iload #4
    //   654: iconst_2
    //   655: imul
    //   656: isub
    //   657: iload #7
    //   659: isub
    //   660: iaload
    //   661: aload #14
    //   663: iload #4
    //   665: iconst_2
    //   666: imul
    //   667: iload #8
    //   669: iadd
    //   670: iaload
    //   671: invokevirtual b : (II)V
    //   674: iload #8
    //   676: iconst_1
    //   677: iadd
    //   678: istore #8
    //   680: goto -> 476
    //   683: iload_1
    //   684: iconst_1
    //   685: iadd
    //   686: iload_1
    //   687: iconst_2
    //   688: idiv
    //   689: iconst_1
    //   690: isub
    //   691: bipush #15
    //   693: idiv
    //   694: iconst_2
    //   695: imul
    //   696: iadd
    //   697: istore #5
    //   699: iload_1
    //   700: iconst_2
    //   701: idiv
    //   702: istore #6
    //   704: iload #5
    //   706: iconst_2
    //   707: idiv
    //   708: istore #7
    //   710: iconst_0
    //   711: istore #4
    //   713: iload #5
    //   715: istore_3
    //   716: iload #4
    //   718: iload #6
    //   720: if_icmpge -> 420
    //   723: iload #4
    //   725: bipush #15
    //   727: idiv
    //   728: iload #4
    //   730: iadd
    //   731: istore_3
    //   732: aload #14
    //   734: iload #6
    //   736: iload #4
    //   738: isub
    //   739: iconst_1
    //   740: isub
    //   741: iload #7
    //   743: iload_3
    //   744: isub
    //   745: iconst_1
    //   746: isub
    //   747: iastore
    //   748: aload #14
    //   750: iload #6
    //   752: iload #4
    //   754: iadd
    //   755: iload_3
    //   756: iload #7
    //   758: iadd
    //   759: iconst_1
    //   760: iadd
    //   761: iastore
    //   762: iload #4
    //   764: iconst_1
    //   765: iadd
    //   766: istore #4
    //   768: goto -> 713
    //   771: iload_2
    //   772: iload #4
    //   774: isub
    //   775: iconst_4
    //   776: imul
    //   777: bipush #12
    //   779: iadd
    //   780: istore #6
    //   782: goto -> 457
    //   785: iload #7
    //   787: iconst_1
    //   788: iadd
    //   789: istore #7
    //   791: goto -> 460
    //   794: iload #6
    //   796: bipush #8
    //   798: imul
    //   799: iload #5
    //   801: iadd
    //   802: istore #5
    //   804: iload #4
    //   806: iconst_1
    //   807: iadd
    //   808: istore #4
    //   810: goto -> 435
    //   813: aload_0
    //   814: iload #11
    //   816: iload_3
    //   817: aload #13
    //   819: invokestatic a : (Lett;ZILets;)V
    //   822: iload #11
    //   824: ifeq -> 879
    //   827: aload_0
    //   828: iload_3
    //   829: iconst_2
    //   830: idiv
    //   831: iconst_5
    //   832: invokestatic a : (Lett;II)V
    //   835: new era
    //   838: dup
    //   839: invokespecial <init> : ()V
    //   842: astore #12
    //   844: aload #12
    //   846: iload #11
    //   848: invokevirtual a : (Z)V
    //   851: aload #12
    //   853: iload_3
    //   854: invokevirtual a : (I)V
    //   857: aload #12
    //   859: iload_2
    //   860: invokevirtual b : (I)V
    //   863: aload #12
    //   865: iload #9
    //   867: invokevirtual c : (I)V
    //   870: aload #12
    //   872: aload_0
    //   873: invokevirtual a : (Lett;)V
    //   876: aload #12
    //   878: areturn
    //   879: aload_0
    //   880: iload_3
    //   881: iconst_2
    //   882: idiv
    //   883: bipush #7
    //   885: invokestatic a : (Lett;II)V
    //   888: iconst_0
    //   889: istore #5
    //   891: iconst_0
    //   892: istore #4
    //   894: iload #5
    //   896: iload_1
    //   897: iconst_2
    //   898: idiv
    //   899: iconst_1
    //   900: isub
    //   901: if_icmpge -> 835
    //   904: iload_3
    //   905: iconst_2
    //   906: idiv
    //   907: iconst_1
    //   908: iand
    //   909: istore #6
    //   911: iload #6
    //   913: iload_3
    //   914: if_icmpge -> 974
    //   917: aload_0
    //   918: iload_3
    //   919: iconst_2
    //   920: idiv
    //   921: iload #4
    //   923: isub
    //   924: iload #6
    //   926: invokevirtual b : (II)V
    //   929: aload_0
    //   930: iload_3
    //   931: iconst_2
    //   932: idiv
    //   933: iload #4
    //   935: iadd
    //   936: iload #6
    //   938: invokevirtual b : (II)V
    //   941: aload_0
    //   942: iload #6
    //   944: iload_3
    //   945: iconst_2
    //   946: idiv
    //   947: iload #4
    //   949: isub
    //   950: invokevirtual b : (II)V
    //   953: aload_0
    //   954: iload #6
    //   956: iload_3
    //   957: iconst_2
    //   958: idiv
    //   959: iload #4
    //   961: iadd
    //   962: invokevirtual b : (II)V
    //   965: iload #6
    //   967: iconst_2
    //   968: iadd
    //   969: istore #6
    //   971: goto -> 911
    //   974: iload #5
    //   976: bipush #15
    //   978: iadd
    //   979: istore #5
    //   981: iload #4
    //   983: bipush #16
    //   985: iadd
    //   986: istore #4
    //   988: goto -> 894
  }
  
  static ets a(ets paramets, int paramInt) {
    // Byte code:
    //   0: new ets
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #8
    //   9: aload_0
    //   10: invokevirtual a : ()I
    //   13: istore #6
    //   15: iconst_1
    //   16: iload_1
    //   17: ishl
    //   18: iconst_2
    //   19: isub
    //   20: istore #7
    //   22: iconst_0
    //   23: istore_2
    //   24: iload_2
    //   25: iload #6
    //   27: if_icmpge -> 153
    //   30: iconst_0
    //   31: istore_3
    //   32: iconst_0
    //   33: istore #4
    //   35: iload_3
    //   36: iload_1
    //   37: if_icmpge -> 85
    //   40: iload_2
    //   41: iload_3
    //   42: iadd
    //   43: iload #6
    //   45: if_icmpge -> 62
    //   48: iload #4
    //   50: istore #5
    //   52: aload_0
    //   53: iload_2
    //   54: iload_3
    //   55: iadd
    //   56: invokevirtual a : (I)Z
    //   59: ifeq -> 74
    //   62: iload #4
    //   64: iconst_1
    //   65: iload_1
    //   66: iconst_1
    //   67: isub
    //   68: iload_3
    //   69: isub
    //   70: ishl
    //   71: ior
    //   72: istore #5
    //   74: iload_3
    //   75: iconst_1
    //   76: iadd
    //   77: istore_3
    //   78: iload #5
    //   80: istore #4
    //   82: goto -> 35
    //   85: iload #4
    //   87: iload #7
    //   89: iand
    //   90: iload #7
    //   92: if_icmpne -> 117
    //   95: aload #8
    //   97: iload #4
    //   99: iload #7
    //   101: iand
    //   102: iload_1
    //   103: invokevirtual c : (II)V
    //   106: iload_2
    //   107: iconst_1
    //   108: isub
    //   109: istore_2
    //   110: iload_2
    //   111: iload_1
    //   112: iadd
    //   113: istore_2
    //   114: goto -> 24
    //   117: iload #4
    //   119: iload #7
    //   121: iand
    //   122: ifne -> 142
    //   125: aload #8
    //   127: iload #4
    //   129: iconst_1
    //   130: ior
    //   131: iload_1
    //   132: invokevirtual c : (II)V
    //   135: iload_2
    //   136: iconst_1
    //   137: isub
    //   138: istore_2
    //   139: goto -> 110
    //   142: aload #8
    //   144: iload #4
    //   146: iload_1
    //   147: invokevirtual c : (II)V
    //   150: goto -> 110
    //   153: aload #8
    //   155: areturn
  }
  
  private static ets a(ets paramets, int paramInt1, int paramInt2) {
    boolean bool = false;
    int i = paramets.a() / paramInt2;
    euk euk = new euk(a(paramInt2));
    int j = paramInt1 / paramInt2;
    int[] arrayOfInt = b(paramets, paramInt2, j);
    euk.a(arrayOfInt, j - i);
    ets ets1 = new ets();
    ets1.c(0, paramInt1 % paramInt2);
    i = arrayOfInt.length;
    for (paramInt1 = bool; paramInt1 < i; paramInt1++)
      ets1.c(arrayOfInt[paramInt1], paramInt2); 
    return ets1;
  }
  
  static ets a(boolean paramBoolean, int paramInt1, int paramInt2) {
    ets ets = new ets();
    if (paramBoolean) {
      ets.c(paramInt1 - 1, 2);
      ets.c(paramInt2 - 1, 6);
      return a(ets, 28, 4);
    } 
    ets.c(paramInt1 - 1, 5);
    ets.c(paramInt2 - 1, 11);
    return a(ets, 40, 4);
  }
  
  private static euh a(int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("Unsupported word size " + paramInt);
      case 4:
        return euh.d;
      case 6:
        return euh.c;
      case 8:
        return euh.g;
      case 10:
        return euh.b;
      case 12:
        break;
    } 
    return euh.a;
  }
  
  private static void a(ett paramett, int paramInt1, int paramInt2) {
    for (int i = 0; i < paramInt2; i += 2) {
      int j;
      for (j = paramInt1 - i; j <= paramInt1 + i; j++) {
        paramett.b(j, paramInt1 - i);
        paramett.b(j, paramInt1 + i);
        paramett.b(paramInt1 - i, j);
        paramett.b(paramInt1 + i, j);
      } 
    } 
    paramett.b(paramInt1 - paramInt2, paramInt1 - paramInt2);
    paramett.b(paramInt1 - paramInt2 + 1, paramInt1 - paramInt2);
    paramett.b(paramInt1 - paramInt2, paramInt1 - paramInt2 + 1);
    paramett.b(paramInt1 + paramInt2, paramInt1 - paramInt2);
    paramett.b(paramInt1 + paramInt2, paramInt1 - paramInt2 + 1);
    paramett.b(paramInt1 + paramInt2, paramInt1 + paramInt2 - 1);
  }
  
  private static void a(ett paramett, boolean paramBoolean, int paramInt, ets paramets) {
    boolean bool = false;
    int i = 0;
    int j = paramInt / 2;
    paramInt = bool;
    if (paramBoolean) {
      for (paramInt = i; paramInt < 7; paramInt++) {
        i = j - 3 + paramInt;
        if (paramets.a(paramInt))
          paramett.b(i, j - 5); 
        if (paramets.a(paramInt + 7))
          paramett.b(j + 5, i); 
        if (paramets.a(20 - paramInt))
          paramett.b(i, j + 5); 
        if (paramets.a(27 - paramInt))
          paramett.b(j - 5, i); 
      } 
    } else {
      while (paramInt < 10) {
        i = j - 5 + paramInt + paramInt / 5;
        if (paramets.a(paramInt))
          paramett.b(i, j - 7); 
        if (paramets.a(paramInt + 10))
          paramett.b(j + 7, i); 
        if (paramets.a(29 - paramInt))
          paramett.b(i, j + 7); 
        if (paramets.a(39 - paramInt))
          paramett.b(j - 7, i); 
        paramInt++;
      } 
    } 
  }
  
  private static int[] b(ets paramets, int paramInt1, int paramInt2) {
    int[] arrayOfInt = new int[paramInt2];
    int i = paramets.a() / paramInt1;
    for (paramInt2 = 0; paramInt2 < i; paramInt2++) {
      int j = 0;
      int k = 0;
      while (j < paramInt1) {
        byte b;
        if (paramets.a(paramInt2 * paramInt1 + j)) {
          b = 1 << paramInt1 - j - 1;
        } else {
          b = 0;
        } 
        k |= b;
        j++;
      } 
      arrayOfInt[paramInt2] = k;
    } 
    return arrayOfInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */