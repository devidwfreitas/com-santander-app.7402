package com.datami.smi;

import android.content.Context;
import com.datami.smi.b.m;

final class j implements Runnable {
  private static final byte[] d = new byte[] { 
      60, -99, -33, 52, 2, -11, 0, 3, -5, 7, 
      71, -71, 2, -15, 51, -47, 0, 29, 15, 3, 
      -52, 1, 12, 64, -1, 9, -70, 5, -8, -3, 
      7, 1, 42, 26 };
  
  private static int e = 16;
  
  j(Context paramContext, String paramString, h paramh) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k;
    int i = paramInt1 * 2 + 31;
    paramInt1 = 4 - paramInt2 * 4;
    byte[] arrayOfByte2 = d;
    paramInt2 = 99 - paramInt3 * 3;
    byte[] arrayOfByte1 = new byte[i];
    int m = i - 1;
    if (arrayOfByte2 == null) {
      i = 0;
      k = m;
      paramInt3 = paramInt1;
      paramInt1 = i;
      i = paramInt2;
    } else {
      i = 0;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      arrayOfByte1[i] = (byte)paramInt1;
    } 
    k += -i;
    paramInt2 = paramInt3 + 1;
    i = paramInt1;
    paramInt1 = k;
    arrayOfByte1[i] = (byte)paramInt1;
  }
  
  public final void run() {
    int i;
    byte b;
    int k;
    int m;
    try {
      m.b(this.a, this.b);
      return;
    } catch (Exception exception) {
      String str = SmiSdk.TAG;
      b = d[6];
      i = b * 2 + 31;
      k = 4 - b * 4;
      byte[] arrayOfByte2 = d;
      m = 99 - b * 3;
      byte[] arrayOfByte1 = new byte[i];
      int n = i - 1;
    } finally {
      SmiSdk.access$002(false);
    } 
    i += -m;
    k++;
    SYNTHETIC_LOCAL_VARIABLE_6[b] = (byte)i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */