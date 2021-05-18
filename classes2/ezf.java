import java.lang.reflect.Array;

public final class ezf {
  private final ezg[] a;
  
  private int b;
  
  private final int c;
  
  private final int d;
  
  ezf(int paramInt1, int paramInt2) {
    this.a = new ezg[paramInt1];
    int i = 0;
    int j = this.a.length;
    while (i < j) {
      this.a[i] = new ezg((paramInt2 + 4) * 17 + 1);
      i++;
    } 
    this.d = paramInt2 * 17;
    this.c = paramInt1;
    this.b = -1;
  }
  
  void a() {
    this.b++;
  }
  
  void a(int paramInt1, int paramInt2, byte paramByte) {
    this.a[paramInt2].a(paramInt1, paramByte);
  }
  
  public byte[][] a(int paramInt1, int paramInt2) {
    int i = this.c;
    int j = this.d;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(byte.class, new int[] { i * paramInt2, j * paramInt1 });
    j = this.c * paramInt2;
    for (i = 0; i < j; i++)
      arrayOfByte[j - i - 1] = this.a[i / paramInt2].a(paramInt1); 
    return arrayOfByte;
  }
  
  ezg b() {
    return this.a[this.b];
  }
  
  public byte[][] c() {
    return a(1, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */