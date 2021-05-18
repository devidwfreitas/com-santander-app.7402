package com.datami.smi;

import com.datami.smi.b.m;
import com.datami.smi.d.a;
import com.datami.smi.d.c;
import com.datami.smi.d.d;
import java.util.Properties;

final class d implements Runnable {
  private static final byte[] b = new byte[] { 
      31, 47, 30, -112, 54, -18, 5, 14, 7, -8, 
      9, 2, -75, 76, 8, -75, 85, -10, 17, -11, 
      18, 3, -8, 8, -4, -68, 83, 5, 0, 12, 
      4, -86, 73, 15, 0, 1, -74, 54, 29, -1, 
      -35, 53, 1, 4, -2, 1, -22, 16, 17, 7, 
      4, -11, 20, 12, 12, -1, -9, -7, 29, -1, 
      -35, 53, 1, 4, -2, 1, -22, 30, -11, 21, 
      4 };
  
  private static int c = 51;
  
  d(int paramInt) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 52 - paramInt2;
    paramInt1 += 3;
    byte[] arrayOfByte2 = b;
    byte[] arrayOfByte1 = new byte[paramInt1];
    int j = paramInt1 - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      paramInt3 = paramInt2;
      i = j;
    } else {
      boolean bool = false;
      i = paramInt2;
      paramInt1 = 115 - paramInt3 * 2;
      paramInt2 = bool;
      paramInt3 = i;
      paramInt3++;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    int i = paramInt2 + i - 3;
    paramInt2 = paramInt1;
    paramInt1 = i;
    paramInt3++;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  public final void run() {
    Properties properties = new Properties();
    properties.put(a(b[28], b[11], b[28]), a.a(c.a));
    m.b(a.a(d.e), properties);
    if (c.d() != null && c.e() != null) {
      c.d().setSdState(SdState.SD_NOT_AVAILABLE);
      c.d().setSdReason(SdReason.SD_NOT_AVAILABLE_USER_LIMIT_EXCEEDED);
      c.b(this.a);
      try {
        m.a(c.e().getApplicationContext(), c.d(), null);
      } catch (Exception exception) {
        exception.printStackTrace();
        a(b[47], b[28], b[29]);
        a(45, 49, 23);
      } 
      if (this.a != 7)
        c.a(c.e(), this.a); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */