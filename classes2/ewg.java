import java.util.Map;

public final class ewg extends eww {
  static final char[] a = "0123456789-$:/.+ABCD".toCharArray();
  
  static final int[] b = new int[] { 
      3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 
      12, 24, 69, 81, 84, 21, 26, 41, 11, 14 };
  
  private static final float c = 2.0F;
  
  private static final float d = 1.5F;
  
  private static final String e = "0123456789-$:/.+ABCD";
  
  private static final int f = 3;
  
  private static final char[] g = new char[] { 'A', 'B', 'C', 'D' };
  
  private final StringBuilder h = new StringBuilder(20);
  
  private int[] i = new int[80];
  
  private int j = 0;
  
  private void a(ets paramets) {
    this.j = 0;
    int i = paramets.e(0);
    int k = paramets.a();
    if (i >= k)
      throw eqh.a(); 
    boolean bool = true;
    int j = 0;
    while (i < k) {
      int n;
      if (paramets.a(i) ^ bool) {
        j++;
        boolean bool1 = bool;
        m = j;
      } else {
        b(j);
        if (m == 0) {
          m = 1;
        } else {
          m = 0;
        } 
        n = m;
        m = 1;
      } 
      i++;
      j = m;
      int m = n;
    } 
    b(j);
  }
  
  static boolean a(char[] paramArrayOfchar, char paramChar) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramArrayOfchar != null) {
      int j = paramArrayOfchar.length;
      for (int i = 0;; i++) {
        bool1 = bool2;
        if (i < j) {
          if (paramArrayOfchar[i] == paramChar)
            return true; 
        } else {
          return bool1;
        } 
      } 
    } 
    return bool1;
  }
  
  private int b() {
    for (int i = 1; i < this.j; i += 2) {
      int j = c(i);
      if (j != -1 && a(g, a[j])) {
        int k = 0;
        for (j = i; j < i + 7; j++)
          k += this.i[j]; 
        if (i == 1 || this.i[i - 1] >= k / 2)
          return i; 
      } 
    } 
    throw eqh.a();
  }
  
  private void b(int paramInt) {
    this.i[this.j] = paramInt;
    this.j++;
    if (this.j >= this.i.length) {
      int[] arrayOfInt = new int[this.j * 2];
      System.arraycopy(this.i, 0, arrayOfInt, 0, this.j);
      this.i = arrayOfInt;
    } 
  }
  
  private int c(int paramInt) {
    int i2 = Integer.MAX_VALUE;
    int i3 = paramInt + 7;
    if (i3 >= this.j)
      return -1; 
    int[] arrayOfInt = this.i;
    int j = paramInt;
    int m = Integer.MAX_VALUE;
    int i = 0;
    while (j < i3) {
      int i5 = arrayOfInt[j];
      int i4 = m;
      if (i5 < m)
        i4 = i5; 
      if (i5 > i)
        i = i5; 
      j += 2;
      m = i4;
    } 
    int i1 = (m + i) / 2;
    j = paramInt + 1;
    i = 0;
    for (m = i2; j < i3; m = i4) {
      int i5 = arrayOfInt[j];
      int i4 = m;
      if (i5 < m)
        i4 = i5; 
      if (i5 > i)
        i = i5; 
      j += 2;
    } 
    int n = (m + i) / 2;
    j = 0;
    i = 0;
    int k = 128;
    while (j < 7) {
      if ((j & 0x1) == 0) {
        m = i1;
      } else {
        m = n;
      } 
      k >>= 1;
      if (arrayOfInt[paramInt + j] > m)
        i |= k; 
      j++;
    } 
    paramInt = 0;
    while (paramInt < b.length) {
      j = paramInt;
      if (b[paramInt] != i) {
        paramInt++;
        continue;
      } 
      return j;
    } 
    return -1;
  }
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    // Byte code:
    //   0: aload_0
    //   1: getfield i : [I
    //   4: iconst_0
    //   5: invokestatic fill : ([II)V
    //   8: aload_0
    //   9: aload_2
    //   10: invokespecial a : (Lets;)V
    //   13: aload_0
    //   14: invokespecial b : ()I
    //   17: istore #8
    //   19: aload_0
    //   20: getfield h : Ljava/lang/StringBuilder;
    //   23: iconst_0
    //   24: invokevirtual setLength : (I)V
    //   27: iload #8
    //   29: istore #7
    //   31: aload_0
    //   32: iload #7
    //   34: invokespecial c : (I)I
    //   37: istore #9
    //   39: iload #9
    //   41: iconst_m1
    //   42: if_icmpne -> 49
    //   45: invokestatic a : ()Leqh;
    //   48: athrow
    //   49: aload_0
    //   50: getfield h : Ljava/lang/StringBuilder;
    //   53: iload #9
    //   55: i2c
    //   56: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: iload #7
    //   62: bipush #8
    //   64: iadd
    //   65: istore #10
    //   67: aload_0
    //   68: getfield h : Ljava/lang/StringBuilder;
    //   71: invokevirtual length : ()I
    //   74: iconst_1
    //   75: if_icmple -> 141
    //   78: getstatic ewg.g : [C
    //   81: getstatic ewg.a : [C
    //   84: iload #9
    //   86: caload
    //   87: invokestatic a : ([CC)Z
    //   90: ifeq -> 141
    //   93: aload_0
    //   94: getfield i : [I
    //   97: iload #10
    //   99: iconst_1
    //   100: isub
    //   101: iaload
    //   102: istore #11
    //   104: bipush #-8
    //   106: istore #7
    //   108: iconst_0
    //   109: istore #9
    //   111: iload #7
    //   113: iconst_m1
    //   114: if_icmpge -> 157
    //   117: iload #9
    //   119: aload_0
    //   120: getfield i : [I
    //   123: iload #10
    //   125: iload #7
    //   127: iadd
    //   128: iaload
    //   129: iadd
    //   130: istore #9
    //   132: iload #7
    //   134: iconst_1
    //   135: iadd
    //   136: istore #7
    //   138: goto -> 111
    //   141: iload #10
    //   143: istore #7
    //   145: iload #10
    //   147: aload_0
    //   148: getfield j : I
    //   151: if_icmplt -> 31
    //   154: goto -> 93
    //   157: iload #10
    //   159: aload_0
    //   160: getfield j : I
    //   163: if_icmpge -> 179
    //   166: iload #11
    //   168: iload #9
    //   170: iconst_2
    //   171: idiv
    //   172: if_icmpge -> 179
    //   175: invokestatic a : ()Leqh;
    //   178: athrow
    //   179: aload_0
    //   180: iload #8
    //   182: invokevirtual a : (I)V
    //   185: iconst_0
    //   186: istore #7
    //   188: iload #7
    //   190: aload_0
    //   191: getfield h : Ljava/lang/StringBuilder;
    //   194: invokevirtual length : ()I
    //   197: if_icmpge -> 231
    //   200: aload_0
    //   201: getfield h : Ljava/lang/StringBuilder;
    //   204: iload #7
    //   206: getstatic ewg.a : [C
    //   209: aload_0
    //   210: getfield h : Ljava/lang/StringBuilder;
    //   213: iload #7
    //   215: invokevirtual charAt : (I)C
    //   218: caload
    //   219: invokevirtual setCharAt : (IC)V
    //   222: iload #7
    //   224: iconst_1
    //   225: iadd
    //   226: istore #7
    //   228: goto -> 188
    //   231: aload_0
    //   232: getfield h : Ljava/lang/StringBuilder;
    //   235: iconst_0
    //   236: invokevirtual charAt : (I)C
    //   239: istore #4
    //   241: getstatic ewg.g : [C
    //   244: iload #4
    //   246: invokestatic a : ([CC)Z
    //   249: ifne -> 256
    //   252: invokestatic a : ()Leqh;
    //   255: athrow
    //   256: aload_0
    //   257: getfield h : Ljava/lang/StringBuilder;
    //   260: aload_0
    //   261: getfield h : Ljava/lang/StringBuilder;
    //   264: invokevirtual length : ()I
    //   267: iconst_1
    //   268: isub
    //   269: invokevirtual charAt : (I)C
    //   272: istore #4
    //   274: getstatic ewg.g : [C
    //   277: iload #4
    //   279: invokestatic a : ([CC)Z
    //   282: ifne -> 289
    //   285: invokestatic a : ()Leqh;
    //   288: athrow
    //   289: aload_0
    //   290: getfield h : Ljava/lang/StringBuilder;
    //   293: invokevirtual length : ()I
    //   296: iconst_3
    //   297: if_icmpgt -> 304
    //   300: invokestatic a : ()Leqh;
    //   303: athrow
    //   304: aload_3
    //   305: ifnull -> 320
    //   308: aload_3
    //   309: getstatic epy.RETURN_CODABAR_START_END : Lepy;
    //   312: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   317: ifne -> 346
    //   320: aload_0
    //   321: getfield h : Ljava/lang/StringBuilder;
    //   324: aload_0
    //   325: getfield h : Ljava/lang/StringBuilder;
    //   328: invokevirtual length : ()I
    //   331: iconst_1
    //   332: isub
    //   333: invokevirtual deleteCharAt : (I)Ljava/lang/StringBuilder;
    //   336: pop
    //   337: aload_0
    //   338: getfield h : Ljava/lang/StringBuilder;
    //   341: iconst_0
    //   342: invokevirtual deleteCharAt : (I)Ljava/lang/StringBuilder;
    //   345: pop
    //   346: iconst_0
    //   347: istore #9
    //   349: iconst_0
    //   350: istore #7
    //   352: iload #9
    //   354: iload #8
    //   356: if_icmpge -> 384
    //   359: aload_0
    //   360: getfield i : [I
    //   363: iload #9
    //   365: iaload
    //   366: istore #11
    //   368: iload #9
    //   370: iconst_1
    //   371: iadd
    //   372: istore #9
    //   374: iload #11
    //   376: iload #7
    //   378: iadd
    //   379: istore #7
    //   381: goto -> 352
    //   384: iload #7
    //   386: i2f
    //   387: fstore #5
    //   389: iload #8
    //   391: iload #10
    //   393: iconst_1
    //   394: isub
    //   395: if_icmpge -> 419
    //   398: iload #7
    //   400: aload_0
    //   401: getfield i : [I
    //   404: iload #8
    //   406: iaload
    //   407: iadd
    //   408: istore #7
    //   410: iload #8
    //   412: iconst_1
    //   413: iadd
    //   414: istore #8
    //   416: goto -> 389
    //   419: iload #7
    //   421: i2f
    //   422: fstore #6
    //   424: aload_0
    //   425: getfield h : Ljava/lang/StringBuilder;
    //   428: invokevirtual toString : ()Ljava/lang/String;
    //   431: astore_2
    //   432: new eqo
    //   435: dup
    //   436: fload #5
    //   438: iload_1
    //   439: i2f
    //   440: invokespecial <init> : (FF)V
    //   443: astore_3
    //   444: new eqo
    //   447: dup
    //   448: fload #6
    //   450: iload_1
    //   451: i2f
    //   452: invokespecial <init> : (FF)V
    //   455: astore #12
    //   457: getstatic epu.CODABAR : Lepu;
    //   460: astore #13
    //   462: new eqm
    //   465: dup
    //   466: aload_2
    //   467: aconst_null
    //   468: iconst_2
    //   469: anewarray eqo
    //   472: dup
    //   473: iconst_0
    //   474: aload_3
    //   475: aastore
    //   476: dup
    //   477: iconst_1
    //   478: aload #12
    //   480: aastore
    //   481: aload #13
    //   483: invokespecial <init> : (Ljava/lang/String;[B[Leqo;Lepu;)V
    //   486: areturn
  }
  
  void a(int paramInt) {
    int[] arrayOfInt1 = new int[4];
    arrayOfInt1[0] = 0;
    arrayOfInt1[1] = 0;
    arrayOfInt1[2] = 0;
    arrayOfInt1[3] = 0;
    int[] arrayOfInt2 = new int[4];
    arrayOfInt2[0] = 0;
    arrayOfInt2[1] = 0;
    arrayOfInt2[2] = 0;
    arrayOfInt2[3] = 0;
    int k = this.h.length() - 1;
    int i = 0;
    int j = paramInt;
    while (true) {
      float[] arrayOfFloat1;
      float[] arrayOfFloat2;
      int n = b[this.h.charAt(i)];
      int m;
      for (m = 6; m >= 0; m--) {
        int i1 = (m & 0x1) + (n & 0x1) * 2;
        arrayOfInt1[i1] = arrayOfInt1[i1] + this.i[j + m];
        arrayOfInt2[i1] = arrayOfInt2[i1] + 1;
        n >>= 1;
      } 
      if (i >= k) {
        arrayOfFloat1 = new float[4];
        arrayOfFloat2 = new float[4];
        for (i = 0; i < 2; i++) {
          arrayOfFloat2[i] = 0.0F;
          arrayOfFloat2[i + 2] = (arrayOfInt1[i] / arrayOfInt2[i] + arrayOfInt1[i + 2] / arrayOfInt2[i + 2]) / 2.0F;
          arrayOfFloat1[i] = arrayOfFloat2[i + 2];
          arrayOfFloat1[i + 2] = (arrayOfInt1[i + 2] * 2.0F + 1.5F) / arrayOfInt2[i + 2];
        } 
      } else {
        j += 8;
        i++;
        continue;
      } 
      j = 0;
      i = paramInt;
      for (paramInt = j;; paramInt++) {
        m = b[this.h.charAt(paramInt)];
        for (j = 6; j >= 0; j--) {
          n = (j & 0x1) + (m & 0x1) * 2;
          int i1 = this.i[i + j];
          if (i1 < arrayOfFloat2[n] || i1 > arrayOfFloat1[n])
            throw eqh.a(); 
          m >>= 1;
        } 
        if (paramInt >= k)
          return; 
        i += 8;
      } 
      break;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */