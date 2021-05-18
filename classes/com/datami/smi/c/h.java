package com.datami.smi.c;

public final class h {
  public static final String a = "code";
  
  public static final String b = "cause";
  
  public static final String c = "meta";
  
  private static final byte[] e = new byte[] { 
      88, 117, -117, -94, 8, -15, 19, -12, 11, -1, 
      2, -20, 2, 14 };
  
  private static int f = 129;
  
  private h(e parame) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt1 * 3 + 4;
    paramInt1 = paramInt2 * 10 + 99;
    byte[] arrayOfByte2 = e;
    int j = paramInt3 + 4;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = i;
      paramInt3 = paramInt1;
      i = j;
      paramInt1 = bool;
    } else {
      paramInt2 = i;
      paramInt3 = 0;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
    } 
    i = -i;
    paramInt2++;
    i = paramInt3 + i;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */