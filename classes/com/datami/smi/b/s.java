package com.datami.smi.b;

import android.content.Context;
import com.datami.smi.SdState;
import com.datami.smi.SmiResult;
import com.datami.smi.c;

final class s implements Runnable {
  private static final byte[] d = new byte[] { 
      60, -99, -33, 52, -8, 19, -9, 20, -46, 52, 
      5, -27, 39, 2, 14, 6, -76, 6, -4, 75, 
      0, 13, 8, -2, 4, -37, -21 };
  
  private static int e = 205;
  
  s(m paramm, Context paramContext, SmiResult paramSmiResult) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 4 - paramInt2 * 4;
    int k = 24 - paramInt3 * 4;
    int i = 114 - paramInt1 * 3;
    byte[] arrayOfByte1 = d;
    paramInt3 = -1;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      j = paramInt2;
      paramInt1 = paramInt3;
      paramInt3 = paramInt2;
    } else {
      paramInt1 = i;
      j = paramInt3 + 1;
      arrayOfByte2[j] = (byte)paramInt1;
    } 
    paramInt2 = j + 1;
    i = paramInt3 + i - 5;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int j = paramInt3 + 1;
    arrayOfByte2[j] = (byte)paramInt1;
  }
  
  public final void run() {
    int n;
    byte[] arrayOfByte;
    if (m.L != null && m.b(this.a) == null)
      m.L.cancel(false); 
    try {
      if (m.a(this.b, this.c, m.b(this.a)) && this.c.getSdState() != SdState.WIFI)
        c.b(this.a.e()); 
      return;
    } catch (Exception exception) {
      String str = m.J;
      int i3 = d[20];
      int i4 = 4 - i3 * 4;
      int i5 = 24 - i3 * 4;
      i1 = 114 - i3 * 3;
      byte[] arrayOfByte1 = d;
      n = -1;
      arrayOfByte = new byte[i5];
      if (arrayOfByte1 == null) {
        int i6 = i4;
        i3 = n;
        n = i4;
      } else {
        i = i1;
        i2 = n + 1;
        arrayOfByte[i2] = (byte)i;
      } 
    } 
    int j = i2 + 1;
    int i1 = n + i1 - 5;
    int k = i;
    int i = i1;
    int i2 = k + 1;
    arrayOfByte[i2] = (byte)i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */