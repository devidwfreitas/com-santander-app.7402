public final class dpn extends dqy<dpn> {
  private static volatile dpn[] g;
  
  public Long a;
  
  public String b;
  
  public String c;
  
  public Long d;
  
  public Float e;
  
  public Double f;
  
  public dpn() {
    c();
  }
  
  public static dpn[] b() {
    if (g == null)
      synchronized (drc.c) {
        if (g == null)
          g = new dpn[0]; 
        return g;
      }  
    return g;
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.f(1, this.a.longValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c); 
    j = i;
    if (this.d != null)
      j = i + dqw.f(4, this.d.longValue()); 
    i = j;
    if (this.e != null)
      i = j + dqw.b(5, this.e.floatValue()); 
    j = i;
    if (this.f != null)
      j = i + dqw.b(6, this.f.doubleValue()); 
    return j;
  }
  
  public dpn a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Long.valueOf(paramdqv.f());
          break;
        case 18:
          this.b = paramdqv.j();
          break;
        case 26:
          this.c = paramdqv.j();
          break;
        case 32:
          this.d = Long.valueOf(paramdqv.f());
          break;
        case 45:
          this.e = Float.valueOf(paramdqv.d());
          break;
        case 49:
          this.f = Double.valueOf(paramdqv.c());
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.b(1, this.a.longValue()); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.a(3, this.c); 
    if (this.d != null)
      paramdqw.b(4, this.d.longValue()); 
    if (this.e != null)
      paramdqw.a(5, this.e.floatValue()); 
    if (this.f != null)
      paramdqw.a(6, this.f.doubleValue()); 
    super.a(paramdqw);
  }
  
  public dpn c() {
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
    this.ag = null;
    this.ah = -1;
    return this;
  }
  
  public boolean equals(Object paramObject) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: aload_0
    //   4: if_acmpne -> 11
    //   7: iconst_1
    //   8: istore_2
    //   9: iload_2
    //   10: ireturn
    //   11: iload_3
    //   12: istore_2
    //   13: aload_1
    //   14: instanceof dpn
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpn
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/Long;
    //   29: ifnonnull -> 159
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/Long;
    //   38: ifnonnull -> 9
    //   41: aload_0
    //   42: getfield b : Ljava/lang/String;
    //   45: ifnonnull -> 175
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/String;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield c : Ljava/lang/String;
    //   61: ifnonnull -> 191
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/String;
    //   70: ifnonnull -> 9
    //   73: aload_0
    //   74: getfield d : Ljava/lang/Long;
    //   77: ifnonnull -> 207
    //   80: iload_3
    //   81: istore_2
    //   82: aload_1
    //   83: getfield d : Ljava/lang/Long;
    //   86: ifnonnull -> 9
    //   89: aload_0
    //   90: getfield e : Ljava/lang/Float;
    //   93: ifnonnull -> 223
    //   96: iload_3
    //   97: istore_2
    //   98: aload_1
    //   99: getfield e : Ljava/lang/Float;
    //   102: ifnonnull -> 9
    //   105: aload_0
    //   106: getfield f : Ljava/lang/Double;
    //   109: ifnonnull -> 239
    //   112: iload_3
    //   113: istore_2
    //   114: aload_1
    //   115: getfield f : Ljava/lang/Double;
    //   118: ifnonnull -> 9
    //   121: aload_0
    //   122: getfield ag : Ldra;
    //   125: ifnull -> 138
    //   128: aload_0
    //   129: getfield ag : Ldra;
    //   132: invokevirtual b : ()Z
    //   135: ifeq -> 255
    //   138: aload_1
    //   139: getfield ag : Ldra;
    //   142: ifnull -> 157
    //   145: iload_3
    //   146: istore_2
    //   147: aload_1
    //   148: getfield ag : Ldra;
    //   151: invokevirtual b : ()Z
    //   154: ifeq -> 9
    //   157: iconst_1
    //   158: ireturn
    //   159: aload_0
    //   160: getfield a : Ljava/lang/Long;
    //   163: aload_1
    //   164: getfield a : Ljava/lang/Long;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ifne -> 41
    //   173: iconst_0
    //   174: ireturn
    //   175: aload_0
    //   176: getfield b : Ljava/lang/String;
    //   179: aload_1
    //   180: getfield b : Ljava/lang/String;
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ifne -> 57
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_0
    //   192: getfield c : Ljava/lang/String;
    //   195: aload_1
    //   196: getfield c : Ljava/lang/String;
    //   199: invokevirtual equals : (Ljava/lang/Object;)Z
    //   202: ifne -> 73
    //   205: iconst_0
    //   206: ireturn
    //   207: aload_0
    //   208: getfield d : Ljava/lang/Long;
    //   211: aload_1
    //   212: getfield d : Ljava/lang/Long;
    //   215: invokevirtual equals : (Ljava/lang/Object;)Z
    //   218: ifne -> 89
    //   221: iconst_0
    //   222: ireturn
    //   223: aload_0
    //   224: getfield e : Ljava/lang/Float;
    //   227: aload_1
    //   228: getfield e : Ljava/lang/Float;
    //   231: invokevirtual equals : (Ljava/lang/Object;)Z
    //   234: ifne -> 105
    //   237: iconst_0
    //   238: ireturn
    //   239: aload_0
    //   240: getfield f : Ljava/lang/Double;
    //   243: aload_1
    //   244: getfield f : Ljava/lang/Double;
    //   247: invokevirtual equals : (Ljava/lang/Object;)Z
    //   250: ifne -> 121
    //   253: iconst_0
    //   254: ireturn
    //   255: aload_0
    //   256: getfield ag : Ldra;
    //   259: aload_1
    //   260: getfield ag : Ldra;
    //   263: invokevirtual equals : (Ljava/lang/Object;)Z
    //   266: ireturn
  }
  
  public int hashCode() {
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    byte b = 0;
    int i3 = getClass().getName().hashCode();
    if (this.a == null) {
      i = 0;
    } else {
      i = this.a.hashCode();
    } 
    if (this.b == null) {
      j = 0;
    } else {
      j = this.b.hashCode();
    } 
    if (this.c == null) {
      k = 0;
    } else {
      k = this.c.hashCode();
    } 
    if (this.d == null) {
      m = 0;
    } else {
      m = this.d.hashCode();
    } 
    if (this.e == null) {
      n = 0;
    } else {
      n = this.e.hashCode();
    } 
    if (this.f == null) {
      i1 = 0;
    } else {
      i1 = this.f.hashCode();
    } 
    int i2 = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        i2 = b;
        return (i1 + (n + (m + (k + (j + (i + (i3 + 527) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i2;
      } 
    } else {
      return (i1 + (n + (m + (k + (j + (i + (i3 + 527) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i2;
    } 
    i2 = this.ag.hashCode();
    return (i1 + (n + (m + (k + (j + (i + (i3 + 527) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */