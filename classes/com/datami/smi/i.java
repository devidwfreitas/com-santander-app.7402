package com.datami.smi;

import com.datami.smi.b.m;

final class i implements Runnable {
  private static final byte[] b = new byte[] { 
      73, -95, 44, 50, -12, -12, 1, 9, 21, -52, 
      14, -12, -9, 31, -22, -5, -5, -13, -4, 12, 
      -16, 28, -21, -16, -7, 10, 3, -5, -34, -5, 
      -11, 3, -12, 7, 65, -70, -15, -2, -3, 6, 
      -1, -20, 8, -9, -2, 75, -73, 2, -11, -6, 
      4, -2, -54, 18, -5, -14, -7, 8, -9, -2, 
      75, -76, -8, 75, -85, 10, -17, 11, -18, -3, 
      8, -8, 4, 68, -83, -5, 0, -12, -4, 86 };
  
  private static int c = 196;
  
  i(SmiResult paramSmiResult) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 = paramInt1 * 24 + 4;
    paramInt3 = 29 - paramInt3 * 4;
    byte[] arrayOfByte2 = b;
    paramInt2 = 91 - paramInt2;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int k = paramInt3 - 1;
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
    } 
    int j = -j;
    paramInt2++;
    paramInt3 = j + paramInt3 - 3;
    j = paramInt1;
    paramInt1 = paramInt3;
    arrayOfByte1[j] = (byte)paramInt1;
  }
  
  public final void run() {
    try {
      m.a(SmiSdk.mContext, this.a, null);
    } catch (Exception exception) {
      SmiIntentService.access$000();
      a(b[47], -b[14], b[76]);
    } 
    byte b = b[76];
    a(b, b, b[6]);
    b = b[6];
    a(b, b | 0x18, b[6]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */