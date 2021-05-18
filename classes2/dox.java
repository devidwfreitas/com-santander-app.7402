public final class dox extends dqy<dox> {
  private static volatile dox[] f;
  
  public Integer a;
  
  public String b;
  
  public doy[] c;
  
  public Boolean d;
  
  public doz e;
  
  public dox() {
    c();
  }
  
  public static dox[] b() {
    if (f == null)
      synchronized (drc.c) {
        if (f == null)
          f = new dox[0]; 
        return f;
      }  
    return f;
  }
  
  protected int a() {
    int i = super.a();
    int j = i;
    if (this.a != null)
      j = i + dqw.c(1, this.a.intValue()); 
    i = j;
    if (this.b != null)
      i = j + dqw.b(2, this.b); 
    j = i;
    if (this.c != null) {
      j = i;
      if (this.c.length > 0) {
        j = 0;
        while (j < this.c.length) {
          doy doy1 = this.c[j];
          int k = i;
          if (doy1 != null)
            k = i + dqw.c(3, doy1); 
          j++;
          i = k;
        } 
        j = i;
      } 
    } 
    i = j;
    if (this.d != null)
      i = j + dqw.b(4, this.d.booleanValue()); 
    j = i;
    if (this.e != null)
      j = i + dqw.c(5, this.e); 
    return j;
  }
  
  public dox a(dqv paramdqv) {
    while (true) {
      int j;
      doy[] arrayOfDoy;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Integer.valueOf(paramdqv.g());
          break;
        case 18:
          this.b = paramdqv.j();
          break;
        case 26:
          j = drh.a(paramdqv, 26);
          if (this.c == null) {
            i = 0;
          } else {
            i = this.c.length;
          } 
          arrayOfDoy = new doy[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.c, 0, arrayOfDoy, 0, i);
            j = i;
          } 
          while (j < arrayOfDoy.length - 1) {
            arrayOfDoy[j] = new doy();
            paramdqv.a(arrayOfDoy[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDoy[j] = new doy();
          paramdqv.a(arrayOfDoy[j]);
          this.c = arrayOfDoy;
          break;
        case 32:
          this.d = Boolean.valueOf(paramdqv.i());
          break;
        case 42:
          if (this.e == null)
            this.e = new doz(); 
          paramdqv.a(this.e);
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a.intValue()); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null && this.c.length > 0)
      for (int i = 0; i < this.c.length; i++) {
        doy doy1 = this.c[i];
        if (doy1 != null)
          paramdqw.a(3, doy1); 
      }  
    if (this.d != null)
      paramdqw.a(4, this.d.booleanValue()); 
    if (this.e != null)
      paramdqw.a(5, this.e); 
    super.a(paramdqw);
  }
  
  public dox c() {
    this.a = null;
    this.b = null;
    this.c = doy.b();
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
    //   14: instanceof dox
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dox
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/Integer;
    //   29: ifnonnull -> 143
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/Integer;
    //   38: ifnonnull -> 9
    //   41: aload_0
    //   42: getfield b : Ljava/lang/String;
    //   45: ifnonnull -> 159
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/String;
    //   54: ifnonnull -> 9
    //   57: iload_3
    //   58: istore_2
    //   59: aload_0
    //   60: getfield c : [Ldoy;
    //   63: aload_1
    //   64: getfield c : [Ldoy;
    //   67: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   70: ifeq -> 9
    //   73: aload_0
    //   74: getfield d : Ljava/lang/Boolean;
    //   77: ifnonnull -> 175
    //   80: iload_3
    //   81: istore_2
    //   82: aload_1
    //   83: getfield d : Ljava/lang/Boolean;
    //   86: ifnonnull -> 9
    //   89: aload_0
    //   90: getfield e : Ldoz;
    //   93: ifnonnull -> 191
    //   96: iload_3
    //   97: istore_2
    //   98: aload_1
    //   99: getfield e : Ldoz;
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
    //   144: getfield a : Ljava/lang/Integer;
    //   147: aload_1
    //   148: getfield a : Ljava/lang/Integer;
    //   151: invokevirtual equals : (Ljava/lang/Object;)Z
    //   154: ifne -> 41
    //   157: iconst_0
    //   158: ireturn
    //   159: aload_0
    //   160: getfield b : Ljava/lang/String;
    //   163: aload_1
    //   164: getfield b : Ljava/lang/String;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ifne -> 57
    //   173: iconst_0
    //   174: ireturn
    //   175: aload_0
    //   176: getfield d : Ljava/lang/Boolean;
    //   179: aload_1
    //   180: getfield d : Ljava/lang/Boolean;
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ifne -> 89
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_0
    //   192: getfield e : Ldoz;
    //   195: aload_1
    //   196: getfield e : Ldoz;
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
    int i2 = drc.a((Object[])this.c);
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
        return (m + (k + ((j + (i + (i1 + 527) * 31) * 31) * 31 + i2) * 31) * 31) * 31 + n;
      } 
    } else {
      return (m + (k + ((j + (i + (i1 + 527) * 31) * 31) * 31 + i2) * 31) * 31) * 31 + n;
    } 
    n = this.ag.hashCode();
    return (m + (k + ((j + (i + (i1 + 527) * 31) * 31) * 31 + i2) * 31) * 31) * 31 + n;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */