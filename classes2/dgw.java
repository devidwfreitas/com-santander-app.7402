public final class dgw extends dqy<dgw> {
  public Long a = null;
  
  public Integer b = null;
  
  public Boolean c = null;
  
  public int[] d = drh.e;
  
  public Long e = null;
  
  protected int a() {
    boolean bool = false;
    int j = super.a();
    int i = j;
    if (this.a != null)
      i = j + dqw.f(1, this.a.longValue()); 
    j = i;
    if (this.b != null)
      j = i + dqw.c(2, this.b.intValue()); 
    i = j;
    if (this.c != null)
      i = j + dqw.b(3, this.c.booleanValue()); 
    j = i;
    if (this.d != null) {
      j = i;
      if (this.d.length > 0) {
        int k = 0;
        for (j = bool; j < this.d.length; j++)
          k += dqw.c(this.d[j]); 
        j = i + k + this.d.length * 1;
      } 
    } 
    i = j;
    if (this.e != null)
      i = j + dqw.e(5, this.e.longValue()); 
    return i;
  }
  
  public dgw a(dqv paramdqv) {
    while (true) {
      int j;
      int k;
      int[] arrayOfInt;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          this.a = Long.valueOf(paramdqv.f());
          break;
        case 16:
          this.b = Integer.valueOf(paramdqv.g());
          break;
        case 24:
          this.c = Boolean.valueOf(paramdqv.i());
          break;
        case 32:
          j = drh.a(paramdqv, 32);
          if (this.d == null) {
            i = 0;
          } else {
            i = this.d.length;
          } 
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.d, 0, arrayOfInt, 0, i);
            j = i;
          } 
          while (j < arrayOfInt.length - 1) {
            arrayOfInt[j] = paramdqv.g();
            paramdqv.a();
            j++;
          } 
          arrayOfInt[j] = paramdqv.g();
          this.d = arrayOfInt;
          break;
        case 34:
          k = paramdqv.d(paramdqv.n());
          i = paramdqv.t();
          for (j = 0; paramdqv.r() > 0; j++)
            paramdqv.g(); 
          paramdqv.f(i);
          if (this.d == null) {
            i = 0;
          } else {
            i = this.d.length;
          } 
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.d, 0, arrayOfInt, 0, i);
            j = i;
          } 
          while (j < arrayOfInt.length) {
            arrayOfInt[j] = paramdqv.g();
            j++;
          } 
          this.d = arrayOfInt;
          paramdqv.e(k);
          break;
        case 40:
          this.e = Long.valueOf(paramdqv.e());
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null)
      paramdqw.b(1, this.a.longValue()); 
    if (this.b != null)
      paramdqw.a(2, this.b.intValue()); 
    if (this.c != null)
      paramdqw.a(3, this.c.booleanValue()); 
    if (this.d != null && this.d.length > 0)
      for (int i = 0; i < this.d.length; i++)
        paramdqw.a(4, this.d[i]);  
    if (this.e != null)
      paramdqw.a(5, this.e.longValue()); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */