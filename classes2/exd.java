import java.util.Arrays;
import java.util.Map;

public abstract class exd extends eww {
  private static final float a = 0.48F;
  
  static final int[] b = new int[] { 1, 1, 1 };
  
  static final int[] c = new int[] { 1, 1, 1, 1, 1 };
  
  static final int[][] d;
  
  static final int[][] e = new int[20][];
  
  private static final float f = 0.7F;
  
  private final StringBuilder g = new StringBuilder(20);
  
  private final exc h = new exc();
  
  private final ewr i = new ewr();
  
  static {
    System.arraycopy(d, 0, e, 0, 10);
    for (int i = 10; i < 20; i++) {
      arrayOfInt1 = d[i - 10];
      arrayOfInt2 = new int[arrayOfInt1.length];
      for (int j = 0; j < arrayOfInt1.length; j++)
        arrayOfInt2[j] = arrayOfInt1[arrayOfInt1.length - j - 1]; 
      e[i] = arrayOfInt2;
    } 
  }
  
  static int a(ets paramets, int[] paramArrayOfint, int paramInt, int[][] paramArrayOfint1) {
    a(paramets, paramInt, paramArrayOfint);
    float f = 0.48F;
    int i = -1;
    int j = paramArrayOfint1.length;
    for (paramInt = 0; paramInt < j; paramInt++) {
      float f1 = a(paramArrayOfint, paramArrayOfint1[paramInt], 0.7F);
      if (f1 < f) {
        i = paramInt;
        f = f1;
      } 
    } 
    if (i >= 0)
      return i; 
    throw eqh.a();
  }
  
  static boolean a(CharSequence paramCharSequence) {
    int i = paramCharSequence.length();
    if (i != 0) {
      int j = i - 2;
      int k = 0;
      while (j >= 0) {
        int m = paramCharSequence.charAt(j) - 48;
        if (m < 0 || m > 9)
          throw eqb.a(); 
        k += m;
        j -= 2;
      } 
      k *= 3;
      for (j = i - 1; j >= 0; j -= 2) {
        i = paramCharSequence.charAt(j) - 48;
        if (i < 0 || i > 9)
          throw eqb.a(); 
        k += i;
      } 
      if (k % 10 == 0)
        return true; 
    } 
    return false;
  }
  
  static int[] a(ets paramets) {
    int[] arrayOfInt2 = new int[b.length];
    int i = 0;
    int[] arrayOfInt1 = null;
    boolean bool = false;
    while (!bool) {
      Arrays.fill(arrayOfInt2, 0, b.length, 0);
      int[] arrayOfInt = a(paramets, i, false, b, arrayOfInt2);
      int k = arrayOfInt[0];
      int j = arrayOfInt[1];
      int m = k - j - k;
      i = j;
      arrayOfInt1 = arrayOfInt;
      if (m >= 0) {
        bool = paramets.a(m, k, false);
        i = j;
        arrayOfInt1 = arrayOfInt;
      } 
    } 
    return arrayOfInt1;
  }
  
  static int[] a(ets paramets, int paramInt, boolean paramBoolean, int[] paramArrayOfint) {
    return a(paramets, paramInt, paramBoolean, paramArrayOfint, new int[paramArrayOfint.length]);
  }
  
  private static int[] a(ets paramets, int paramInt, boolean paramBoolean, int[] paramArrayOfint1, int[] paramArrayOfint2) {
    int k = paramArrayOfint1.length;
    int m = paramets.a();
    if (paramBoolean) {
      paramInt = paramets.e(paramInt);
    } else {
      paramInt = paramets.d(paramInt);
    } 
    int j = paramInt;
    for (int i = 0; j < m; i = n) {
      int n;
      if (paramets.a(j) ^ paramBoolean) {
        paramArrayOfint2[i] = paramArrayOfint2[i] + 1;
        n = i;
        i = paramInt;
      } else {
        if (i == k - 1) {
          if (a(paramArrayOfint2, paramArrayOfint1, 0.7F) < 0.48F)
            return new int[] { paramInt, j }; 
          n = paramInt + paramArrayOfint2[0] + paramArrayOfint2[1];
          System.arraycopy(paramArrayOfint2, 2, paramArrayOfint2, 0, k - 2);
          paramArrayOfint2[k - 2] = 0;
          paramArrayOfint2[k - 1] = 0;
          paramInt = i - 1;
          i = n;
        } else {
          n = i + 1;
          i = paramInt;
          paramInt = n;
        } 
        paramArrayOfint2[paramInt] = 1;
        if (!paramBoolean) {
          paramBoolean = true;
          n = paramInt;
        } else {
          paramBoolean = false;
          n = paramInt;
        } 
      } 
      j++;
      paramInt = i;
    } 
    throw eqh.a();
  }
  
  protected abstract int a(ets paramets, int[] paramArrayOfint, StringBuilder paramStringBuilder);
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    return a(paramInt, paramets, a(paramets), paramMap);
  }
  
  public eqm a(int paramInt, ets paramets, int[] paramArrayOfint, Map<epy, ?> paramMap) {
    // Byte code:
    //   0: aload #4
    //   2: ifnonnull -> 170
    //   5: aconst_null
    //   6: astore #11
    //   8: aload #11
    //   10: ifnull -> 39
    //   13: aload #11
    //   15: new eqo
    //   18: dup
    //   19: aload_3
    //   20: iconst_0
    //   21: iaload
    //   22: aload_3
    //   23: iconst_1
    //   24: iaload
    //   25: iadd
    //   26: i2f
    //   27: fconst_2
    //   28: fdiv
    //   29: iload_1
    //   30: i2f
    //   31: invokespecial <init> : (FF)V
    //   34: invokeinterface a : (Leqo;)V
    //   39: aload_0
    //   40: getfield g : Ljava/lang/StringBuilder;
    //   43: astore #12
    //   45: aload #12
    //   47: iconst_0
    //   48: invokevirtual setLength : (I)V
    //   51: aload_0
    //   52: aload_2
    //   53: aload_3
    //   54: aload #12
    //   56: invokevirtual a : (Lets;[ILjava/lang/StringBuilder;)I
    //   59: istore #7
    //   61: aload #11
    //   63: ifnull -> 85
    //   66: aload #11
    //   68: new eqo
    //   71: dup
    //   72: iload #7
    //   74: i2f
    //   75: iload_1
    //   76: i2f
    //   77: invokespecial <init> : (FF)V
    //   80: invokeinterface a : (Leqo;)V
    //   85: aload_0
    //   86: aload_2
    //   87: iload #7
    //   89: invokevirtual a : (Lets;I)[I
    //   92: astore #13
    //   94: aload #11
    //   96: ifnull -> 127
    //   99: aload #11
    //   101: new eqo
    //   104: dup
    //   105: aload #13
    //   107: iconst_0
    //   108: iaload
    //   109: aload #13
    //   111: iconst_1
    //   112: iaload
    //   113: iadd
    //   114: i2f
    //   115: fconst_2
    //   116: fdiv
    //   117: iload_1
    //   118: i2f
    //   119: invokespecial <init> : (FF)V
    //   122: invokeinterface a : (Leqo;)V
    //   127: aload #13
    //   129: iconst_1
    //   130: iaload
    //   131: istore #7
    //   133: iload #7
    //   135: aload #13
    //   137: iconst_0
    //   138: iaload
    //   139: isub
    //   140: iload #7
    //   142: iadd
    //   143: istore #8
    //   145: iload #8
    //   147: aload_2
    //   148: invokevirtual a : ()I
    //   151: if_icmpge -> 166
    //   154: aload_2
    //   155: iload #7
    //   157: iload #8
    //   159: iconst_0
    //   160: invokevirtual a : (IIZ)Z
    //   163: ifne -> 188
    //   166: invokestatic a : ()Leqh;
    //   169: athrow
    //   170: aload #4
    //   172: getstatic epy.NEED_RESULT_POINT_CALLBACK : Lepy;
    //   175: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   180: checkcast eqp
    //   183: astore #11
    //   185: goto -> 8
    //   188: aload #12
    //   190: invokevirtual toString : ()Ljava/lang/String;
    //   193: astore #11
    //   195: aload #11
    //   197: invokevirtual length : ()I
    //   200: bipush #8
    //   202: if_icmpge -> 209
    //   205: invokestatic a : ()Leqb;
    //   208: athrow
    //   209: aload_0
    //   210: aload #11
    //   212: invokevirtual a : (Ljava/lang/String;)Z
    //   215: ifne -> 222
    //   218: invokestatic a : ()Lepx;
    //   221: athrow
    //   222: aload_3
    //   223: iconst_1
    //   224: iaload
    //   225: aload_3
    //   226: iconst_0
    //   227: iaload
    //   228: iadd
    //   229: i2f
    //   230: fconst_2
    //   231: fdiv
    //   232: fstore #5
    //   234: aload #13
    //   236: iconst_1
    //   237: iaload
    //   238: aload #13
    //   240: iconst_0
    //   241: iaload
    //   242: iadd
    //   243: i2f
    //   244: fconst_2
    //   245: fdiv
    //   246: fstore #6
    //   248: aload_0
    //   249: invokevirtual b : ()Lepu;
    //   252: astore #12
    //   254: new eqm
    //   257: dup
    //   258: aload #11
    //   260: aconst_null
    //   261: iconst_2
    //   262: anewarray eqo
    //   265: dup
    //   266: iconst_0
    //   267: new eqo
    //   270: dup
    //   271: fload #5
    //   273: iload_1
    //   274: i2f
    //   275: invokespecial <init> : (FF)V
    //   278: aastore
    //   279: dup
    //   280: iconst_1
    //   281: new eqo
    //   284: dup
    //   285: fload #6
    //   287: iload_1
    //   288: i2f
    //   289: invokespecial <init> : (FF)V
    //   292: aastore
    //   293: aload #12
    //   295: invokespecial <init> : (Ljava/lang/String;[B[Leqo;Lepu;)V
    //   298: astore_3
    //   299: aload_0
    //   300: getfield h : Lexc;
    //   303: iload_1
    //   304: aload_2
    //   305: aload #13
    //   307: iconst_1
    //   308: iaload
    //   309: invokevirtual a : (ILets;I)Leqm;
    //   312: astore_2
    //   313: aload_3
    //   314: getstatic eqn.UPC_EAN_EXTENSION : Leqn;
    //   317: aload_2
    //   318: invokevirtual a : ()Ljava/lang/String;
    //   321: invokevirtual a : (Leqn;Ljava/lang/Object;)V
    //   324: aload_3
    //   325: aload_2
    //   326: invokevirtual e : ()Ljava/util/Map;
    //   329: invokevirtual a : (Ljava/util/Map;)V
    //   332: aload_3
    //   333: aload_2
    //   334: invokevirtual c : ()[Leqo;
    //   337: invokevirtual a : ([Leqo;)V
    //   340: aload_2
    //   341: invokevirtual a : ()Ljava/lang/String;
    //   344: invokevirtual length : ()I
    //   347: istore_1
    //   348: aload #4
    //   350: ifnonnull -> 406
    //   353: aconst_null
    //   354: astore_2
    //   355: aload_2
    //   356: ifnull -> 435
    //   359: iconst_0
    //   360: istore #9
    //   362: aload_2
    //   363: arraylength
    //   364: istore #10
    //   366: iconst_0
    //   367: istore #7
    //   369: iload #9
    //   371: istore #8
    //   373: iload #7
    //   375: iload #10
    //   377: if_icmpge -> 391
    //   380: iload_1
    //   381: aload_2
    //   382: iload #7
    //   384: iaload
    //   385: if_icmpne -> 426
    //   388: iconst_1
    //   389: istore #8
    //   391: iload #8
    //   393: ifne -> 435
    //   396: invokestatic a : ()Leqh;
    //   399: athrow
    //   400: astore_2
    //   401: iconst_0
    //   402: istore_1
    //   403: goto -> 348
    //   406: aload #4
    //   408: getstatic epy.ALLOWED_EAN_EXTENSIONS : Lepy;
    //   411: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   416: checkcast [I
    //   419: checkcast [I
    //   422: astore_2
    //   423: goto -> 355
    //   426: iload #7
    //   428: iconst_1
    //   429: iadd
    //   430: istore #7
    //   432: goto -> 369
    //   435: aload #12
    //   437: getstatic epu.EAN_13 : Lepu;
    //   440: if_acmpeq -> 451
    //   443: aload #12
    //   445: getstatic epu.UPC_A : Lepu;
    //   448: if_acmpne -> 473
    //   451: aload_0
    //   452: getfield i : Lewr;
    //   455: aload #11
    //   457: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   460: astore_2
    //   461: aload_2
    //   462: ifnull -> 473
    //   465: aload_3
    //   466: getstatic eqn.POSSIBLE_COUNTRY : Leqn;
    //   469: aload_2
    //   470: invokevirtual a : (Leqn;Ljava/lang/Object;)V
    //   473: aload_3
    //   474: areturn
    // Exception table:
    //   from	to	target	type
    //   299	348	400	eql
  }
  
  boolean a(String paramString) {
    return a(paramString);
  }
  
  int[] a(ets paramets, int paramInt) {
    return a(paramets, paramInt, false, b);
  }
  
  abstract epu b();
  
  static {
    int[] arrayOfInt1 = { 2, 2, 2, 1 };
    int[] arrayOfInt2 = { 2, 1, 2, 2 };
    int[] arrayOfInt3 = { 1, 2, 1, 3 };
    d = new int[][] { { 3, 2, 1, 1 }, arrayOfInt1, arrayOfInt2, { 1, 4, 1, 1 }, { 1, 1, 3, 2 }, { 1, 2, 3, 1 }, { 1, 1, 1, 4 }, { 1, 3, 1, 2 }, arrayOfInt3, { 3, 1, 1, 2 } };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */