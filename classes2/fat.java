import java.lang.reflect.Array;

public final class fat {
  private final byte[][] a;
  
  private final int b;
  
  private final int c;
  
  public fat(int paramInt1, int paramInt2) {
    this.a = (byte[][])Array.newInstance(byte.class, new int[] { paramInt2, paramInt1 });
    this.b = paramInt1;
    this.c = paramInt2;
  }
  
  public byte a(int paramInt1, int paramInt2) {
    return this.a[paramInt2][paramInt1];
  }
  
  public int a() {
    return this.c;
  }
  
  public void a(byte paramByte) {
    for (int i = 0; i < this.c; i++) {
      for (int j = 0; j < this.b; j++)
        this.a[i][j] = paramByte; 
    } 
  }
  
  public void a(int paramInt1, int paramInt2, byte paramByte) {
    this.a[paramInt2][paramInt1] = paramByte;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3) {
    this.a[paramInt2][paramInt1] = (byte)paramInt3;
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean) {
    byte[] arrayOfByte = this.a[paramInt2];
    if (paramBoolean) {
      paramInt2 = 1;
    } else {
      paramInt2 = 0;
    } 
    arrayOfByte[paramInt1] = (byte)paramInt2;
  }
  
  public int b() {
    return this.b;
  }
  
  public byte[][] c() {
    return this.a;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(this.b * 2 * this.c + 2);
    for (int i = 0; i < this.c; i++) {
      int j = 0;
      while (j < this.b) {
        switch (this.a[i][j]) {
          case 0:
            stringBuilder.append(" 0");
            j++;
            break;
          case 1:
            stringBuilder.append(" 1");
            j++;
            break;
        } 
      } 
      stringBuilder.append('\n');
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */