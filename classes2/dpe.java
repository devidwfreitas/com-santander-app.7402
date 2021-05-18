public final class dpe extends dqy<dpe> {
  public Long a;
  
  public String b;
  
  public Integer c;
  
  public dpf[] d;
  
  public dpd[] e;
  
  public dow[] f;
  
  public dpe() {
    b();
  }
  
  protected int a() {
    boolean bool = false;
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.f(1, this.a.longValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b); 
    i = j;
    if (this.c != null)
      i = j + dqw.c(3, this.c.intValue()); 
    j = i;
    if (this.d != null) {
      j = i;
      if (this.d.length > 0) {
        j = 0;
        while (j < this.d.length) {
          dpf dpf1 = this.d[j];
          int m = i;
          if (dpf1 != null)
            m = i + dqw.c(4, dpf1); 
          j++;
          i = m;
        } 
        j = i;
      } 
    } 
    i = j;
    if (this.e != null) {
      i = j;
      if (this.e.length > 0) {
        i = j;
        j = 0;
        while (j < this.e.length) {
          dpd dpd1 = this.e[j];
          int m = i;
          if (dpd1 != null)
            m = i + dqw.c(5, dpd1); 
          j++;
          i = m;
        } 
      } 
    } 
    int k = i;
    if (this.f != null) {
      k = i;
      if (this.f.length > 0) {
        j = bool;
        while (true) {
          k = i;
          if (j < this.f.length) {
            dow dow1 = this.f[j];
            k = i;
            if (dow1 != null)
              k = i + dqw.c(6, dow1); 
            j++;
            i = k;
            continue;
          } 
          break;
        } 
      } 
    } 
    return k;
  }
  
  public dpe a(dqv paramdqv) {
    while (true) {
      int j;
      dpf[] arrayOfDpf;
      dpd[] arrayOfDpd;
      dow[] arrayOfDow;
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
        case 24:
          this.c = Integer.valueOf(paramdqv.g());
          break;
        case 34:
          j = drh.a(paramdqv, 34);
          if (this.d == null) {
            i = 0;
          } else {
            i = this.d.length;
          } 
          arrayOfDpf = new dpf[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.d, 0, arrayOfDpf, 0, i);
            j = i;
          } 
          while (j < arrayOfDpf.length - 1) {
            arrayOfDpf[j] = new dpf();
            paramdqv.a(arrayOfDpf[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpf[j] = new dpf();
          paramdqv.a(arrayOfDpf[j]);
          this.d = arrayOfDpf;
          break;
        case 42:
          j = drh.a(paramdqv, 42);
          if (this.e == null) {
            i = 0;
          } else {
            i = this.e.length;
          } 
          arrayOfDpd = new dpd[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.e, 0, arrayOfDpd, 0, i);
            j = i;
          } 
          while (j < arrayOfDpd.length - 1) {
            arrayOfDpd[j] = new dpd();
            paramdqv.a(arrayOfDpd[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpd[j] = new dpd();
          paramdqv.a(arrayOfDpd[j]);
          this.e = arrayOfDpd;
          break;
        case 50:
          j = drh.a(paramdqv, 50);
          if (this.f == null) {
            i = 0;
          } else {
            i = this.f.length;
          } 
          arrayOfDow = new dow[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.f, 0, arrayOfDow, 0, i);
            j = i;
          } 
          while (j < arrayOfDow.length - 1) {
            arrayOfDow[j] = new dow();
            paramdqv.a(arrayOfDow[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDow[j] = new dow();
          paramdqv.a(arrayOfDow[j]);
          this.f = arrayOfDow;
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    byte b = 0;
    if (this.a != null)
      paramdqw.b(1, this.a.longValue()); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.a(3, this.c.intValue()); 
    if (this.d != null && this.d.length > 0)
      for (int i = 0; i < this.d.length; i++) {
        dpf dpf1 = this.d[i];
        if (dpf1 != null)
          paramdqw.a(4, dpf1); 
      }  
    if (this.e != null && this.e.length > 0)
      for (int i = 0; i < this.e.length; i++) {
        dpd dpd1 = this.e[i];
        if (dpd1 != null)
          paramdqw.a(5, dpd1); 
      }  
    if (this.f != null && this.f.length > 0)
      for (int i = b; i < this.f.length; i++) {
        dow dow1 = this.f[i];
        if (dow1 != null)
          paramdqw.a(6, dow1); 
      }  
    super.a(paramdqw);
  }
  
  public dpe b() {
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = dpf.b();
    this.e = dpd.b();
    this.f = dow.b();
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
    //   14: instanceof dpe
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpe
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
    //   58: getfield c : Ljava/lang/Integer;
    //   61: ifnonnull -> 191
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/Integer;
    //   70: ifnonnull -> 9
    //   73: iload_3
    //   74: istore_2
    //   75: aload_0
    //   76: getfield d : [Ldpf;
    //   79: aload_1
    //   80: getfield d : [Ldpf;
    //   83: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   86: ifeq -> 9
    //   89: iload_3
    //   90: istore_2
    //   91: aload_0
    //   92: getfield e : [Ldpd;
    //   95: aload_1
    //   96: getfield e : [Ldpd;
    //   99: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   102: ifeq -> 9
    //   105: iload_3
    //   106: istore_2
    //   107: aload_0
    //   108: getfield f : [Ldow;
    //   111: aload_1
    //   112: getfield f : [Ldow;
    //   115: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   118: ifeq -> 9
    //   121: aload_0
    //   122: getfield ag : Ldra;
    //   125: ifnull -> 138
    //   128: aload_0
    //   129: getfield ag : Ldra;
    //   132: invokevirtual b : ()Z
    //   135: ifeq -> 207
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
    //   192: getfield c : Ljava/lang/Integer;
    //   195: aload_1
    //   196: getfield c : Ljava/lang/Integer;
    //   199: invokevirtual equals : (Ljava/lang/Object;)Z
    //   202: ifne -> 73
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
    byte b = 0;
    int n = getClass().getName().hashCode();
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
    int i1 = drc.a((Object[])this.d);
    int i2 = drc.a((Object[])this.e);
    int i3 = drc.a((Object[])this.f);
    int m = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        m = b;
        return ((((k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + m;
      } 
    } else {
      return ((((k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + m;
    } 
    m = this.ag.hashCode();
    return ((((k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */