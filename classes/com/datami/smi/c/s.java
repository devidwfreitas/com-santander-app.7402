package com.datami.smi.c;

import android.telephony.TelephonyManager;
import com.datami.smi.b.m;
import java.util.TimerTask;

final class s extends TimerTask {
  private static final byte[] b = new byte[] { 
      66, -82, 74, -116, -9, 6, -2, -10, 28, -15, 
      11, -5, 4, -8, -72, 67, 0, 14, -16, -3, 
      16, -12, 5, -2, -79, 69, -6, 7, 2, -8, 
      -2, -69, 0, -1, -1, 28, -15, 11, -5, 4, 
      -8, -20, 20, 3, -9, 12, -31, 12, 17, -9, 
      -76, 83, -12, 3, -9, 12, -83, 69, 2, 8, 
      -14, -2, -68 };
  
  private static int c = 64;
  
  s(r paramr) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    byte[] arrayOfByte2 = b;
    int i = paramInt1 + 5;
    paramInt1 = paramInt3 + 4;
    byte[] arrayOfByte1 = new byte[i];
    int k = i - 1;
    if (arrayOfByte2 == null) {
      paramInt3 = 0;
      paramInt2 = paramInt1;
      j = k;
      i = paramInt1;
    } else {
      paramInt3 = paramInt1;
      paramInt1 = 0;
      i = paramInt2 * 30 + 82;
      paramInt2 = paramInt1;
      paramInt1 = i;
      i = paramInt3;
      int n = i + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
      paramInt3 = paramInt2 + 1;
    } 
    paramInt1 = i + j + 1;
    i = paramInt2;
    paramInt2 = paramInt3;
    int m = i + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
    paramInt3 = paramInt2 + 1;
  }
  
  public final void run() {
    byte b = b[16];
    a(24, b, b | 0x1E);
    boolean bool = ((TelephonyManager)r.a(this.a).getSystemService(a(b[16], -b[33], b[33]))).isNetworkRoaming();
    if (r.a(bool, c.a())) {
      c.a(bool);
      if (!c.b())
        if (bool) {
          try {
            m.N();
            return;
          } catch (Exception exception) {
            a(23, b[16], b[43]);
          } 
        } else {
          m.Q();
          return;
        }  
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */