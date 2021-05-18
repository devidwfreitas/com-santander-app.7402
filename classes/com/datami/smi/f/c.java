package com.datami.smi.f;

enum c {
  a, b;
  
  private static final byte[] d = new byte[] { 
      70, -47, 29, 53, -16, -7, 0, 18, 3, -14, 
      -8, 13, -11, -8, -12, 8, -18, -16, -7, 0, 
      18, 3, -14, -8, 13, -16, -16, -7, 0 };
  
  private static int e = 244;
  
  static {
    byte b1 = d[6];
    byte b2 = d[6];
    a = new c(a(b1 + 1, b2, b2), 0);
    b1 = d[6];
    b = new c(a(b1, b1, b1 + 1), 1);
    c = new c[] { a, b };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k = paramInt1 + 13;
    byte[] arrayOfByte2 = d;
    paramInt3 = paramInt3 * 13 + 4;
    paramInt2 = 82 - paramInt2 * 2;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      j = k;
      i = paramInt2;
    } else {
      i = 0;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      arrayOfByte1[i] = (byte)paramInt1;
      paramInt3 = i + 1;
    } 
    int j = i + j + 3;
    paramInt2 = paramInt3 + 1;
    int i = paramInt1;
    paramInt1 = j;
    arrayOfByte1[i] = (byte)paramInt1;
    paramInt3 = i + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */