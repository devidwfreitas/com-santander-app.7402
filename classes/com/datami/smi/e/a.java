package com.datami.smi.e;

public enum a {
  a, b, c;
  
  public static int d;
  
  public static byte e;
  
  private static final byte[] h = new byte[] { 
      57, 66, -26, 100, 14, -15, 2, -8, 21, -3, 
      15, -21, 14, -2, 12, 14, -17, 4, 15, -20, 
      16, 16, -9, -1, 19, -11, 2, -17, 4, 15, 
      -20, 19, 7 };
  
  private static int i = 60;
  
  private int f;
  
  static {
    a = new a(a(h[23] + 1, h[14], -h[23]), 0, 10);
    int i = h[23] + 1;
    int j = i | 0x17;
    b = new a(a(i, j, j & 0xE), 1, 11);
    i = -h[23];
    j = i - 1;
    c = new a(a(i, j, j), 2, 15);
    g = new a[] { a, b, c };
    d = (b.f << 4) + b.b.d;
    e = (byte)((a.f << 4) + b.b.d);
  }
  
  a(int paramInt1) {
    this.f = paramInt1;
  }
  
  private int a() {
    return this.f;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 += 4;
    paramInt1 = paramInt1 * 11 + 65;
    paramInt3 = 13 - paramInt3;
    byte[] arrayOfByte2 = h;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = paramInt2;
      paramInt2 = bool;
    } else {
      i = paramInt2;
      paramInt3 = 0;
      paramInt2 = paramInt1;
      paramInt1 = i;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
      int m = paramInt3 + 1;
    } 
    paramInt1++;
    int i = -paramInt3 + i + 3;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
    int k = paramInt3 + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */