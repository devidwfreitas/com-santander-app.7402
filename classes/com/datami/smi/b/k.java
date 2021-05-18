package com.datami.smi.b;

import android.content.Context;
import android.content.SharedPreferences;

public final class k {
  private static SharedPreferences a;
  
  private static final byte[] b = new byte[] { 
      89, 82, 85, -98, -2, 0, 14, -11, 11, -8, 
      12, 9, 7, -9, 3, 15, -9, 9, 9, 14, 
      -12, 16, 11, -13, 17, 11, -22, 21, 6, -9, 
      5 };
  
  private static int c = 51;
  
  static {
    a = null;
  }
  
  public static SharedPreferences a(Context paramContext) {
    int j;
    byte[] arrayOfByte;
    if (paramContext == null)
      return null; 
    if (a == null) {
      n = b[5];
      int i2 = n * 2 + 28;
      byte[] arrayOfByte1 = b;
      i = n * 2 + 4;
      arrayOfByte = new byte[i2];
      if (arrayOfByte1 == null) {
        boolean bool = false;
        j = i;
        n = i;
        m = i2;
        i = bool;
      } else {
        m = 0;
        j = i;
        i = n * 2 + 115;
        arrayOfByte[m] = (byte)i;
        int i3 = m + 1;
      } 
    } else {
      return a;
    } 
    j++;
    int n = m + n - 4;
    int m = i;
    int i = n;
    arrayOfByte[m] = (byte)i;
    int i1 = m + 1;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j = paramInt2 * 2 + 28;
    byte[] arrayOfByte2 = b;
    paramInt1 = paramInt1 * 2 + 4;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt1;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = bool;
    } else {
      i = 0;
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 * 2 + 115;
      paramInt3 = i;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
      int n = paramInt3 + 1;
    } 
    paramInt2++;
    int i = paramInt3 + i - 4;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
    int m = paramInt3 + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */