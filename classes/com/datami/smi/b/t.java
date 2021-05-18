package com.datami.smi.b;

public enum t {
  a, b, c, d;
  
  private static final byte[] f = new byte[] { 
      16, -122, 111, -110, -17, -4, -5, 4, -3, -22, 
      6, -11, -4, -22, 8, 8, -6, -20, -3, 9, 
      -4, -7, 13, -5, -7, -19, -5, -14, 2, -1, 
      -22, -18, 23, -3, -7, -10, -2, 0, -13, -8, 
      -14, -2, 8 };
  
  private static int g = 222;
  
  static {
    a = new t(a(f[37], f[0], f[37]), 0);
    b = new t(a(f[22], 32, f[37]), 1);
    c = new t(a(f[0], f[29], -f[11]), 2);
    d = new t(a(f[0], -f[9], f[7]), 3);
    e = new t[] { a, b, c, d };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int m = paramInt3 + 7;
    byte[] arrayOfByte1 = f;
    int i = 83 - paramInt1;
    paramInt3 = paramInt2 + 4;
    byte[] arrayOfByte2 = new byte[m];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
    } else {
      paramInt2 = 0;
      paramInt1 = i;
      int n = paramInt3 + 1;
      int i1 = paramInt2 + 1;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    i = -paramInt3 + i - 5;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int j = paramInt3 + 1;
    int k = paramInt2 + 1;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */