import java.util.Map;

public class fal {
  private final ett a;
  
  private eqp b;
  
  public fal(ett paramett) {
    this.a = paramett;
  }
  
  private float a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    boolean bool = false;
    float f2 = b(paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt3 = paramInt1 - paramInt3 - paramInt1;
    if (paramInt3 < 0) {
      f1 = paramInt1 / (paramInt1 - paramInt3);
      paramInt3 = 0;
    } else if (paramInt3 >= this.a.f()) {
      f1 = (this.a.f() - 1 - paramInt1) / (paramInt3 - paramInt1);
      paramInt3 = this.a.f();
      paramInt3--;
    } else {
      f1 = 1.0F;
    } 
    paramInt4 = (int)(paramInt2 - f1 * (paramInt4 - paramInt2));
    if (paramInt4 < 0) {
      f1 = paramInt2 / (paramInt2 - paramInt4);
      paramInt4 = bool;
      float f = paramInt1;
      return b(paramInt1, paramInt2, (int)(f1 * (paramInt3 - paramInt1) + f), paramInt4) + f2 - 1.0F;
    } 
    if (paramInt4 >= this.a.g()) {
      f1 = (this.a.g() - 1 - paramInt2) / (paramInt4 - paramInt2);
      paramInt4 = this.a.g() - 1;
      float f = paramInt1;
      return b(paramInt1, paramInt2, (int)(f1 * (paramInt3 - paramInt1) + f), paramInt4) + f2 - 1.0F;
    } 
    float f1 = 1.0F;
    float f3 = paramInt1;
    return b(paramInt1, paramInt2, (int)(f1 * (paramInt3 - paramInt1) + f3), paramInt4) + f2 - 1.0F;
  }
  
  private float a(eqo parameqo1, eqo parameqo2) {
    float f1 = a((int)parameqo1.a(), (int)parameqo1.b(), (int)parameqo2.a(), (int)parameqo2.b());
    float f2 = a((int)parameqo2.a(), (int)parameqo2.b(), (int)parameqo1.a(), (int)parameqo1.b());
    return Float.isNaN(f1) ? (f2 / 7.0F) : (Float.isNaN(f2) ? (f1 / 7.0F) : ((f1 + f2) / 14.0F));
  }
  
  private static int a(eqo parameqo1, eqo parameqo2, eqo parameqo3, float paramFloat) {
    int i = (eue.a(eqo.a(parameqo1, parameqo2) / paramFloat) + eue.a(eqo.a(parameqo1, parameqo3) / paramFloat)) / 2 + 7;
    switch (i & 0x3) {
      default:
        return i;
      case 0:
        return i + 1;
      case 2:
        return i - 1;
      case 3:
        break;
    } 
    throw eqh.a();
  }
  
  private static ett a(ett paramett, euc parameuc, int paramInt) {
    return eua.a().a(paramett, paramInt, paramInt, parameuc);
  }
  
  private static euc a(eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4, int paramInt) {
    float f1 = paramInt - 3.5F;
    if (parameqo4 != null) {
      float f8 = parameqo4.a();
      float f9 = parameqo4.b();
      float f7 = f1 - 3.0F;
      float f6 = f7;
      return euc.a(3.5F, 3.5F, f1, 3.5F, f6, f7, 3.5F, f1, parameqo1.a(), parameqo1.b(), parameqo2.a(), parameqo2.b(), f8, f9, parameqo3.a(), parameqo3.b());
    } 
    float f4 = parameqo2.a() - parameqo1.a() + parameqo3.a();
    float f5 = parameqo2.b() - parameqo1.b() + parameqo3.b();
    float f3 = f1;
    float f2 = f1;
    return euc.a(3.5F, 3.5F, f1, 3.5F, f2, f3, 3.5F, f1, parameqo1.a(), parameqo1.b(), parameqo2.a(), parameqo2.b(), f4, f5, parameqo3.a(), parameqo3.b());
  }
  
  private float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i;
    boolean bool;
    int k;
    int m;
    byte b1;
    byte b2;
    if (Math.abs(paramInt4 - paramInt2) > Math.abs(paramInt3 - paramInt1)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      m = paramInt4;
      k = paramInt3;
      i = paramInt2;
      paramInt4 = paramInt1;
    } else {
      k = paramInt4;
      paramInt4 = paramInt2;
      i = paramInt1;
      m = paramInt3;
    } 
    int n = Math.abs(m - i);
    int i1 = Math.abs(k - paramInt4);
    int j = -n / 2;
    if (i < m) {
      b1 = 1;
    } else {
      b1 = -1;
    } 
    if (paramInt4 < k) {
      b2 = 1;
    } else {
      b2 = -1;
    } 
    paramInt3 = 0;
    paramInt2 = i;
    paramInt1 = paramInt4;
    while (true) {
      if (paramInt2 != m + b1) {
        int i2;
        int i3;
        boolean bool1;
        if (bool) {
          i2 = paramInt1;
        } else {
          i2 = paramInt2;
        } 
        if (bool) {
          i3 = paramInt2;
        } else {
          i3 = paramInt1;
        } 
        if (paramInt3 == 1) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        if (bool1 == this.a.a(i2, i3)) {
          if (paramInt3 == 2)
            return eue.a(paramInt2, paramInt1, i, paramInt4); 
          paramInt3++;
        } 
        j += i1;
        if (j > 0) {
          if (paramInt1 == k)
            return (paramInt3 == 2) ? eue.a(m + b1, k, i, paramInt4) : Float.NaN; 
          paramInt1 += b2;
          j -= n;
        } 
        continue;
      } 
      return (paramInt3 == 2) ? eue.a(m + b1, k, i, paramInt4) : Float.NaN;
      paramInt2 += b1;
    } 
  }
  
  protected final float a(eqo parameqo1, eqo parameqo2, eqo parameqo3) {
    return (a(parameqo1, parameqo2) + a(parameqo1, parameqo3)) / 2.0F;
  }
  
  protected final ett a() {
    return this.a;
  }
  
  protected final ety a(far paramfar) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual b : ()Lfam;
    //   4: astore #16
    //   6: aload_1
    //   7: invokevirtual c : ()Lfam;
    //   10: astore #17
    //   12: aload_1
    //   13: invokevirtual a : ()Lfam;
    //   16: astore #18
    //   18: aload_0
    //   19: aload #16
    //   21: aload #17
    //   23: aload #18
    //   25: invokevirtual a : (Leqo;Leqo;Leqo;)F
    //   28: fstore_2
    //   29: fload_2
    //   30: fconst_1
    //   31: fcmpg
    //   32: ifge -> 39
    //   35: invokestatic a : ()Leqh;
    //   38: athrow
    //   39: aload #16
    //   41: aload #17
    //   43: aload #18
    //   45: fload_2
    //   46: invokestatic a : (Leqo;Leqo;Leqo;F)I
    //   49: istore #12
    //   51: iload #12
    //   53: invokestatic a : (I)Lfag;
    //   56: astore #19
    //   58: aload #19
    //   60: invokevirtual d : ()I
    //   63: istore #11
    //   65: aconst_null
    //   66: astore #15
    //   68: aload #15
    //   70: astore_1
    //   71: aload #19
    //   73: invokevirtual b : ()[I
    //   76: arraylength
    //   77: ifle -> 217
    //   80: aload #17
    //   82: invokevirtual a : ()F
    //   85: fstore_3
    //   86: aload #16
    //   88: invokevirtual a : ()F
    //   91: fstore #4
    //   93: aload #18
    //   95: invokevirtual a : ()F
    //   98: fstore #5
    //   100: aload #17
    //   102: invokevirtual b : ()F
    //   105: fstore #6
    //   107: aload #16
    //   109: invokevirtual b : ()F
    //   112: fstore #7
    //   114: aload #18
    //   116: invokevirtual b : ()F
    //   119: fstore #8
    //   121: fconst_1
    //   122: ldc 3.0
    //   124: iload #11
    //   126: bipush #7
    //   128: isub
    //   129: i2f
    //   130: fdiv
    //   131: fsub
    //   132: fstore #9
    //   134: aload #16
    //   136: invokevirtual a : ()F
    //   139: fstore #10
    //   141: fload_3
    //   142: fload #4
    //   144: fsub
    //   145: fload #5
    //   147: fadd
    //   148: aload #16
    //   150: invokevirtual a : ()F
    //   153: fsub
    //   154: fload #9
    //   156: fmul
    //   157: fload #10
    //   159: fadd
    //   160: f2i
    //   161: istore #13
    //   163: aload #16
    //   165: invokevirtual b : ()F
    //   168: fload #9
    //   170: fload #6
    //   172: fload #7
    //   174: fsub
    //   175: fload #8
    //   177: fadd
    //   178: aload #16
    //   180: invokevirtual b : ()F
    //   183: fsub
    //   184: fmul
    //   185: fadd
    //   186: f2i
    //   187: istore #14
    //   189: iconst_4
    //   190: istore #11
    //   192: aload #15
    //   194: astore_1
    //   195: iload #11
    //   197: bipush #16
    //   199: if_icmpgt -> 217
    //   202: iload #11
    //   204: i2f
    //   205: fstore_3
    //   206: aload_0
    //   207: fload_2
    //   208: iload #13
    //   210: iload #14
    //   212: fload_3
    //   213: invokevirtual a : (FIIF)Lfaj;
    //   216: astore_1
    //   217: aload #16
    //   219: aload #17
    //   221: aload #18
    //   223: aload_1
    //   224: iload #12
    //   226: invokestatic a : (Leqo;Leqo;Leqo;Leqo;I)Leuc;
    //   229: astore #15
    //   231: aload_0
    //   232: getfield a : Lett;
    //   235: aload #15
    //   237: iload #12
    //   239: invokestatic a : (Lett;Leuc;I)Lett;
    //   242: astore #15
    //   244: aload_1
    //   245: ifnonnull -> 289
    //   248: iconst_3
    //   249: anewarray eqo
    //   252: astore_1
    //   253: aload_1
    //   254: iconst_0
    //   255: aload #18
    //   257: aastore
    //   258: aload_1
    //   259: iconst_1
    //   260: aload #16
    //   262: aastore
    //   263: aload_1
    //   264: iconst_2
    //   265: aload #17
    //   267: aastore
    //   268: new ety
    //   271: dup
    //   272: aload #15
    //   274: aload_1
    //   275: invokespecial <init> : (Lett;[Leqo;)V
    //   278: areturn
    //   279: astore_1
    //   280: iload #11
    //   282: iconst_1
    //   283: ishl
    //   284: istore #11
    //   286: goto -> 192
    //   289: iconst_4
    //   290: anewarray eqo
    //   293: dup
    //   294: iconst_0
    //   295: aload #18
    //   297: aastore
    //   298: dup
    //   299: iconst_1
    //   300: aload #16
    //   302: aastore
    //   303: dup
    //   304: iconst_2
    //   305: aload #17
    //   307: aastore
    //   308: dup
    //   309: iconst_3
    //   310: aload_1
    //   311: aastore
    //   312: astore_1
    //   313: goto -> 268
    // Exception table:
    //   from	to	target	type
    //   206	217	279	eqh
  }
  
  protected final faj a(float paramFloat1, int paramInt1, int paramInt2, float paramFloat2) {
    int j = (int)(paramFloat2 * paramFloat1);
    int i = Math.max(0, paramInt1 - j);
    paramInt1 = Math.min(this.a.f() - 1, paramInt1 + j);
    if ((paramInt1 - i) < paramFloat1 * 3.0F)
      throw eqh.a(); 
    int k = Math.max(0, paramInt2 - j);
    paramInt2 = Math.min(this.a.g() - 1, j + paramInt2);
    if ((paramInt2 - k) < paramFloat1 * 3.0F)
      throw eqh.a(); 
    return (new fak(this.a, i, k, paramInt1 - i, paramInt2 - k, paramFloat1, this.b)).a();
  }
  
  protected final eqp b() {
    return this.b;
  }
  
  public final ety b(Map<epy, ?> paramMap) {
    if (paramMap == null) {
      eqp eqp2 = null;
      this.b = eqp2;
      return a((new fan(this.a, this.b)).b(paramMap));
    } 
    eqp eqp1 = (eqp)paramMap.get(epy.NEED_RESULT_POINT_CALLBACK);
    this.b = eqp1;
    return a((new fan(this.a, this.b)).b(paramMap));
  }
  
  public ety c() {
    return b(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */