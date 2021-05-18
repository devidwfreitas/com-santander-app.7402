public final class doz extends dqy<doz> {
  public Integer a;
  
  public Boolean b;
  
  public String c;
  
  public String d;
  
  public String e;
  
  public doz() {
    b();
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.c(1, this.a.intValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b.booleanValue()); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c); 
    j = i;
    if (this.d != null)
      j = i + dqw.b(4, this.d); 
    i = j;
    if (this.e != null)
      i = j + dqw.b(5, this.e); 
    return i;
  }
  
  public doz a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
              break;
          } 
          this.a = Integer.valueOf(i);
          break;
        case 16:
          this.b = Boolean.valueOf(paramdqv.i());
          break;
        case 26:
          this.c = paramdqv.j();
          break;
        case 34:
          this.d = paramdqv.j();
          break;
        case 42:
          this.e = paramdqv.j();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a.intValue()); 
    if (this.b != null)
      paramdqw.a(2, this.b.booleanValue()); 
    if (this.c != null)
      paramdqw.a(3, this.c); 
    if (this.d != null)
      paramdqw.a(4, this.d); 
    if (this.e != null)
      paramdqw.a(5, this.e); 
    super.a(paramdqw);
  }
  
  public doz b() {
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
    //   14: instanceof doz
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast doz
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
    //   42: getfield b : Ljava/lang/Boolean;
    //   45: ifnonnull -> 159
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/Boolean;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield c : Ljava/lang/String;
    //   61: ifnonnull -> 175
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/String;
    //   70: ifnonnull -> 9
    //   73: aload_0
    //   74: getfield d : Ljava/lang/String;
    //   77: ifnonnull -> 191
    //   80: iload_3
    //   81: istore_2
    //   82: aload_1
    //   83: getfield d : Ljava/lang/String;
    //   86: ifnonnull -> 9
    //   89: aload_0
    //   90: getfield e : Ljava/lang/String;
    //   93: ifnonnull -> 207
    //   96: iload_3
    //   97: istore_2
    //   98: aload_1
    //   99: getfield e : Ljava/lang/String;
    //   102: ifnonnull -> 9
    //   105: aload_0
    //   106: getfield ag : Ldra;
    //   109: ifnull -> 122
    //   112: aload_0
    //   113: getfield ag : Ldra;
    //   116: invokevirtual b : ()Z
    //   119: ifeq -> 223
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
    //   160: getfield b : Ljava/lang/Boolean;
    //   163: aload_1
    //   164: getfield b : Ljava/lang/Boolean;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ifne -> 57
    //   173: iconst_0
    //   174: ireturn
    //   175: aload_0
    //   176: getfield c : Ljava/lang/String;
    //   179: aload_1
    //   180: getfield c : Ljava/lang/String;
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ifne -> 73
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_0
    //   192: getfield d : Ljava/lang/String;
    //   195: aload_1
    //   196: getfield d : Ljava/lang/String;
    //   199: invokevirtual equals : (Ljava/lang/Object;)Z
    //   202: ifne -> 89
    //   205: iconst_0
    //   206: ireturn
    //   207: aload_0
    //   208: getfield e : Ljava/lang/String;
    //   211: aload_1
    //   212: getfield e : Ljava/lang/String;
    //   215: invokevirtual equals : (Ljava/lang/Object;)Z
    //   218: ifne -> 105
    //   221: iconst_0
    //   222: ireturn
    //   223: aload_0
    //   224: getfield ag : Ldra;
    //   227: aload_1
    //   228: getfield ag : Ldra;
    //   231: invokevirtual equals : (Ljava/lang/Object;)Z
    //   234: ireturn
  }
  
  public int hashCode() {
    int i;
    int j;
    int k;
    int m;
    int n;
    byte b = 0;
    int i2 = getClass().getName().hashCode();
    if (this.a == null) {
      i = 0;
    } else {
      i = this.a.intValue();
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
    int i1 = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        i1 = b;
        return (n + (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31) * 31 + i1;
      } 
    } else {
      return (n + (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31) * 31 + i1;
    } 
    i1 = this.ag.hashCode();
    return (n + (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31) * 31 + i1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\doz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */