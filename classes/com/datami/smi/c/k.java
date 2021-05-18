package com.datami.smi.c;

public final class k {
  public static final String a = "apiKey";
  
  public static final String b = "op";
  
  public static final String c = "mccmnc";
  
  public static final String d = "appId";
  
  private static final byte[] f = new byte[] { 
      0, -24, 56, -114, 21, -1, -24, 32, 26, 21, 
      6, -33, 33, -4, 6, 16, 7, -5, 7 };
  
  private static int g = 67;
  
  private k(e parame) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt3 * 2 + 97;
    byte[] arrayOfByte1 = f;
    paramInt2 = 17 - paramInt2;
    int m = 6 - paramInt1;
    byte[] arrayOfByte2 = new byte[m];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      paramInt3 = paramInt2;
    } else {
      int n = 0;
      paramInt3 = paramInt2;
      paramInt1 = i;
      paramInt2 = n;
      byte b1 = (byte)paramInt1;
      paramInt3++;
      arrayOfByte2[paramInt2] = b1;
      n = paramInt2 + 1;
    } 
    i = i + paramInt2 - 6;
    paramInt2 = paramInt1;
    paramInt1 = i;
    byte b = (byte)paramInt1;
    paramInt3++;
    arrayOfByte2[paramInt2] = b;
    int j = paramInt2 + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */