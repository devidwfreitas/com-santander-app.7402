public final class doy extends dqy<doy> {
  private static volatile doy[] e;
  
  public dpb a;
  
  public doz b;
  
  public Boolean c;
  
  public String d;
  
  public doy() {
    c();
  }
  
  public static doy[] b() {
    if (e == null)
      synchronized (drc.c) {
        if (e == null)
          e = new doy[0]; 
        return e;
      }  
    return e;
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.c(1, this.a); 
    j = i;
    if (this.b != null)
      j = i + dqw.c(2, this.b); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c.booleanValue()); 
    j = i;
    if (this.d != null)
      j = i + dqw.b(4, this.d); 
    return j;
  }
  
  public doy a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          if (this.a == null)
            this.a = new dpb(); 
          paramdqv.a(this.a);
          break;
        case 18:
          if (this.b == null)
            this.b = new doz(); 
          paramdqv.a(this.b);
          break;
        case 24:
          this.c = Boolean.valueOf(paramdqv.i());
          break;
        case 34:
          this.d = paramdqv.j();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.a(3, this.c.booleanValue()); 
    if (this.d != null)
      paramdqw.a(4, this.d); 
    super.a(paramdqw);
  }
  
  public doy c() {
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
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
    //   14: instanceof doy
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast doy
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ldpb;
    //   29: ifnonnull -> 127
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ldpb;
    //   38: ifnonnull -> 9
    //   41: aload_0
    //   42: getfield b : Ldoz;
    //   45: ifnonnull -> 143
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ldoz;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield c : Ljava/lang/Boolean;
    //   61: ifnonnull -> 159
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/Boolean;
    //   70: ifnonnull -> 9
    //   73: aload_0
    //   74: getfield d : Ljava/lang/String;
    //   77: ifnonnull -> 175
    //   80: iload_3
    //   81: istore_2
    //   82: aload_1
    //   83: getfield d : Ljava/lang/String;
    //   86: ifnonnull -> 9
    //   89: aload_0
    //   90: getfield ag : Ldra;
    //   93: ifnull -> 106
    //   96: aload_0
    //   97: getfield ag : Ldra;
    //   100: invokevirtual b : ()Z
    //   103: ifeq -> 191
    //   106: aload_1
    //   107: getfield ag : Ldra;
    //   110: ifnull -> 125
    //   113: iload_3
    //   114: istore_2
    //   115: aload_1
    //   116: getfield ag : Ldra;
    //   119: invokevirtual b : ()Z
    //   122: ifeq -> 9
    //   125: iconst_1
    //   126: ireturn
    //   127: aload_0
    //   128: getfield a : Ldpb;
    //   131: aload_1
    //   132: getfield a : Ldpb;
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ifne -> 41
    //   141: iconst_0
    //   142: ireturn
    //   143: aload_0
    //   144: getfield b : Ldoz;
    //   147: aload_1
    //   148: getfield b : Ldoz;
    //   151: invokevirtual equals : (Ljava/lang/Object;)Z
    //   154: ifne -> 57
    //   157: iconst_0
    //   158: ireturn
    //   159: aload_0
    //   160: getfield c : Ljava/lang/Boolean;
    //   163: aload_1
    //   164: getfield c : Ljava/lang/Boolean;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ifne -> 73
    //   173: iconst_0
    //   174: ireturn
    //   175: aload_0
    //   176: getfield d : Ljava/lang/String;
    //   179: aload_1
    //   180: getfield d : Ljava/lang/String;
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ifne -> 89
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_0
    //   192: getfield ag : Ldra;
    //   195: aload_1
    //   196: getfield ag : Ldra;
    //   199: invokevirtual equals : (Ljava/lang/Object;)Z
    //   202: ireturn
  }
  
  public int hashCode() {
    int i;
    int j;
    int k;
    int m;
    byte b = 0;
    int i1 = getClass().getName().hashCode();
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
    int n = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        n = b;
        return (m + (k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31) * 31 + n;
      } 
    } else {
      return (m + (k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31) * 31 + n;
    } 
    n = this.ag.hashCode();
    return (m + (k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31) * 31 + n;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\doy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */