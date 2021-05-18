package com.datami.smi.c;

public final class i {
  public static final String a = "eventName";
  
  public static final String b = "eventDetails";
  
  public static final String c = "token";
  
  public static final String d = "networkType";
  
  public static final String e = "operatorName";
  
  public static final String f = "wifi";
  
  public static final String g = "sdk";
  
  public static final int h = 1000;
  
  private static final byte[] j = new byte[] { 
      11, 100, 126, -53, 10, -12, -22, 12, -14, -11, 
      43, -38, -20, 14, -13, -8, -12, 4, -20, -8, 
      3, -8, 2, 18, -42, 4, 6, 9, -2, -8, 
      -6, 6, -18, 12, -24, 0, -8, 31, -24, -17, 
      3, 0, -1, 1, -14, -22, 12, -14, -11, 33, 
      -24, -17, 3 };
  
  private static int k = 21;
  
  private i(e parame) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte2 = j;
    paramInt2 = 119 - paramInt2;
    int k = paramInt1 + 3;
    paramInt1 = paramInt3 + 4;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt3 = paramInt2;
      j = k;
      paramInt2 = paramInt1;
      paramInt1 = bool;
    } else {
      j = 0;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      arrayOfByte1[j] = (byte)paramInt1;
      int n = j + 1;
    } 
    int j = -j;
    paramInt2++;
    paramInt3 = j + paramInt3 - 5;
    j = paramInt1;
    paramInt1 = paramInt3;
    arrayOfByte1[j] = (byte)paramInt1;
    int m = j + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */