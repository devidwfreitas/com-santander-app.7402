package com.datami.smi.b;

public enum c {
  a, b, c;
  
  private static final byte[] f = new byte[] { 
      Byte.MAX_VALUE, -108, 117, -103, 23, 2, -9, 26, -12, -2, 
      12, 14, -14, 4, 19, -9, -7, 1, 10, -10, 
      22, 4, 0, -10, 23, 2, -9, 26, -12, -2, 
      12, 14, -5, -11, 14, -9, 26, -9, -7, 1, 
      10, -10, 22, 4, 0, -10, 12, -8, 18, 10, 
      -6, 7, 14, -27, 23, 2, -9, 26, -12, -12, 
      5, 11, -3, 18 };
  
  private static int g = 246;
  
  private int d;
  
  static {
    byte b1 = f[22];
    byte b2 = f[17];
    a = new c(a(b1, b2, b2), 0, 0);
    b = new c(a(f[18], f[22], f[17]), 1, 1);
    c = new c(a(f[20] - 1, f[5], f[22]), 2, 2);
    e = new c[] { a, b, c };
  }
  
  c(int paramInt1) {
    this.d = paramInt1;
  }
  
  private int a() {
    return this.d;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    paramInt2 = 23 - paramInt2 * 2;
    byte[] arrayOfByte2 = f;
    paramInt1 = paramInt1 * 2 + 4;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int k = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      j = paramInt1;
      i = k;
      paramInt3 = paramInt1;
    } else {
      i = 0;
      paramInt2 = 69 - paramInt3 * 4;
      paramInt3 = i;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    paramInt1 = j + 1;
    int i = paramInt3 + i - 3;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */