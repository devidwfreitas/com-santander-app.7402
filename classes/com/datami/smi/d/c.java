package com.datami.smi.d;

public enum c {
  a, b, c;
  
  private static final byte[] e = new byte[] { 
      3, 112, 67, 33, -16, 8, -12, 10, 5, 1, 
      -12, -6, 7, -10, -4, 4, 11, -20, 10, -7, 
      0, 21, -18, 3, 4, -6, 6 };
  
  private static int f = 93;
  
  static {
    a = new c(a(e[12], e[15], e[0]), 0);
    b = new c(a(f & 0x33, e[20], e[7]), 1);
    c = new c(a(e[20], e[9], e[20]), 2);
    d = new c[] { a, b, c };
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 = paramInt3 * 2 + 67;
    int j = paramInt2 + 7;
    paramInt1 += 4;
    byte[] arrayOfByte2 = e;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      i = paramInt3;
      paramInt3 = j;
    } else {
      paramInt2 = paramInt3;
      paramInt3 = 0;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    paramInt1++;
    int i = -paramInt3 + i - 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */