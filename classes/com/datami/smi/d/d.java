package com.datami.smi.d;

public enum d {
  a, b, c, d, e, f, g, h;
  
  private static final byte[] j = new byte[] { 
      33, 76, -31, 14, -19, 3, 16, -20, -6, 34, 
      -19, 3, 16, -34, 9, -17, 7, 9, -9, -15, 
      -10, 12, 12, 33, -1, -17, -5, 7, -44, 33, 
      6, -20, 8, 3, -21, 9, 3, 28, -2, 6, 
      -8, 11, -9, 25, -21, 8, 45, -21, 5, 2, 
      -38, 15, -2, -2, 6, -3, -19, 9 };
  
  private static int k = 70;
  
  static {
    a = new d(a(j[30], -j[4], j[24] + 1), 0);
    b = new d(a(-j[7], 39, j[41]), 1);
    c = new d(a(j[24] + 1, j[0], -j[20]), 2);
    d = new d(a(k & 0x1D, 42, j[49]), 3);
    byte b = j[48];
    e = new d(a(b, b | 0x20, j[21]), 4);
    f = new d(a(j[30], 18, 13), 5);
    g = new d(a(18, j[24] + 1, j[32]), 6);
    h = new d(a(18, j[30], j[49]), 7);
    i = new d[] { a, b, c, d, e, f, g, h };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 += 4;
    byte[] arrayOfByte2 = j;
    int j = 15 - paramInt3;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt1 = paramInt2;
      i = paramInt2;
      paramInt3 = j;
      paramInt2 = bool;
    } else {
      i = paramInt2;
      paramInt3 = 0;
      paramInt2 = paramInt1 + 65;
      paramInt1 = i;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    int i = paramInt3 + i + 4;
    paramInt1++;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */