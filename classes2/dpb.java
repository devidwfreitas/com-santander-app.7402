public final class dpb extends dqy<dpb> {
  public Integer a;
  
  public String b;
  
  public Boolean c;
  
  public String[] d;
  
  public dpb() {
    b();
  }
  
  protected int a() {
    int k = 0;
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.c(1, this.a.intValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.b(2, this.b); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c.booleanValue()); 
    j = i;
    if (this.d != null) {
      j = i;
      if (this.d.length > 0) {
        int m = 0;
        int n = 0;
        j = k;
        while (j < this.d.length) {
          String str = this.d[j];
          int i1 = m;
          k = n;
          if (str != null) {
            k = n + 1;
            i1 = m + dqw.b(str);
          } 
          j++;
          m = i1;
          n = k;
        } 
        j = i + m + n * 1;
      } 
    } 
    return j;
  }
  
  public dpb a(dqv paramdqv) {
    while (true) {
      int j;
      String[] arrayOfString;
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
            case 5:
            case 6:
              break;
          } 
          this.a = Integer.valueOf(i);
          break;
        case 18:
          this.b = paramdqv.j();
          break;
        case 24:
          this.c = Boolean.valueOf(paramdqv.i());
          break;
        case 34:
          j = drh.a(paramdqv, 34);
          if (this.d == null) {
            i = 0;
          } else {
            i = this.d.length;
          } 
          arrayOfString = new String[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.d, 0, arrayOfString, 0, i);
            j = i;
          } 
          while (j < arrayOfString.length - 1) {
            arrayOfString[j] = paramdqv.j();
            paramdqv.a();
            j++;
          } 
          arrayOfString[j] = paramdqv.j();
          this.d = arrayOfString;
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.a(1, this.a.intValue()); 
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.a(3, this.c.booleanValue()); 
    if (this.d != null && this.d.length > 0)
      for (int i = 0; i < this.d.length; i++) {
        String str = this.d[i];
        if (str != null)
          paramdqw.a(4, str); 
      }  
    super.a(paramdqw);
  }
  
  public dpb b() {
    this.b = null;
    this.c = null;
    this.d = drh.j;
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
    //   14: instanceof dpb
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dpb
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/Integer;
    //   29: ifnonnull -> 127
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/Integer;
    //   38: ifnonnull -> 9
    //   41: aload_0
    //   42: getfield b : Ljava/lang/String;
    //   45: ifnonnull -> 143
    //   48: iload_3
    //   49: istore_2
    //   50: aload_1
    //   51: getfield b : Ljava/lang/String;
    //   54: ifnonnull -> 9
    //   57: aload_0
    //   58: getfield c : Ljava/lang/Boolean;
    //   61: ifnonnull -> 159
    //   64: iload_3
    //   65: istore_2
    //   66: aload_1
    //   67: getfield c : Ljava/lang/Boolean;
    //   70: ifnonnull -> 9
    //   73: iload_3
    //   74: istore_2
    //   75: aload_0
    //   76: getfield d : [Ljava/lang/String;
    //   79: aload_1
    //   80: getfield d : [Ljava/lang/String;
    //   83: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   86: ifeq -> 9
    //   89: aload_0
    //   90: getfield ag : Ldra;
    //   93: ifnull -> 106
    //   96: aload_0
    //   97: getfield ag : Ldra;
    //   100: invokevirtual b : ()Z
    //   103: ifeq -> 175
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
    //   128: getfield a : Ljava/lang/Integer;
    //   131: aload_1
    //   132: getfield a : Ljava/lang/Integer;
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ifne -> 41
    //   141: iconst_0
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
    //   160: getfield c : Ljava/lang/Boolean;
    //   163: aload_1
    //   164: getfield c : Ljava/lang/Boolean;
    //   167: invokevirtual equals : (Ljava/lang/Object;)Z
    //   170: ifne -> 73
    //   173: iconst_0
    //   174: ireturn
    //   175: aload_0
    //   176: getfield ag : Ldra;
    //   179: aload_1
    //   180: getfield ag : Ldra;
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ireturn
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
    int i1 = drc.a((Object[])this.d);
    int m = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        m = b;
        return ((k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + i1) * 31 + m;
      } 
    } else {
      return ((k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + i1) * 31 + m;
    } 
    m = this.ag.hashCode();
    return ((k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + i1) * 31 + m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */