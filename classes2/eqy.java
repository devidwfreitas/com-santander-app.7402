public final class eqy {
  private static final int[] g = new int[] { 3808, 476, 2107, 1799 };
  
  private final ett a;
  
  private boolean b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private int f;
  
  public eqy(ett paramett) {
    this.a = paramett;
  }
  
  private static float a(eqo parameqo1, eqo parameqo2) {
    return eue.a(parameqo1.a(), parameqo1.b(), parameqo2.a(), parameqo2.b());
  }
  
  private static int a(long paramLong, boolean paramBoolean) {
    byte b;
    int i;
    boolean bool = false;
    if (paramBoolean) {
      i = 7;
      b = 2;
    } else {
      i = 10;
      b = 4;
    } 
    int[] arrayOfInt = new int[i];
    int j;
    for (j = i - 1; j >= 0; j--) {
      arrayOfInt[j] = (int)paramLong & 0xF;
      paramLong >>= 4L;
    } 
    try {
      (new euj(euh.d)).a(arrayOfInt, i - b);
      i = 0;
      j = bool;
      while (i < b) {
        j = arrayOfInt[i] + (j << 4);
        i++;
      } 
    } catch (eul eul) {
      throw eqh.a();
    } 
    return j;
  }
  
  private int a(eqo parameqo1, eqo parameqo2, int paramInt) {
    int j = 0;
    float f4 = a(parameqo1, parameqo2);
    float f5 = f4 / paramInt;
    float f1 = parameqo1.a();
    float f2 = parameqo1.b();
    float f3 = (parameqo2.a() - parameqo1.a()) * f5 / f4;
    f4 = f5 * (parameqo2.b() - parameqo1.b()) / f4;
    int i = 0;
    while (i < paramInt) {
      int k = j;
      if (this.a.a(eue.a(i * f3 + f1), eue.a(i * f4 + f2)))
        k = j | 1 << paramInt - i - 1; 
      i++;
      j = k;
    } 
    return j;
  }
  
  private int a(eqz parameqz1, eqz parameqz2) {
    boolean bool1;
    float f3 = b(parameqz1, parameqz2);
    float f4 = (parameqz2.b() - parameqz1.b()) / f3;
    float f5 = (parameqz2.c() - parameqz1.c()) / f3;
    float f1 = parameqz1.b();
    float f2 = parameqz1.c();
    boolean bool2 = this.a.a(parameqz1.b(), parameqz1.c());
    int j = 0;
    int i = 0;
    while (i < f3) {
      f1 += f4;
      f2 += f5;
      int k = j;
      if (this.a.a(eue.a(f1), eue.a(f2)) != bool2)
        k = j + 1; 
      i++;
      j = k;
    } 
    f1 = j / f3;
    if (f1 > 0.1F && f1 < 0.9F)
      return 0; 
    if (f1 <= 0.1F) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    return (bool1 == bool2) ? 1 : -1;
  }
  
  private static int a(int[] paramArrayOfint, int paramInt) {
    boolean bool = false;
    int k = paramArrayOfint.length;
    int j = 0;
    int i = 0;
    while (j < k) {
      int m = paramArrayOfint[j];
      i = (i << 3) + (m & 0x1) + (m >> paramInt - 2 << 1);
      j++;
    } 
    for (paramInt = bool; paramInt < 4; paramInt++) {
      if (Integer.bitCount(g[paramInt] ^ ((i & 0x1) << 11) + (i >> 1)) <= 2)
        return paramInt; 
    } 
    throw eqh.a();
  }
  
  private eqz a(eqz parameqz, boolean paramBoolean, int paramInt1, int paramInt2) {
    int i = parameqz.b() + paramInt1;
    int j;
    for (j = parameqz.c() + paramInt2; a(i, j) && this.a.a(i, j) == paramBoolean; j += paramInt2)
      i += paramInt1; 
    j -= paramInt2;
    for (i -= paramInt1; a(i, j) && this.a.a(i, j) == paramBoolean; i += paramInt1);
    i -= paramInt1;
    for (paramInt1 = j; a(i, paramInt1) && this.a.a(i, paramInt1) == paramBoolean; paramInt1 += paramInt2);
    return new eqz(i, paramInt1 - paramInt2);
  }
  
  private ett a(ett paramett, eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4) {
    eua eua = eua.a();
    int i = c();
    float f1 = i / 2.0F - this.e;
    float f2 = i / 2.0F + this.e;
    return eua.a(paramett, i, i, f1, f1, f2, f1, f2, f2, f1, f2, parameqo1.a(), parameqo1.b(), parameqo2.a(), parameqo2.b(), parameqo3.a(), parameqo3.b(), parameqo4.a(), parameqo4.b());
  }
  
  private void a(eqo[] paramArrayOfeqo) {
    if (!a(paramArrayOfeqo[0]) || !a(paramArrayOfeqo[1]) || !a(paramArrayOfeqo[2]) || !a(paramArrayOfeqo[3]))
      throw eqh.a(); 
    int i = this.e * 2;
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = a(paramArrayOfeqo[0], paramArrayOfeqo[1], i);
    arrayOfInt[1] = a(paramArrayOfeqo[1], paramArrayOfeqo[2], i);
    arrayOfInt[2] = a(paramArrayOfeqo[2], paramArrayOfeqo[3], i);
    arrayOfInt[3] = a(paramArrayOfeqo[3], paramArrayOfeqo[0], i);
    this.f = a(arrayOfInt, i);
    long l = 0L;
    for (i = 0; i < 4; i++) {
      int j = arrayOfInt[(this.f + i) % 4];
      if (this.b) {
        l = (l << 7L) + (j >> 1 & 0x7F);
      } else {
        l = (l << 10L) + ((j >> 1 & 0x1F) + (j >> 2 & 0x3E0));
      } 
    } 
    i = a(l, this.b);
    if (this.b) {
      this.c = (i >> 6) + 1;
      this.d = (i & 0x3F) + 1;
      return;
    } 
    this.c = (i >> 11) + 1;
    this.d = (i & 0x7FF) + 1;
  }
  
  private boolean a(int paramInt1, int paramInt2) {
    return (paramInt1 >= 0 && paramInt1 < this.a.f() && paramInt2 > 0 && paramInt2 < this.a.g());
  }
  
  private boolean a(eqo parameqo) {
    return a(eue.a(parameqo.a()), eue.a(parameqo.b()));
  }
  
  private boolean a(eqz parameqz1, eqz parameqz2, eqz parameqz3, eqz parameqz4) {
    parameqz1 = new eqz(parameqz1.b() - 3, parameqz1.c() + 3);
    parameqz2 = new eqz(parameqz2.b() - 3, parameqz2.c() - 3);
    parameqz3 = new eqz(parameqz3.b() + 3, parameqz3.c() - 3);
    parameqz4 = new eqz(parameqz4.b() + 3, 3 + parameqz4.c());
    int i = a(parameqz4, parameqz1);
    return (i != 0 && a(parameqz1, parameqz2) == i && a(parameqz2, parameqz3) == i && a(parameqz3, parameqz4) == i);
  }
  
  private eqo[] a(eqz parameqz) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #4
    //   3: aload_0
    //   4: iconst_1
    //   5: putfield e : I
    //   8: aload_1
    //   9: astore #5
    //   11: aload_1
    //   12: astore #6
    //   14: aload_1
    //   15: astore #7
    //   17: aload_0
    //   18: getfield e : I
    //   21: bipush #9
    //   23: if_icmpge -> 143
    //   26: aload_0
    //   27: aload #7
    //   29: iload #4
    //   31: iconst_1
    //   32: iconst_m1
    //   33: invokespecial a : (Leqz;ZII)Leqz;
    //   36: astore #8
    //   38: aload_0
    //   39: aload #6
    //   41: iload #4
    //   43: iconst_1
    //   44: iconst_1
    //   45: invokespecial a : (Leqz;ZII)Leqz;
    //   48: astore #9
    //   50: aload_0
    //   51: aload #5
    //   53: iload #4
    //   55: iconst_m1
    //   56: iconst_1
    //   57: invokespecial a : (Leqz;ZII)Leqz;
    //   60: astore #10
    //   62: aload_0
    //   63: aload_1
    //   64: iload #4
    //   66: iconst_m1
    //   67: iconst_m1
    //   68: invokespecial a : (Leqz;ZII)Leqz;
    //   71: astore #11
    //   73: aload_0
    //   74: getfield e : I
    //   77: iconst_2
    //   78: if_icmple -> 164
    //   81: aload #11
    //   83: aload #8
    //   85: invokestatic b : (Leqz;Leqz;)F
    //   88: aload_0
    //   89: getfield e : I
    //   92: i2f
    //   93: fmul
    //   94: aload_1
    //   95: aload #7
    //   97: invokestatic b : (Leqz;Leqz;)F
    //   100: aload_0
    //   101: getfield e : I
    //   104: iconst_2
    //   105: iadd
    //   106: i2f
    //   107: fmul
    //   108: fdiv
    //   109: fstore_2
    //   110: fload_2
    //   111: f2d
    //   112: ldc2_w 0.75
    //   115: dcmpg
    //   116: iflt -> 143
    //   119: fload_2
    //   120: f2d
    //   121: ldc2_w 1.25
    //   124: dcmpl
    //   125: ifgt -> 143
    //   128: aload_0
    //   129: aload #8
    //   131: aload #9
    //   133: aload #10
    //   135: aload #11
    //   137: invokespecial a : (Leqz;Leqz;Leqz;Leqz;)Z
    //   140: ifne -> 164
    //   143: aload_0
    //   144: getfield e : I
    //   147: iconst_5
    //   148: if_icmpeq -> 206
    //   151: aload_0
    //   152: getfield e : I
    //   155: bipush #7
    //   157: if_icmpeq -> 206
    //   160: invokestatic a : ()Leqh;
    //   163: athrow
    //   164: iload #4
    //   166: ifne -> 200
    //   169: iconst_1
    //   170: istore #4
    //   172: aload_0
    //   173: aload_0
    //   174: getfield e : I
    //   177: iconst_1
    //   178: iadd
    //   179: putfield e : I
    //   182: aload #11
    //   184: astore_1
    //   185: aload #10
    //   187: astore #5
    //   189: aload #9
    //   191: astore #6
    //   193: aload #8
    //   195: astore #7
    //   197: goto -> 17
    //   200: iconst_0
    //   201: istore #4
    //   203: goto -> 172
    //   206: aload_0
    //   207: getfield e : I
    //   210: iconst_5
    //   211: if_icmpne -> 375
    //   214: iconst_1
    //   215: istore #4
    //   217: aload_0
    //   218: iload #4
    //   220: putfield b : Z
    //   223: new eqo
    //   226: dup
    //   227: aload #7
    //   229: invokevirtual b : ()I
    //   232: i2f
    //   233: ldc 0.5
    //   235: fadd
    //   236: aload #7
    //   238: invokevirtual c : ()I
    //   241: i2f
    //   242: ldc 0.5
    //   244: fsub
    //   245: invokespecial <init> : (FF)V
    //   248: astore #7
    //   250: new eqo
    //   253: dup
    //   254: aload #6
    //   256: invokevirtual b : ()I
    //   259: i2f
    //   260: ldc 0.5
    //   262: fadd
    //   263: aload #6
    //   265: invokevirtual c : ()I
    //   268: i2f
    //   269: ldc 0.5
    //   271: fadd
    //   272: invokespecial <init> : (FF)V
    //   275: astore #6
    //   277: new eqo
    //   280: dup
    //   281: aload #5
    //   283: invokevirtual b : ()I
    //   286: i2f
    //   287: ldc 0.5
    //   289: fsub
    //   290: aload #5
    //   292: invokevirtual c : ()I
    //   295: i2f
    //   296: ldc 0.5
    //   298: fadd
    //   299: invokespecial <init> : (FF)V
    //   302: astore #5
    //   304: new eqo
    //   307: dup
    //   308: aload_1
    //   309: invokevirtual b : ()I
    //   312: i2f
    //   313: ldc 0.5
    //   315: fsub
    //   316: aload_1
    //   317: invokevirtual c : ()I
    //   320: i2f
    //   321: ldc 0.5
    //   323: fsub
    //   324: invokespecial <init> : (FF)V
    //   327: astore_1
    //   328: aload_0
    //   329: getfield e : I
    //   332: iconst_2
    //   333: imul
    //   334: iconst_3
    //   335: isub
    //   336: i2f
    //   337: fstore_2
    //   338: aload_0
    //   339: getfield e : I
    //   342: iconst_2
    //   343: imul
    //   344: i2f
    //   345: fstore_3
    //   346: iconst_4
    //   347: anewarray eqo
    //   350: dup
    //   351: iconst_0
    //   352: aload #7
    //   354: aastore
    //   355: dup
    //   356: iconst_1
    //   357: aload #6
    //   359: aastore
    //   360: dup
    //   361: iconst_2
    //   362: aload #5
    //   364: aastore
    //   365: dup
    //   366: iconst_3
    //   367: aload_1
    //   368: aastore
    //   369: fload_2
    //   370: fload_3
    //   371: invokestatic a : ([Leqo;FF)[Leqo;
    //   374: areturn
    //   375: iconst_0
    //   376: istore #4
    //   378: goto -> 217
  }
  
  private static eqo[] a(eqo[] paramArrayOfeqo, float paramFloat1, float paramFloat2) {
    paramFloat1 = paramFloat2 / 2.0F * paramFloat1;
    paramFloat2 = paramArrayOfeqo[0].a() - paramArrayOfeqo[2].a();
    float f1 = paramArrayOfeqo[0].b() - paramArrayOfeqo[2].b();
    float f2 = (paramArrayOfeqo[0].a() + paramArrayOfeqo[2].a()) / 2.0F;
    float f3 = (paramArrayOfeqo[0].b() + paramArrayOfeqo[2].b()) / 2.0F;
    eqo eqo1 = new eqo(paramFloat1 * paramFloat2 + f2, paramFloat1 * f1 + f3);
    eqo eqo2 = new eqo(f2 - paramFloat2 * paramFloat1, f3 - f1 * paramFloat1);
    paramFloat2 = paramArrayOfeqo[1].a() - paramArrayOfeqo[3].a();
    f1 = paramArrayOfeqo[1].b() - paramArrayOfeqo[3].b();
    f2 = (paramArrayOfeqo[1].a() + paramArrayOfeqo[3].a()) / 2.0F;
    f3 = (paramArrayOfeqo[1].b() + paramArrayOfeqo[3].b()) / 2.0F;
    return new eqo[] { eqo1, new eqo(paramFloat1 * paramFloat2 + f2, paramFloat1 * f1 + f3), eqo2, new eqo(f2 - paramFloat2 * paramFloat1, f3 - paramFloat1 * f1) };
  }
  
  private static float b(eqz parameqz1, eqz parameqz2) {
    return eue.a(parameqz1.b(), parameqz1.c(), parameqz2.b(), parameqz2.c());
  }
  
  private eqz b() {
    eqo eqo1;
    eqo eqo2;
    eqo eqo3;
    eqo eqo4;
    try {
      eqo[] arrayOfEqo = (new eug(this.a)).a();
      eqo4 = arrayOfEqo[0];
      eqo3 = arrayOfEqo[1];
      eqo2 = arrayOfEqo[2];
      eqo1 = arrayOfEqo[3];
    } catch (eqh eqh) {
      int k = this.a.f() / 2;
      int m = this.a.g() / 2;
      eqo4 = a(new eqz(k + 7, m - 7), false, 1, -1).a();
      eqo3 = a(new eqz(k + 7, m + 7), false, 1, 1).a();
      eqo2 = a(new eqz(k - 7, m + 7), false, -1, 1).a();
      eqo1 = a(new eqz(k - 7, m - 7), false, -1, -1).a();
    } 
    int i = eue.a((eqo4.a() + eqo1.a() + eqo3.a() + eqo2.a()) / 4.0F);
    float f = eqo4.b();
    int j = eue.a((eqo1.b() + f + eqo3.b() + eqo2.b()) / 4.0F);
    try {
      eqo[] arrayOfEqo = (new eug(this.a, 15, i, j)).a();
      eqo4 = arrayOfEqo[0];
      eqo3 = arrayOfEqo[1];
      eqo2 = arrayOfEqo[2];
      eqo eqo = arrayOfEqo[3];
    } catch (eqh eqh) {
      eqo4 = a(new eqz(i + 7, j - 7), false, 1, -1).a();
      eqo3 = a(new eqz(i + 7, j + 7), false, 1, 1).a();
      eqo2 = a(new eqz(i - 7, j + 7), false, -1, 1).a();
      eqo eqo = a(new eqz(i - 7, j - 7), false, -1, -1).a();
    } 
  }
  
  private eqo[] b(eqo[] paramArrayOfeqo) {
    return a(paramArrayOfeqo, (this.e * 2), c());
  }
  
  private int c() {
    return this.b ? (this.c * 4 + 11) : ((this.c <= 4) ? (this.c * 4 + 15) : (this.c * 4 + ((this.c - 4) / 8 + 1) * 2 + 15));
  }
  
  public eqs a() {
    return a(false);
  }
  
  public eqs a(boolean paramBoolean) {
    eqo[] arrayOfEqo = a(b());
    if (paramBoolean) {
      eqo eqo = arrayOfEqo[0];
      arrayOfEqo[0] = arrayOfEqo[2];
      arrayOfEqo[2] = eqo;
    } 
    a(arrayOfEqo);
    return new eqs(a(this.a, arrayOfEqo[this.f % 4], arrayOfEqo[(this.f + 1) % 4], arrayOfEqo[(this.f + 2) % 4], arrayOfEqo[(this.f + 3) % 4]), b(arrayOfEqo), this.b, this.d, this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */