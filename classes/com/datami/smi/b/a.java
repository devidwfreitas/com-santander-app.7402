package com.datami.smi.b;

public enum a {
  a, b, c;
  
  private static final byte[] f = new byte[] { 
      84, -39, -37, 87, -1, 3, 6, -2, 27, -29, 
      14, -9, 28, -12, -12, -3, 21, 0, -11, 24, 
      -15, 0, 18, -18, -10, 21, -6, -10, 6, 2, 
      17, -27, -1, 8, -4, 3, -1, 3, 6, -2 };
  
  private static int g = 164;
  
  private int d;
  
  static {
    byte b = -f[4];
    a = new a(a(b, b | 0x18, -f[4]), 0, 0);
    b = f[17];
    b = new a(a(b, b | 0x20, f[17]), 1, 1);
    b = f[17];
    c = new a(a(b, b, b | 0x7), 2, 2);
    e = new a[] { a, b, c };
  }
  
  a(int paramInt1) {
    this.d = paramInt1;
  }
  
  private int a() {
    return this.d;
  }
  
  public static a a(int paramInt) {
    switch (paramInt) {
      default:
        return b;
      case 0:
        return a;
      case 2:
        break;
    } 
    return c;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte1 = f;
    int k = paramInt3 * 3 + 5;
    paramInt3 = paramInt2 + 4;
    paramInt1 = paramInt1 * 11 + 67;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      j = paramInt3;
      i = paramInt3;
      paramInt3 = paramInt1;
    } else {
      i = paramInt3;
      paramInt3 = 0;
      paramInt2 = paramInt1;
      paramInt1 = i;
      arrayOfByte2[paramInt3] = (byte)paramInt2;
      j = paramInt3 + 1;
    } 
    paramInt1 = j + 1;
    int i = paramInt3 + i - 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt2;
    int j = paramInt3 + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */