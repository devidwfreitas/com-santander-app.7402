package com.datami.smi.b;

enum w {
  a, b, c, d;
  
  private static final byte[] f = new byte[] { 
      123, 83, 12, 122, -1, 10, 5, 15, -16, 2, 
      8, 3, 15, 4, 1, 8, -10, 6, 15, 9, 
      -15, 15, -15, 13, 2 };
  
  private static int g = 240;
  
  static {
    int i = f[14] - 1;
    a = new w(a(i, i | 0x13, f[14] - 1), 0);
    i = f[13];
    b = new w(a(i, i - 4, f[14]), 1);
    c = new w(a(f[19], f[5], f[9]), 2);
    d = new w(a(f[7], f[10], f[9]), 3);
    e = new w[] { a, b, c, d };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 87 - paramInt2;
    byte[] arrayOfByte2 = f;
    paramInt1 += 4;
    paramInt3 += 5;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = paramInt2;
      paramInt3 = j;
      paramInt2 = paramInt1;
      paramInt1 = bool;
    } else {
      i = 0;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      arrayOfByte1[i] = (byte)paramInt1;
    } 
    paramInt3 = paramInt3 + i - 2;
    paramInt2++;
    int i = paramInt1;
    paramInt1 = paramInt3;
    arrayOfByte1[i] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */