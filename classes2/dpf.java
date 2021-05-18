public final class dpf extends dqy<dpf> {
  private static volatile dpf[] c;
  
  public String a;
  
  public String b;
  
  public dpf() {
    c();
  }
  
  public static dpf[] b() {
    if (c == null)
      synchronized (drc.c) {
        if (c == null)
          c = new dpf[0]; 
        return c;
      }  
    return c;
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.b(1, this.a); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b); 
    return j;
  }
  
  public dpf a(dqv paramdqv) {
    while (true) {
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          this.a = paramdqv.j();
          break;
        case 18:
          this.b = paramdqv.j();
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    super.a(paramdqw);
  }
  
  public dpf c() {
    this.a = null;
    this.b = null;
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
    //   14: instanceof dpf
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpf
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/String;
    //   29: ifnonnull -> 95
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/String;
    //   38: ifnonnull -> 9
    //   41: aload_0
    //   42: getfield b : Ljava/lang/String;
    //   45: ifnonnull -> 111
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/String;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield ag : Ldra;
    //   61: ifnull -> 74
    //   64: aload_0
    //   65: getfield ag : Ldra;
    //   68: invokevirtual b : ()Z
    //   71: ifeq -> 127
    //   74: aload_1
    //   75: getfield ag : Ldra;
    //   78: ifnull -> 93
    //   81: iload_3
    //   82: istore_2
    //   83: aload_1
    //   84: getfield ag : Ldra;
    //   87: invokevirtual b : ()Z
    //   90: ifeq -> 9
    //   93: iconst_1
    //   94: ireturn
    //   95: aload_0
    //   96: getfield a : Ljava/lang/String;
    //   99: aload_1
    //   100: getfield a : Ljava/lang/String;
    //   103: invokevirtual equals : (Ljava/lang/Object;)Z
    //   106: ifne -> 41
    //   109: iconst_0
    //   110: ireturn
    //   111: aload_0
    //   112: getfield b : Ljava/lang/String;
    //   115: aload_1
    //   116: getfield b : Ljava/lang/String;
    //   119: invokevirtual equals : (Ljava/lang/Object;)Z
    //   122: ifne -> 57
    //   125: iconst_0
    //   126: ireturn
    //   127: aload_0
    //   128: getfield ag : Ldra;
    //   131: aload_1
    //   132: getfield ag : Ldra;
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ireturn
  }
  
  public int hashCode() {
    int i;
    int j;
    byte b = 0;
    int m = getClass().getName().hashCode();
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
    int k = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        k = b;
        return (j + (i + (m + 527) * 31) * 31) * 31 + k;
      } 
    } else {
      return (j + (i + (m + 527) * 31) * 31) * 31 + k;
    } 
    k = this.ag.hashCode();
    return (j + (i + (m + 527) * 31) * 31) * 31 + k;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */