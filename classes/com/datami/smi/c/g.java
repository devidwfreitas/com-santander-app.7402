package com.datami.smi.c;

public final class g {
  public static final String a = "SD";
  
  public static final String b = "NO_SD";
  
  public static final String c = "USR_LMTEXD";
  
  public static final String d = "DLY_LMTEXD";
  
  public static final String e = "WKL_LMTEXD";
  
  public static final String f = "MON_LMTEXD";
  
  public static final String g = "PKG_LMTEXD";
  
  public static final String h = "ROAMING";
  
  public static final String i = "USAGE";
  
  private static final byte[] k = new byte[] { 
      27, -24, 23, 54, 17, 14, 1, -17, 21, 1, 
      -5, 17, -17, 22, 4, 20, -4, 4, 4, 3, 
      -11, 21, 1, -5, 17, -17, 22, 0, 3, -15, 
      21, 1, -5, 17, -17, 22, 5, 16, -10, 6, 
      -3, 9, 7, 6, -22, 21, 1, -5, 17, -17, 
      22, -6, -11, -4, 21, 1, -5, 17, -17, 22, 
      1, -14, 14, 17 };
  
  private static int l = 222;
  
  private g(e parame) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j = paramInt2 + 2;
    paramInt1 = 59 - paramInt1;
    byte[] arrayOfByte2 = k;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt1;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = paramInt2;
      paramInt2 = bool;
    } else {
      i = paramInt1;
      paramInt2 = 0;
      paramInt1 = 87 - paramInt3;
      paramInt3 = i;
      byte b1 = (byte)paramInt1;
      int m = paramInt2 + 1;
      arrayOfByte1[paramInt2] = b1;
    } 
    int i = -paramInt3 + i + 2;
    paramInt3 = paramInt1;
    paramInt1 = i;
    byte b = (byte)paramInt1;
    int k = paramInt2 + 1;
    arrayOfByte1[paramInt2] = b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */