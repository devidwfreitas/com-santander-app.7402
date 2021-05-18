public final class dpd extends dqy<dpd> {
  private static volatile dpd[] d;
  
  public String a;
  
  public Boolean b;
  
  public Boolean c;
  
  public dpd() {
    c();
  }
  
  public static dpd[] b() {
    if (d == null)
      synchronized (drc.c) {
        if (d == null)
          d = new dpd[0]; 
        return d;
      }  
    return d;
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.b(1, this.a); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b.booleanValue()); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c.booleanValue()); 
    return i;
  }
  
  public dpd a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          this.a = paramdqv.j();
          break;
        case 16:
          this.b = Boolean.valueOf(paramdqv.i());
          break;
        case 24:
          this.c = Boolean.valueOf(paramdqv.i());
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a); 
    if (this.b != null)
      paramdqw.a(2, this.b.booleanValue()); 
    if (this.c != null)
      paramdqw.a(3, this.c.booleanValue()); 
    super.a(paramdqw);
  }
  
  public dpd c() {
    this.a = null;
    this.b = null;
    this.c = null;
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
    //   14: instanceof dpd
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpd
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/String;
    //   29: ifnonnull -> 111
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/String;
    //   38: ifnonnull -> 9
    //   41: aload_0
    //   42: getfield b : Ljava/lang/Boolean;
    //   45: ifnonnull -> 127
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/Boolean;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield c : Ljava/lang/Boolean;
    //   61: ifnonnull -> 143
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/Boolean;
    //   70: ifnonnull -> 9
    //   73: aload_0
    //   74: getfield ag : Ldra;
    //   77: ifnull -> 90
    //   80: aload_0
    //   81: getfield ag : Ldra;
    //   84: invokevirtual b : ()Z
    //   87: ifeq -> 159
    //   90: aload_1
    //   91: getfield ag : Ldra;
    //   94: ifnull -> 109
    //   97: iload_3
    //   98: istore_2
    //   99: aload_1
    //   100: getfield ag : Ldra;
    //   103: invokevirtual b : ()Z
    //   106: ifeq -> 9
    //   109: iconst_1
    //   110: ireturn
    //   111: aload_0
    //   112: getfield a : Ljava/lang/String;
    //   115: aload_1
    //   116: getfield a : Ljava/lang/String;
    //   119: invokevirtual equals : (Ljava/lang/Object;)Z
    //   122: ifne -> 41
    //   125: iconst_0
    //   126: ireturn
    //   127: aload_0
    //   128: getfield b : Ljava/lang/Boolean;
    //   131: aload_1
    //   132: getfield b : Ljava/lang/Boolean;
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ifne -> 57
    //   141: iconst_0
    //   142: ireturn
    //   143: aload_0
    //   144: getfield c : Ljava/lang/Boolean;
    //   147: aload_1
    //   148: getfield c : Ljava/lang/Boolean;
    //   151: invokevirtual equals : (Ljava/lang/Object;)Z
    //   154: ifne -> 73
    //   157: iconst_0
    //   158: ireturn
    //   159: aload_0
    //   160: getfield ag : Ldra;
    //   163: aload_1
    //   164: getfield ag : Ldra;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ireturn
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
    int m = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        m = b;
        return (k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + m;
      } 
    } else {
      return (k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + m;
    } 
    m = this.ag.hashCode();
    return (k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */