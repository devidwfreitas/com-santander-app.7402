public final class eug {
  private static final int a = 10;
  
  private static final int b = 1;
  
  private final ett c;
  
  private final int d;
  
  private final int e;
  
  private final int f;
  
  private final int g;
  
  private final int h;
  
  private final int i;
  
  public eug(ett paramett) {
    this(paramett, 10, paramett.f() / 2, paramett.g() / 2);
  }
  
  public eug(ett paramett, int paramInt1, int paramInt2, int paramInt3) {
    this.c = paramett;
    this.d = paramett.g();
    this.e = paramett.f();
    paramInt1 /= 2;
    this.f = paramInt2 - paramInt1;
    this.g = paramInt2 + paramInt1;
    this.i = paramInt3 - paramInt1;
    this.h = paramInt1 + paramInt3;
    if (this.i < 0 || this.f < 0 || this.h >= this.d || this.g >= this.e)
      throw eqh.a(); 
  }
  
  private eqo a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    int j = eue.a(eue.a(paramFloat1, paramFloat2, paramFloat3, paramFloat4));
    paramFloat3 = (paramFloat3 - paramFloat1) / j;
    paramFloat4 = (paramFloat4 - paramFloat2) / j;
    int i;
    for (i = 0; i < j; i++) {
      int k = eue.a(i * paramFloat3 + paramFloat1);
      int m = eue.a(i * paramFloat4 + paramFloat2);
      if (this.c.a(k, m))
        return new eqo(k, m); 
    } 
    return null;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {
    int i = paramInt1;
    if (paramBoolean) {
      while (paramInt1 <= paramInt2) {
        if (this.c.a(paramInt1, paramInt3))
          return true; 
        paramInt1++;
      } 
    } else {
      while (i <= paramInt2) {
        if (this.c.a(paramInt3, i))
          return true; 
        i++;
      } 
    } 
    return false;
  }
  
  private eqo[] a(eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4) {
    float f1 = parameqo1.a();
    float f2 = parameqo1.b();
    float f3 = parameqo2.a();
    float f4 = parameqo2.b();
    float f5 = parameqo3.a();
    float f6 = parameqo3.b();
    float f7 = parameqo4.a();
    float f8 = parameqo4.b();
    return (f1 < this.e / 2.0F) ? new eqo[] { new eqo(f7 - 1.0F, f8 + 1.0F), new eqo(f3 + 1.0F, f4 + 1.0F), new eqo(f5 - 1.0F, f6 - 1.0F), new eqo(f1 + 1.0F, f2 - 1.0F) } : new eqo[] { new eqo(f7 + 1.0F, f8 + 1.0F), new eqo(f3 + 1.0F, f4 - 1.0F), new eqo(f5 - 1.0F, f6 + 1.0F), new eqo(f1 - 1.0F, f2 - 1.0F) };
  }
  
  public eqo[] a() {
    // Byte code:
    //   0: iconst_0
    //   1: istore #13
    //   3: iconst_1
    //   4: istore #12
    //   6: aload_0
    //   7: getfield f : I
    //   10: istore #4
    //   12: aload_0
    //   13: getfield g : I
    //   16: istore_1
    //   17: aload_0
    //   18: getfield i : I
    //   21: istore_2
    //   22: aload_0
    //   23: getfield h : I
    //   26: istore_3
    //   27: iconst_0
    //   28: istore #5
    //   30: iconst_0
    //   31: istore #7
    //   33: iconst_0
    //   34: istore #8
    //   36: iconst_0
    //   37: istore #6
    //   39: iconst_0
    //   40: istore #10
    //   42: iconst_1
    //   43: istore #9
    //   45: iload #9
    //   47: ifeq -> 777
    //   50: iconst_1
    //   51: istore #14
    //   53: iconst_0
    //   54: istore #9
    //   56: iload #14
    //   58: ifne -> 66
    //   61: iload #6
    //   63: ifne -> 126
    //   66: iload_1
    //   67: aload_0
    //   68: getfield e : I
    //   71: if_icmpge -> 126
    //   74: aload_0
    //   75: iload_2
    //   76: iload_3
    //   77: iload_1
    //   78: iconst_0
    //   79: invokespecial a : (IIIZ)Z
    //   82: istore #15
    //   84: iload #15
    //   86: ifeq -> 106
    //   89: iload_1
    //   90: iconst_1
    //   91: iadd
    //   92: istore_1
    //   93: iconst_1
    //   94: istore #6
    //   96: iconst_1
    //   97: istore #9
    //   99: iload #15
    //   101: istore #14
    //   103: goto -> 56
    //   106: iload #15
    //   108: istore #14
    //   110: iload #6
    //   112: ifne -> 56
    //   115: iload_1
    //   116: iconst_1
    //   117: iadd
    //   118: istore_1
    //   119: iload #15
    //   121: istore #14
    //   123: goto -> 56
    //   126: iload_1
    //   127: aload_0
    //   128: getfield e : I
    //   131: if_icmplt -> 218
    //   134: iconst_1
    //   135: istore #6
    //   137: iload_1
    //   138: istore #5
    //   140: iload_3
    //   141: istore_1
    //   142: iload_2
    //   143: istore_3
    //   144: iload #4
    //   146: istore_2
    //   147: iload #6
    //   149: istore #4
    //   151: iload #4
    //   153: ifne -> 752
    //   156: iload #10
    //   158: ifeq -> 752
    //   161: iload #5
    //   163: iload_2
    //   164: isub
    //   165: istore #6
    //   167: iconst_1
    //   168: istore #4
    //   170: aconst_null
    //   171: astore #16
    //   173: iload #4
    //   175: iload #6
    //   177: if_icmpge -> 770
    //   180: aload_0
    //   181: iload_2
    //   182: i2f
    //   183: iload_1
    //   184: iload #4
    //   186: isub
    //   187: i2f
    //   188: iload_2
    //   189: iload #4
    //   191: iadd
    //   192: i2f
    //   193: iload_1
    //   194: i2f
    //   195: invokespecial a : (FFFF)Leqo;
    //   198: astore #16
    //   200: aload #16
    //   202: ifnull -> 561
    //   205: aload #16
    //   207: astore #17
    //   209: aload #17
    //   211: ifnonnull -> 570
    //   214: invokestatic a : ()Leqh;
    //   217: athrow
    //   218: iconst_1
    //   219: istore #14
    //   221: iload #14
    //   223: ifne -> 231
    //   226: iload #8
    //   228: ifne -> 292
    //   231: iload_3
    //   232: aload_0
    //   233: getfield d : I
    //   236: if_icmpge -> 292
    //   239: aload_0
    //   240: iload #4
    //   242: iload_1
    //   243: iload_3
    //   244: iconst_1
    //   245: invokespecial a : (IIIZ)Z
    //   248: istore #15
    //   250: iload #15
    //   252: ifeq -> 272
    //   255: iload_3
    //   256: iconst_1
    //   257: iadd
    //   258: istore_3
    //   259: iconst_1
    //   260: istore #8
    //   262: iconst_1
    //   263: istore #9
    //   265: iload #15
    //   267: istore #14
    //   269: goto -> 221
    //   272: iload #15
    //   274: istore #14
    //   276: iload #8
    //   278: ifne -> 221
    //   281: iload_3
    //   282: iconst_1
    //   283: iadd
    //   284: istore_3
    //   285: iload #15
    //   287: istore #14
    //   289: goto -> 221
    //   292: iload_3
    //   293: aload_0
    //   294: getfield d : I
    //   297: if_icmplt -> 324
    //   300: iconst_1
    //   301: istore #7
    //   303: iload_1
    //   304: istore #5
    //   306: iload_3
    //   307: istore_1
    //   308: iload #4
    //   310: istore #6
    //   312: iload_2
    //   313: istore_3
    //   314: iload #7
    //   316: istore #4
    //   318: iload #6
    //   320: istore_2
    //   321: goto -> 151
    //   324: iconst_1
    //   325: istore #14
    //   327: iload #14
    //   329: ifne -> 337
    //   332: iload #7
    //   334: ifne -> 399
    //   337: iload #4
    //   339: iflt -> 399
    //   342: aload_0
    //   343: iload_2
    //   344: iload_3
    //   345: iload #4
    //   347: iconst_0
    //   348: invokespecial a : (IIIZ)Z
    //   351: istore #15
    //   353: iload #15
    //   355: ifeq -> 377
    //   358: iload #4
    //   360: iconst_1
    //   361: isub
    //   362: istore #4
    //   364: iconst_1
    //   365: istore #7
    //   367: iconst_1
    //   368: istore #9
    //   370: iload #15
    //   372: istore #14
    //   374: goto -> 327
    //   377: iload #15
    //   379: istore #14
    //   381: iload #7
    //   383: ifne -> 327
    //   386: iload #4
    //   388: iconst_1
    //   389: isub
    //   390: istore #4
    //   392: iload #15
    //   394: istore #14
    //   396: goto -> 327
    //   399: iload #4
    //   401: ifge -> 428
    //   404: iconst_1
    //   405: istore #7
    //   407: iload_1
    //   408: istore #5
    //   410: iload_3
    //   411: istore_1
    //   412: iload #4
    //   414: istore #6
    //   416: iload_2
    //   417: istore_3
    //   418: iload #7
    //   420: istore #4
    //   422: iload #6
    //   424: istore_2
    //   425: goto -> 151
    //   428: iload #5
    //   430: istore #11
    //   432: iconst_1
    //   433: istore #14
    //   435: iload #9
    //   437: istore #5
    //   439: iload #11
    //   441: istore #9
    //   443: iload #14
    //   445: ifne -> 453
    //   448: iload #9
    //   450: ifne -> 510
    //   453: iload_2
    //   454: iflt -> 510
    //   457: aload_0
    //   458: iload #4
    //   460: iload_1
    //   461: iload_2
    //   462: iconst_1
    //   463: invokespecial a : (IIIZ)Z
    //   466: istore #15
    //   468: iload #15
    //   470: ifeq -> 490
    //   473: iload_2
    //   474: iconst_1
    //   475: isub
    //   476: istore_2
    //   477: iconst_1
    //   478: istore #9
    //   480: iconst_1
    //   481: istore #5
    //   483: iload #15
    //   485: istore #14
    //   487: goto -> 443
    //   490: iload #15
    //   492: istore #14
    //   494: iload #9
    //   496: ifne -> 443
    //   499: iload_2
    //   500: iconst_1
    //   501: isub
    //   502: istore_2
    //   503: iload #15
    //   505: istore #14
    //   507: goto -> 443
    //   510: iload_2
    //   511: ifge -> 538
    //   514: iconst_1
    //   515: istore #7
    //   517: iload_1
    //   518: istore #5
    //   520: iload_3
    //   521: istore_1
    //   522: iload #4
    //   524: istore #6
    //   526: iload_2
    //   527: istore_3
    //   528: iload #7
    //   530: istore #4
    //   532: iload #6
    //   534: istore_2
    //   535: goto -> 151
    //   538: iload #5
    //   540: ifeq -> 546
    //   543: iconst_1
    //   544: istore #10
    //   546: iload #9
    //   548: istore #11
    //   550: iload #5
    //   552: istore #9
    //   554: iload #11
    //   556: istore #5
    //   558: goto -> 45
    //   561: iload #4
    //   563: iconst_1
    //   564: iadd
    //   565: istore #4
    //   567: goto -> 173
    //   570: iconst_1
    //   571: istore #4
    //   573: aconst_null
    //   574: astore #16
    //   576: iload #4
    //   578: iload #6
    //   580: if_icmpge -> 763
    //   583: aload_0
    //   584: iload_2
    //   585: i2f
    //   586: iload_3
    //   587: iload #4
    //   589: iadd
    //   590: i2f
    //   591: iload_2
    //   592: iload #4
    //   594: iadd
    //   595: i2f
    //   596: iload_3
    //   597: i2f
    //   598: invokespecial a : (FFFF)Leqo;
    //   601: astore #16
    //   603: aload #16
    //   605: ifnull -> 621
    //   608: aload #16
    //   610: astore #18
    //   612: aload #18
    //   614: ifnonnull -> 630
    //   617: invokestatic a : ()Leqh;
    //   620: athrow
    //   621: iload #4
    //   623: iconst_1
    //   624: iadd
    //   625: istore #4
    //   627: goto -> 576
    //   630: iconst_1
    //   631: istore_2
    //   632: aconst_null
    //   633: astore #16
    //   635: iload_2
    //   636: iload #6
    //   638: if_icmpge -> 756
    //   641: aload_0
    //   642: iload #5
    //   644: i2f
    //   645: iload_3
    //   646: iload_2
    //   647: iadd
    //   648: i2f
    //   649: iload #5
    //   651: iload_2
    //   652: isub
    //   653: i2f
    //   654: iload_3
    //   655: i2f
    //   656: invokespecial a : (FFFF)Leqo;
    //   659: astore #16
    //   661: aload #16
    //   663: ifnull -> 679
    //   666: aload #16
    //   668: astore #19
    //   670: aload #19
    //   672: ifnonnull -> 686
    //   675: invokestatic a : ()Leqh;
    //   678: athrow
    //   679: iload_2
    //   680: iconst_1
    //   681: iadd
    //   682: istore_2
    //   683: goto -> 635
    //   686: aconst_null
    //   687: astore #16
    //   689: iload #12
    //   691: istore_2
    //   692: iload_2
    //   693: iload #6
    //   695: if_icmpge -> 723
    //   698: aload_0
    //   699: iload #5
    //   701: i2f
    //   702: iload_1
    //   703: iload_2
    //   704: isub
    //   705: i2f
    //   706: iload #5
    //   708: iload_2
    //   709: isub
    //   710: i2f
    //   711: iload_1
    //   712: i2f
    //   713: invokespecial a : (FFFF)Leqo;
    //   716: astore #16
    //   718: aload #16
    //   720: ifnull -> 732
    //   723: aload #16
    //   725: ifnonnull -> 739
    //   728: invokestatic a : ()Leqh;
    //   731: athrow
    //   732: iload_2
    //   733: iconst_1
    //   734: iadd
    //   735: istore_2
    //   736: goto -> 692
    //   739: aload_0
    //   740: aload #16
    //   742: aload #17
    //   744: aload #19
    //   746: aload #18
    //   748: invokespecial a : (Leqo;Leqo;Leqo;Leqo;)[Leqo;
    //   751: areturn
    //   752: invokestatic a : ()Leqh;
    //   755: athrow
    //   756: aload #16
    //   758: astore #19
    //   760: goto -> 670
    //   763: aload #16
    //   765: astore #18
    //   767: goto -> 612
    //   770: aload #16
    //   772: astore #17
    //   774: goto -> 209
    //   777: iload_1
    //   778: istore #5
    //   780: iload_3
    //   781: istore_1
    //   782: iload #4
    //   784: istore #6
    //   786: iload_2
    //   787: istore_3
    //   788: iload #13
    //   790: istore #4
    //   792: iload #6
    //   794: istore_2
    //   795: goto -> 151
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eug.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */