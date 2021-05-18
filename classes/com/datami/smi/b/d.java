package com.datami.smi.b;

public enum d {
  a, b, c, d;
  
  public static int e;
  
  public static int f;
  
  public static byte g;
  
  public static byte h;
  
  private static final byte[] k = new byte[] { 
      89, 82, 85, -98, -22, -1, 10, -25, 14, 2, 
      -22, -1, 10, -25, 11, 11, -14, -6, 14, -16, 
      -3, -22, -1, 10, -25, 26, -11, 5, 2, -19, 
      -15, 26, 0, -4, -7, 1, 9, -20, -3, -13, 
      16, -8, 10, -26, 9, -7, 7, 9 };
  
  private static int l = 188;
  
  private int i;
  
  static {
    a = new d(a(k[32], -k[33], k[27]), 0, 10);
    b = new d(a(k[32], k[36], k[5]), 1, 11);
    byte b1 = k[32];
    c = new d(a(b1, b1, k[40]), 2, 12);
    b1 = k[35];
    byte b2 = -k[20];
    d = new d(a(b1, b2, b2 | 0x1C), 3, 15);
    j = new d[] { a, b, c, d };
    e = (b.i << 4) + e.b.d;
    f = (c.i << 4) + e.b.d;
    g = (byte)((a.i << 4) + e.a.d);
    h = (byte)((a.i << 4) + e.b.d);
  }
  
  d(int paramInt1) {
    this.i = paramInt1;
  }
  
  private int a() {
    return this.i;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = 16 - paramInt2;
    byte[] arrayOfByte2 = k;
    paramInt1 = paramInt1 * 11 + 65;
    paramInt2 = paramInt3 + 4;
    byte[] arrayOfByte1 = new byte[i];
    int j = i - 1;
    if (arrayOfByte2 == null) {
      byte b = -1;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = b;
    } else {
      paramInt3 = -1;
      int m = paramInt3 + 1;
      arrayOfByte1[m] = (byte)paramInt1;
    } 
    i = -paramInt3 + i - 2;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[k] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */