package com.datami.smi.c;

public final class j {
  public static final String a = "x-dmi-service-token";
  
  public static final String b = "x-dmi-api-key";
  
  public static final String c = "x-dmi-code-path";
  
  public static final String d = "x-msisdn";
  
  public static final String e = "Content-Type";
  
  public static final String f = "Accept-Encoding";
  
  public static final String g = "Cache-Control";
  
  public static final String h = "x-dmi-app";
  
  public static final String i = "x-dmi-enable-details";
  
  public static final String j = "x-dmi-sdk";
  
  public static final String k = "x-dmi-uuid";
  
  private static final byte[] m = new byte[] { 
      42, 4, -46, 85, 35, 1, 3, 12, 5, -70, 
      25, 42, -10, 13, -10, 6, 6, -6, -74, 65, 
      7, -9, 11, -14, 11, -74, 56, 10, -3, -59, 
      73, 1, -11, -4, 45, 0, 7, -14, 10, 7, 
      -70, 40, 38, -8, -10, -74, 56, 10, -3, -59, 
      53, 16, 1, -74, 56, 10, -3, -59, 71, -13, 
      14, 5, -12, -5, 3, -55, 72, -4, -3, -5, 
      10, -74, 56, 10, -3, -59, 57, 10, -12, 2, 
      11, -6, -55, 56, 2, 16, -18, 9, 4, 8, 
      -74, 56, 10, -3, -59, 55, 13, -10, 2, -55, 
      68, -14, 20, -11, -74, 56, 10, -3, -59, 53, 
      16, -6, -59, 63, -5, 21, 31, 3, 6, -2, 
      -55, 23, 45, 0, 7, -1, -2, -2, -74, 56, 
      10, -3, -59, 71, -14, 8 };
  
  private static int n = 129;
  
  private j(e parame) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int n = 20 - paramInt3;
    int i = 120 - paramInt1;
    byte[] arrayOfByte1 = m;
    paramInt3 = 127 - paramInt2;
    byte[] arrayOfByte2 = new byte[n];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
    } else {
      paramInt2 = 0;
      paramInt1 = i;
      int i1 = paramInt3 + 1;
      byte b1 = (byte)paramInt1;
      int i2 = paramInt2 + 1;
      arrayOfByte2[paramInt2] = b1;
    } 
    i = paramInt3 + i - 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    byte b = (byte)paramInt1;
    int m = paramInt2 + 1;
    arrayOfByte2[paramInt2] = b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */