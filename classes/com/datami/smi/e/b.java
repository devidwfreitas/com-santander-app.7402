package com.datami.smi.e;

public enum b {
  a, b, c;
  
  private static final byte[] f = new byte[] { 
      96, 70, 46, 60, -16, 14, 14, -15, 0, -8, 
      -16, 14, 14, -4, -20, 14, -2, -10, 19, 2, 
      12, -8, -16, 14 };
  
  private static int g = 189;
  
  int d;
  
  static {
    int i = g & 0x3;
    a = new b(a(i, i | 0x6, f[8]), 0, 0);
    i = f[8];
    b = new b(a(i, i | 0xD, f[8]), 1, 1);
    i = g;
    byte b1 = f[8];
    c = new b(a(i & 0x3, b1, b1 + 1), 2, 15);
    e = new b[] { a, b, c };
  }
  
  b(int paramInt1) {
    this.d = paramInt1;
  }
  
  private int a() {
    return this.d;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k = paramInt1 + 7;
    paramInt1 = 86 - paramInt3 * 10;
    int i = 17 - paramInt2;
    byte[] arrayOfByte2 = f;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      j = i;
      i = k;
      paramInt3 = paramInt1;
    } else {
      paramInt3 = 0;
      paramInt2 = paramInt1;
      paramInt1 = i;
      j = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    paramInt1 = j + 1;
    i = paramInt3 + i - 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int j = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */