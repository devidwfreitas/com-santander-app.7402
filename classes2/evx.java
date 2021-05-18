import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class evx implements evy {
  private static final int a = 100;
  
  private static final int b = 4;
  
  private final eqk c;
  
  public evx(eqk parameqk) {
    this.c = parameqk;
  }
  
  private static eqm a(eqm parameqm, int paramInt1, int paramInt2) {
    eqo[] arrayOfEqo1 = parameqm.c();
    if (arrayOfEqo1 == null)
      return parameqm; 
    eqo[] arrayOfEqo2 = new eqo[arrayOfEqo1.length];
    for (int i = 0; i < arrayOfEqo1.length; i++) {
      eqo eqo = arrayOfEqo1[i];
      if (eqo != null)
        arrayOfEqo2[i] = new eqo(eqo.a() + paramInt1, eqo.b() + paramInt2); 
    } 
    eqm eqm1 = new eqm(parameqm.a(), parameqm.b(), arrayOfEqo2, parameqm.d());
    eqm1.a(parameqm.e());
    return eqm1;
  }
  
  private void a(epw paramepw, Map<epy, ?> paramMap, List<eqm> paramList, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: iload #6
    //   2: iconst_4
    //   3: if_icmple -> 7
    //   6: return
    //   7: aload_0
    //   8: getfield c : Leqk;
    //   11: aload_1
    //   12: aload_2
    //   13: invokeinterface a : (Lepw;Ljava/util/Map;)Leqm;
    //   18: astore #20
    //   20: aload_3
    //   21: invokeinterface iterator : ()Ljava/util/Iterator;
    //   26: astore #21
    //   28: aload #21
    //   30: invokeinterface hasNext : ()Z
    //   35: ifeq -> 471
    //   38: aload #21
    //   40: invokeinterface next : ()Ljava/lang/Object;
    //   45: checkcast eqm
    //   48: invokevirtual a : ()Ljava/lang/String;
    //   51: aload #20
    //   53: invokevirtual a : ()Ljava/lang/String;
    //   56: invokevirtual equals : (Ljava/lang/Object;)Z
    //   59: ifeq -> 28
    //   62: iconst_1
    //   63: istore #16
    //   65: iload #16
    //   67: ifne -> 86
    //   70: aload_3
    //   71: aload #20
    //   73: iload #4
    //   75: iload #5
    //   77: invokestatic a : (Leqm;II)Leqm;
    //   80: invokeinterface add : (Ljava/lang/Object;)Z
    //   85: pop
    //   86: aload #20
    //   88: invokevirtual c : ()[Leqo;
    //   91: astore #20
    //   93: aload #20
    //   95: ifnull -> 6
    //   98: aload #20
    //   100: arraylength
    //   101: ifeq -> 6
    //   104: aload_1
    //   105: invokevirtual a : ()I
    //   108: istore #17
    //   110: aload_1
    //   111: invokevirtual b : ()I
    //   114: istore #18
    //   116: iload #17
    //   118: i2f
    //   119: fstore #10
    //   121: iload #18
    //   123: i2f
    //   124: fstore #9
    //   126: fconst_0
    //   127: fstore #8
    //   129: fconst_0
    //   130: fstore #7
    //   132: aload #20
    //   134: arraylength
    //   135: istore #19
    //   137: iconst_0
    //   138: istore #16
    //   140: iload #16
    //   142: iload #19
    //   144: if_icmpge -> 293
    //   147: aload #20
    //   149: iload #16
    //   151: aaload
    //   152: astore #21
    //   154: aload #21
    //   156: ifnonnull -> 200
    //   159: fload #9
    //   161: fstore #12
    //   163: fload #10
    //   165: fstore #9
    //   167: fload #8
    //   169: fstore #13
    //   171: fload #7
    //   173: fstore #8
    //   175: iload #16
    //   177: iconst_1
    //   178: iadd
    //   179: istore #16
    //   181: fload #8
    //   183: fstore #7
    //   185: fload #13
    //   187: fstore #8
    //   189: fload #9
    //   191: fstore #10
    //   193: fload #12
    //   195: fstore #9
    //   197: goto -> 140
    //   200: aload #21
    //   202: invokevirtual a : ()F
    //   205: fstore #12
    //   207: aload #21
    //   209: invokevirtual b : ()F
    //   212: fstore #15
    //   214: fload #12
    //   216: fload #10
    //   218: fcmpg
    //   219: ifge -> 468
    //   222: fload #12
    //   224: fstore #10
    //   226: fload #15
    //   228: fload #9
    //   230: fcmpg
    //   231: ifge -> 461
    //   234: fload #15
    //   236: fstore #11
    //   238: fload #12
    //   240: fload #8
    //   242: fcmpl
    //   243: ifle -> 454
    //   246: fload #12
    //   248: fstore #14
    //   250: fload #15
    //   252: fstore #8
    //   254: fload #14
    //   256: fstore #13
    //   258: fload #11
    //   260: fstore #12
    //   262: fload #10
    //   264: fstore #9
    //   266: fload #15
    //   268: fload #7
    //   270: fcmpl
    //   271: ifgt -> 175
    //   274: fload #7
    //   276: fstore #8
    //   278: fload #14
    //   280: fstore #13
    //   282: fload #11
    //   284: fstore #12
    //   286: fload #10
    //   288: fstore #9
    //   290: goto -> 175
    //   293: fload #10
    //   295: ldc 100.0
    //   297: fcmpl
    //   298: ifle -> 326
    //   301: aload_0
    //   302: aload_1
    //   303: iconst_0
    //   304: iconst_0
    //   305: fload #10
    //   307: f2i
    //   308: iload #18
    //   310: invokevirtual a : (IIII)Lepw;
    //   313: aload_2
    //   314: aload_3
    //   315: iload #4
    //   317: iload #5
    //   319: iload #6
    //   321: iconst_1
    //   322: iadd
    //   323: invokespecial a : (Lepw;Ljava/util/Map;Ljava/util/List;III)V
    //   326: fload #9
    //   328: ldc 100.0
    //   330: fcmpl
    //   331: ifle -> 359
    //   334: aload_0
    //   335: aload_1
    //   336: iconst_0
    //   337: iconst_0
    //   338: iload #17
    //   340: fload #9
    //   342: f2i
    //   343: invokevirtual a : (IIII)Lepw;
    //   346: aload_2
    //   347: aload_3
    //   348: iload #4
    //   350: iload #5
    //   352: iload #6
    //   354: iconst_1
    //   355: iadd
    //   356: invokespecial a : (Lepw;Ljava/util/Map;Ljava/util/List;III)V
    //   359: fload #8
    //   361: iload #17
    //   363: bipush #100
    //   365: isub
    //   366: i2f
    //   367: fcmpg
    //   368: ifge -> 405
    //   371: aload_0
    //   372: aload_1
    //   373: fload #8
    //   375: f2i
    //   376: iconst_0
    //   377: iload #17
    //   379: fload #8
    //   381: f2i
    //   382: isub
    //   383: iload #18
    //   385: invokevirtual a : (IIII)Lepw;
    //   388: aload_2
    //   389: aload_3
    //   390: iload #4
    //   392: fload #8
    //   394: f2i
    //   395: iadd
    //   396: iload #5
    //   398: iload #6
    //   400: iconst_1
    //   401: iadd
    //   402: invokespecial a : (Lepw;Ljava/util/Map;Ljava/util/List;III)V
    //   405: fload #7
    //   407: iload #18
    //   409: bipush #100
    //   411: isub
    //   412: i2f
    //   413: fcmpg
    //   414: ifge -> 6
    //   417: aload_0
    //   418: aload_1
    //   419: iconst_0
    //   420: fload #7
    //   422: f2i
    //   423: iload #17
    //   425: iload #18
    //   427: fload #7
    //   429: f2i
    //   430: isub
    //   431: invokevirtual a : (IIII)Lepw;
    //   434: aload_2
    //   435: aload_3
    //   436: iload #4
    //   438: iload #5
    //   440: fload #7
    //   442: f2i
    //   443: iadd
    //   444: iload #6
    //   446: iconst_1
    //   447: iadd
    //   448: invokespecial a : (Lepw;Ljava/util/Map;Ljava/util/List;III)V
    //   451: return
    //   452: astore_1
    //   453: return
    //   454: fload #8
    //   456: fstore #14
    //   458: goto -> 250
    //   461: fload #9
    //   463: fstore #11
    //   465: goto -> 238
    //   468: goto -> 226
    //   471: iconst_0
    //   472: istore #16
    //   474: goto -> 65
    // Exception table:
    //   from	to	target	type
    //   7	20	452	eql
  }
  
  public eqm[] a_(epw paramepw) {
    return a_(paramepw, null);
  }
  
  public eqm[] a_(epw paramepw, Map<epy, ?> paramMap) {
    ArrayList<eqm> arrayList = new ArrayList();
    a(paramepw, paramMap, arrayList, 0, 0, 0);
    if (arrayList.isEmpty())
      throw eqh.a(); 
    return arrayList.<eqm>toArray(new eqm[arrayList.size()]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */