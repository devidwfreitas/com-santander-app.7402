package com.datami.smi.b;

public enum e {
  a, b, c;
  
  private static final byte[] f = new byte[] { 
      29, -31, 22, -117, 16, -14, -14, 15, 0, 8, 
      16, -14, -14, 4, 20, -14, 2, 10, -19, -2, 
      -12, 8, 16, -14 };
  
  private static int g = 190;
  
  int d;
  
  static {
    int i = f[16] - 1;
    a = new e(a(i, i + 5, f[8]), 0, 0);
    i = f[8];
    b = new e(a(i, i, i), 1, 1);
    i = f[16] - 1;
    int j = i | 0xC;
    c = new e(a(i, j, j & 0x3), 2, 15);
    e = new e[] { a, b, c };
  }
  
  e(int paramInt1) {
    this.d = paramInt1;
  }
  
  private int a() {
    return this.d;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    byte[] arrayOfByte1 = f;
    paramInt2 += 4;
    int k = paramInt1 + 7;
    paramInt3 = 86 - paramInt3 * 10;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      j = paramInt2;
      i = paramInt2;
    } else {
      i = 0;
      paramInt1 = paramInt3;
      paramInt3 = i;
      arrayOfByte2[paramInt3] = (byte)paramInt1;
    } 
    paramInt3 = -paramInt3;
    paramInt2 = j + 1;
    int i = paramInt3 + i - 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */