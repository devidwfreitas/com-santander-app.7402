package com.datami.smi.b;

import android.content.Context;
import com.datami.smi.SmiResult;

final class r implements Runnable {
  private static final byte[] c = new byte[] { 
      14, -28, -78, Byte.MAX_VALUE, 34, 5, 11, -3, 12, -7, 
      -65, 70, 15, 2, 3, -6, 1, 20, -8, 9, 
      2, -75, 73, -2, 11, 6, -4, 2, 54, -18, 
      5, 14, 7, -8, 9, 2, -75, 76, 8, -75, 
      85, -10, 17, -11, 18, 3, -8, 8, -4, -68, 
      83, 5, 0, 12, 4, -86, 12, 12, -1, -9, 
      -21, 52, -14, 12, 9, -31, 22, 5, 5, 13, 
      4, -12, 16, -28, 21, 16, 7, -10, -3, 5 };
  
  private static int d = 105;
  
  r(Context paramContext, SmiResult paramSmiResult) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte2 = c;
    paramInt3 = 55 - paramInt3 * 4;
    int i = 29 - paramInt1 * 4;
    paramInt1 = 91 - paramInt2;
    byte[] arrayOfByte1 = new byte[i];
    int j = i - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt3;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = bool;
    } else {
      paramInt2 = 0;
      byte b1 = (byte)paramInt1;
      int m = paramInt3 + 1;
      arrayOfByte1[paramInt2] = b1;
    } 
    i = paramInt3 + i - 3;
    paramInt3 = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    byte b = (byte)paramInt1;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt2] = b;
  }
  
  public final void run() {
    try {
      m.a(this.a, this.b, (Exception)null);
    } catch (Exception exception) {
      String str = m.J;
      a(c[52], c[66], c[32]);
    } 
    byte b1 = c[16];
    byte b2 = c[52];
    a(b1, b2, b2);
    b1 = c[16];
    a(b1, b1 | 0x18, c[69]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */