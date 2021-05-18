public final class dra implements Cloneable {
  private static final drb a = new drb();
  
  private boolean b = false;
  
  private int[] c;
  
  private drb[] d;
  
  private int e;
  
  dra() {
    this(10);
  }
  
  dra(int paramInt) {
    paramInt = c(paramInt);
    this.c = new int[paramInt];
    this.d = new drb[paramInt];
    this.e = 0;
  }
  
  private boolean a(int[] paramArrayOfint1, int[] paramArrayOfint2, int paramInt) {
    int i;
    for (i = 0; i < paramInt; i++) {
      if (paramArrayOfint1[i] != paramArrayOfint2[i])
        return false; 
    } 
    return true;
  }
  
  private boolean a(drb[] paramArrayOfdrb1, drb[] paramArrayOfdrb2, int paramInt) {
    int i;
    for (i = 0; i < paramInt; i++) {
      if (!paramArrayOfdrb1[i].equals(paramArrayOfdrb2[i]))
        return false; 
    } 
    return true;
  }
  
  private int c(int paramInt) {
    return d(paramInt * 4) / 4;
  }
  
  private int d(int paramInt) {
    for (int i = 4;; i++) {
      int j = paramInt;
      if (i < 32) {
        if (paramInt <= (1 << i) - 12)
          return (1 << i) - 12; 
      } else {
        return j;
      } 
    } 
  }
  
  private int e(int paramInt) {
    int i = 0;
    int j = this.e - 1;
    while (i <= j) {
      int k = i + j >>> 1;
      int m = this.c[k];
      if (m < paramInt) {
        i = k + 1;
        continue;
      } 
      if (m > paramInt) {
        j = k - 1;
        continue;
      } 
      return k;
    } 
    return i ^ 0xFFFFFFFF;
  }
  
  int a() {
    return this.e;
  }
  
  drb a(int paramInt) {
    paramInt = e(paramInt);
    return (paramInt < 0 || this.d[paramInt] == a) ? null : this.d[paramInt];
  }
  
  void a(int paramInt, drb paramdrb) {
    int i = e(paramInt);
    if (i >= 0) {
      this.d[i] = paramdrb;
      return;
    } 
    i ^= 0xFFFFFFFF;
    if (i < this.e && this.d[i] == a) {
      this.c[i] = paramInt;
      this.d[i] = paramdrb;
      return;
    } 
    if (this.e >= this.c.length) {
      int j = c(this.e + 1);
      int[] arrayOfInt = new int[j];
      drb[] arrayOfDrb = new drb[j];
      System.arraycopy(this.c, 0, arrayOfInt, 0, this.c.length);
      System.arraycopy(this.d, 0, arrayOfDrb, 0, this.d.length);
      this.c = arrayOfInt;
      this.d = arrayOfDrb;
    } 
    if (this.e - i != 0) {
      System.arraycopy(this.c, i, this.c, i + 1, this.e - i);
      System.arraycopy(this.d, i, this.d, i + 1, this.e - i);
    } 
    this.c[i] = paramInt;
    this.d[i] = paramdrb;
    this.e++;
  }
  
  drb b(int paramInt) {
    return this.d[paramInt];
  }
  
  public boolean b() {
    return (a() == 0);
  }
  
  public final dra c() {
    int j = a();
    dra dra1 = new dra(j);
    System.arraycopy(this.c, 0, dra1.c, 0, j);
    for (int i = 0; i < j; i++) {
      if (this.d[i] != null)
        dra1.d[i] = (drb)this.d[i].clone(); 
    } 
    dra1.e = j;
    return dra1;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (!(paramObject instanceof dra))
        return false; 
      paramObject = paramObject;
      if (a() != paramObject.a())
        return false; 
      if (!a(this.c, ((dra)paramObject).c, this.e) || !a(this.d, ((dra)paramObject).d, this.e))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    int j = 17;
    for (int i = 0; i < this.e; i++)
      j = (j * 31 + this.c[i]) * 31 + this.d[i].hashCode(); 
    return j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dra.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */