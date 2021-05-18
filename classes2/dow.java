public final class dow extends dqy<dow> {
  private static volatile dow[] d;
  
  public Integer a;
  
  public dpa[] b;
  
  public dox[] c;
  
  public dow() {
    c();
  }
  
  public static dow[] b() {
    if (d == null)
      synchronized (drc.c) {
        if (d == null)
          d = new dow[0]; 
        return d;
      }  
    return d;
  }
  
  protected int a() {
    boolean bool = false;
    int i = super.a();
    int j = i;
    if (this.a != null)
      j = i + dqw.c(1, this.a.intValue()); 
    i = j;
    if (this.b != null) {
      i = j;
      if (this.b.length > 0) {
        i = j;
        j = 0;
        while (j < this.b.length) {
          dpa dpa1 = this.b[j];
          int m = i;
          if (dpa1 != null)
            m = i + dqw.c(2, dpa1); 
          j++;
          i = m;
        } 
      } 
    } 
    int k = i;
    if (this.c != null) {
      k = i;
      if (this.c.length > 0) {
        j = bool;
        while (true) {
          k = i;
          if (j < this.c.length) {
            dox dox1 = this.c[j];
            k = i;
            if (dox1 != null)
              k = i + dqw.c(3, dox1); 
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
  
  public dow a(dqv paramdqv) {
    while (true) {
      int j;
      dpa[] arrayOfDpa;
      dox[] arrayOfDox;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Integer.valueOf(paramdqv.g());
          break;
        case 18:
          j = drh.a(paramdqv, 18);
          if (this.b == null) {
            i = 0;
          } else {
            i = this.b.length;
          } 
          arrayOfDpa = new dpa[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.b, 0, arrayOfDpa, 0, i);
            j = i;
          } 
          while (j < arrayOfDpa.length - 1) {
            arrayOfDpa[j] = new dpa();
            paramdqv.a(arrayOfDpa[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpa[j] = new dpa();
          paramdqv.a(arrayOfDpa[j]);
          this.b = arrayOfDpa;
          break;
        case 26:
          j = drh.a(paramdqv, 26);
          if (this.c == null) {
            i = 0;
          } else {
            i = this.c.length;
          } 
          arrayOfDox = new dox[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.c, 0, arrayOfDox, 0, i);
            j = i;
          } 
          while (j < arrayOfDox.length - 1) {
            arrayOfDox[j] = new dox();
            paramdqv.a(arrayOfDox[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDox[j] = new dox();
          paramdqv.a(arrayOfDox[j]);
          this.c = arrayOfDox;
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    byte b = 0;
    if (this.a != null)
      paramdqw.a(1, this.a.intValue()); 
    if (this.b != null && this.b.length > 0)
      for (int i = 0; i < this.b.length; i++) {
        dpa dpa1 = this.b[i];
        if (dpa1 != null)
          paramdqw.a(2, dpa1); 
      }  
    if (this.c != null && this.c.length > 0)
      for (int i = b; i < this.c.length; i++) {
        dox dox1 = this.c[i];
        if (dox1 != null)
          paramdqw.a(3, dox1); 
      }  
    super.a(paramdqw);
  }
  
  public dow c() {
    this.a = null;
    this.b = dpa.b();
    this.c = dox.b();
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
    //   14: instanceof dow
    //   17: ifeq -> 9
    //   20: aload_1
    //   21: checkcast dow
    //   24: astore_1
    //   25: aload_0
    //   26: getfield a : Ljava/lang/Integer;
    //   29: ifnonnull -> 111
    //   32: iload_3
    //   33: istore_2
    //   34: aload_1
    //   35: getfield a : Ljava/lang/Integer;
    //   38: ifnonnull -> 9
    //   41: iload_3
    //   42: istore_2
    //   43: aload_0
    //   44: getfield b : [Ldpa;
    //   47: aload_1
    //   48: getfield b : [Ldpa;
    //   51: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   54: ifeq -> 9
    //   57: iload_3
    //   58: istore_2
    //   59: aload_0
    //   60: getfield c : [Ldox;
    //   63: aload_1
    //   64: getfield c : [Ldox;
    //   67: invokestatic a : ([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   70: ifeq -> 9
    //   73: aload_0
    //   74: getfield ag : Ldra;
    //   77: ifnull -> 90
    //   80: aload_0
    //   81: getfield ag : Ldra;
    //   84: invokevirtual b : ()Z
    //   87: ifeq -> 127
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
    //   112: getfield a : Ljava/lang/Integer;
    //   115: aload_1
    //   116: getfield a : Ljava/lang/Integer;
    //   119: invokevirtual equals : (Ljava/lang/Object;)Z
    //   122: ifne -> 41
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
    byte b = 0;
    int k = getClass().getName().hashCode();
    if (this.a == null) {
      i = 0;
    } else {
      i = this.a.hashCode();
    } 
    int m = drc.a((Object[])this.b);
    int n = drc.a((Object[])this.c);
    int j = b;
    if (this.ag != null) {
      if (this.ag.b()) {
        j = b;
        return (((i + (k + 527) * 31) * 31 + m) * 31 + n) * 31 + j;
      } 
    } else {
      return (((i + (k + 527) * 31) * 31 + m) * 31 + n) * 31 + j;
    } 
    j = this.ag.hashCode();
    return (((i + (k + 527) * 31) * 31 + m) * 31 + n) * 31 + j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */