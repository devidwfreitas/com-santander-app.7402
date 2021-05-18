public abstract class co implements cl {
  private static final int a = 64;
  
  private byte[] b = new byte[4];
  
  private int c;
  
  private long d;
  
  protected co() {
    this.c = 0;
  }
  
  protected co(co paramco) {
    System.arraycopy(paramco.b, 0, this.b, 0, paramco.b.length);
    this.c = paramco.c;
    this.d = paramco.d;
  }
  
  public void a(byte paramByte) {
    byte[] arrayOfByte = this.b;
    int i = this.c;
    this.c = i + 1;
    arrayOfByte[i] = paramByte;
    if (this.c == this.b.length) {
      a(this.b, 0);
      this.c = 0;
    } 
    this.d++;
  }
  
  protected abstract void a(long paramLong);
  
  protected abstract void a(byte[] paramArrayOfbyte, int paramInt);
  
  public void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i = paramInt1;
    while (true) {
      paramInt1 = i;
      int j = paramInt2;
      if (this.c != 0)
        if (paramInt2 <= 0) {
          j = paramInt2;
          paramInt1 = i;
        } else {
          a(paramArrayOfbyte[i]);
          i++;
          paramInt2--;
          continue;
        }  
      while (true) {
        if (j <= this.b.length) {
          while (true) {
            if (j <= 0)
              return; 
            a(paramArrayOfbyte[paramInt1]);
            paramInt1++;
            j--;
          } 
          break;
        } 
        a(paramArrayOfbyte, paramInt1);
        paramInt1 += this.b.length;
        j -= this.b.length;
        this.d += this.b.length;
      } 
      break;
    } 
  }
  
  public void c() {
    this.d = 0L;
    this.c = 0;
    for (int i = 0;; i++) {
      if (i >= this.b.length)
        return; 
      this.b[i] = 0;
    } 
  }
  
  protected abstract void d();
  
  public int e() {
    return 64;
  }
  
  public void f() {
    long l = this.d;
    a(-128);
    while (true) {
      if (this.c == 0) {
        a(l << 3L);
        d();
        return;
      } 
      a((byte)0);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\co.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */