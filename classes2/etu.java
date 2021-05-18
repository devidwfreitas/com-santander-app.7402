public final class etu {
  private final byte[] a;
  
  private int b;
  
  private int c;
  
  public etu(byte[] paramArrayOfbyte) {
    this.a = paramArrayOfbyte;
  }
  
  public int a() {
    return this.c;
  }
  
  public int a(int paramInt) {
    int j;
    if (paramInt < 1 || paramInt > 32 || paramInt > c())
      throw new IllegalArgumentException(String.valueOf(paramInt)); 
    if (this.c > 0) {
      int k;
      j = 8 - this.c;
      if (paramInt < j) {
        k = paramInt;
      } else {
        k = j;
      } 
      j -= k;
      byte b = this.a[this.b];
      this.c = k + this.c;
      if (this.c == 8) {
        this.c = 0;
        this.b++;
      } 
      int m = (255 >> 8 - k << j & b) >> j;
      j = paramInt - k;
      paramInt = m;
    } else {
      boolean bool = false;
      j = paramInt;
      paramInt = bool;
    } 
    int i = paramInt;
    if (j > 0) {
      while (j >= 8) {
        paramInt = paramInt << 8 | this.a[this.b] & 0xFF;
        this.b++;
        j -= 8;
      } 
      i = paramInt;
      if (j > 0) {
        i = 8 - j;
        i = paramInt << j | (255 >> i << i & this.a[this.b]) >> i;
        this.c = j + this.c;
      } 
    } 
    return i;
  }
  
  public int b() {
    return this.b;
  }
  
  public int c() {
    return (this.a.length - this.b) * 8 - this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */