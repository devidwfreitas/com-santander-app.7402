package com.datami.smi.c;

public final class e {
  public static String a;
  
  public static String b;
  
  public static String c;
  
  public static String d;
  
  public static String e;
  
  private static final byte[] f = new byte[] { 14, -75, -65, -28, 17, -11, -5, -7, 0, -17 };
  
  private static int g = 29;
  
  static {
    a = "";
    b = "";
    byte b = f[8];
    c = a(b, b - 1, f[8]);
    b = f[8];
    d = a(b, b - 1, f[8]);
    b = f[8];
    e = a(b, b - 1, f[8]);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 = paramInt1 * 3 + 85;
    byte[] arrayOfByte2 = f;
    paramInt3 = 7 - paramInt3 * 4;
    paramInt2 += 4;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = paramInt2;
      paramInt2 = bool;
    } else {
      paramInt3 = paramInt2;
      paramInt2 = 0;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
      int n = paramInt3 + 1;
      int i1 = paramInt2 + 1;
    } 
    int i = paramInt3 + i + 8;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
    int k = paramInt3 + 1;
    int m = paramInt2 + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */