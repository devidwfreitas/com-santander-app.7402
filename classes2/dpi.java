public final class dpi extends dqy<dpi> {
  private static volatile dpi[] f;
  
  public dpj[] a;
  
  public String b;
  
  public Long c;
  
  public Long d;
  
  public Integer e;
  
  public dpi() {
    c();
  }
  
  public static dpi[] b() {
    if (f == null)
      synchronized (drc.c) {
        if (f == null)
          f = new dpi[0]; 
        return f;
      }  
    return f;
  }
  
  protected int a() {
    int i = super.a();
    int j = i;
    if (this.a != null) {
      j = i;
      if (this.a.length > 0) {
        int k = 0;
        while (true) {
          j = i;
          if (k < this.a.length) {
            dpj dpj1 = this.a[k];
            j = i;
            if (dpj1 != null)
              j = i + dqw.c(1, dpj1); 
            k++;
            i = j;
            continue;
          } 
          break;
        } 
      } 
    } 
    i = j;
    if (this.b != null)
      i = j + dqw.b(2, this.b); 
    j = i;
    if (this.c != null)
      j = i + dqw.f(3, this.c.longValue()); 
    i = j;
    if (this.d != null)
      i = j + dqw.f(4, this.d.longValue()); 
    j = i;
    if (this.e != null)
      j = i + dqw.c(5, this.e.intValue()); 
    return j;
  }
  
  public dpi a(dqv paramdqv) {
    while (true) {
      int j;
      dpj[] arrayOfDpj;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          j = drh.a(paramdqv, 10);
          if (this.a == null) {
            i = 0;
          } else {
            i = this.a.length;
          } 
          arrayOfDpj = new dpj[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.a, 0, arrayOfDpj, 0, i);
            j = i;
          } 
          while (j < arrayOfDpj.length - 1) {
            arrayOfDpj[j] = new dpj();
            paramdqv.a(arrayOfDpj[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpj[j] = new dpj();
          paramdqv.a(arrayOfDpj[j]);
          this.a = arrayOfDpj;
          break;
        case 18:
          this.b = paramdqv.j();
          break;
        case 24:
          this.c = Long.valueOf(paramdqv.f());
          break;
        case 32:
          this.d = Long.valueOf(paramdqv.f());
          break;
        case 40:
          this.e = Integer.valueOf(paramdqv.g());
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null && this.a.length > 0)
      for (int i = 0; i < this.a.length; i++) {
        dpj dpj1 = this.a[i];
        if (dpj1 != null)
          paramdqw.a(1, dpj1); 
      }  
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.b(3, this.c.longValue()); 
    if (this.d != null)
      paramdqw.b(4, this.d.longValue()); 
    if (this.e != null)
      paramdqw.a(5, this.e.intValue()); 
    super.a(paramdqw);
  }
  
  public dpi c() {
    this.a = dpj.b();
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
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
    //   14: instanceof dpi
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpi
    //   24: astore_1
    //   25: iload_3
    //   26: istore_2
    //   27: aload_0
    //   28: getfield a : [Ldpj;
    //   31: aload_1
    //   32: getfield a : [Ldpj;
    //   35: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   38: ifeq -> 9
    //   41: aload_0
    //   42: getfield b : Ljava/lang/String;
    //   45: ifnonnull -> 143
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/String;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield c : Ljava/lang/Long;
    //   61: ifnonnull -> 159
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/Long;
    //   70: ifnonnull -> 9
    //   73: aload_0
    //   74: getfield d : Ljava/lang/Long;
    //   77: ifnonnull -> 175
    //   80: iload_3
    //   81: istore_2
    //   82: aload_1
    //   83: getfield d : Ljava/lang/Long;
    //   86: ifnonnull -> 9
    //   89: aload_0
    //   90: getfield e : Ljava/lang/Integer;
    //   93: ifnonnull -> 191
    //   96: iload_3
    //   97: istore_2
    //   98: aload_1
    //   99: getfield e : Ljava/lang/Integer;
    //   102: ifnonnull -> 9
    //   105: aload_0
    //   106: getfield ag : Ldra;
    //   109: ifnull -> 122
    //   112: aload_0
    //   113: getfield ag : Ldra;
    //   116: invokevirtual b : ()Z
    //   119: ifeq -> 207
    //   122: aload_1
    //   123: getfield ag : Ldra;
    //   126: ifnull -> 141
    //   129: iload_3
    //   130: istore_2
    //   131: aload_1
    //   132: getfield ag : Ldra;
    //   135: invokevirtual b : ()Z
    //   138: ifeq -> 9
    //   141: iconst_1
    //   142: ireturn
    //   143: aload_0
    //   144: getfield b : Ljava/lang/String;
    //   147: aload_1
    //   148: getfield b : Ljava/lang/String;
    //   151: invokevirtual equals : (Ljava/lang/Object;)Z
    //   154: ifne -> 57
    //   157: iconst_0
    //   158: ireturn
    //   159: aload_0
    //   160: getfield c : Ljava/lang/Long;
    //   163: aload_1
    //   164: getfield c : Ljava/lang/Long;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ifne -> 73
    //   173: iconst_0
    //   174: ireturn
    //   175: aload_0
    //   176: getfield d : Ljava/lang/Long;
    //   179: aload_1
    //   180: getfield d : Ljava/lang/Long;
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ifne -> 89
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_0
    //   192: getfield e : Ljava/lang/Integer;
    //   195: aload_1
    //   196: getfield e : Ljava/lang/Integer;
    //   199: invokevirtual equals : (Ljava/lang/Object;)Z
    //   202: ifne -> 105
    //   205: iconst_0
    //   206: ireturn
    //   207: aload_0
    //   208: getfield ag : Ldra;
    //   211: aload_1
    //   212: getfield ag : Ldra;
    //   215: invokevirtual equals : (Ljava/lang/Object;)Z
    //   218: ireturn
  }
  
  public int hashCode() {
    int i;
    int j;
    int k;
    int m;
    byte b = 0;
    int i1 = getClass().getName().hashCode();
    int i2 = drc.a((Object[])this.a);
    if (this.b == null) {
      i = 0;
    } else {
      i = this.b.hashCode();
    } 
    if (this.c == null) {
      j = 0;
    } else {
      j = this.c.hashCode();
    } 
    if (this.d == null) {
      k = 0;
    } else {
      k = this.d.hashCode();
    } 
    if (this.e == null) {
      m = 0;
    } else {
      m = this.e.hashCode();
    } 
    int n = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        n = b;
        return (m + (k + (j + (i + ((i1 + 527) * 31 + i2) * 31) * 31) * 31) * 31) * 31 + n;
      } 
    } else {
      return (m + (k + (j + (i + ((i1 + 527) * 31 + i2) * 31) * 31) * 31) * 31) * 31 + n;
    } 
    n = this.ag.hashCode();
    return (m + (k + (j + (i + ((i1 + 527) * 31 + i2) * 31) * 31) * 31) * 31) * 31 + n;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */