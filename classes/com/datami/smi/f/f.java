package com.datami.smi.f;

public enum f {
  a, b, c;
  
  private static final byte[] e = new byte[] { 
      23, 35, 100, -4, -7, 13, -5, -7, -19, -5, 
      -14, 2, -1, -22, -18, 23, -3, -12, 0, -7, 
      0, -13, -8, -14, -2, 8 };
  
  private static int f = 57;
  
  static {
    a = new f(a(-e[12], e[25], e[5]), 0);
    byte b1 = -e[12];
    byte b2 = e[18];
    b = new f(a(b1, b2, b2), 1);
    c = new f(a(e[18], -e[16], f & 0x54), 2);
    d = new f[] { a, b, c };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt2 * 2 + 4;
    paramInt2 = 83 - paramInt3;
    int j = 11 - paramInt1 * 4;
    byte[] arrayOfByte2 = e;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt1 = i;
      paramInt3 = paramInt2;
      i = j;
      paramInt2 = paramInt1;
      paramInt1 = bool;
    } else {
      paramInt1 = paramInt2;
      paramInt3 = 0;
      paramInt2 = i;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
    } 
    i = -i;
    paramInt2++;
    i = i + paramInt3 - 5;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */