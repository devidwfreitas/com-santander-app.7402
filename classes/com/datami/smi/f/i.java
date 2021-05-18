package com.datami.smi.f;

import com.datami.smi.b.m;
import com.datami.smi.c;

final class i extends Thread {
  private static final byte[] b = new byte[] { 
      81, -102, -37, -17, -7, 3, -21, 9, -78, 64, 
      21, -7, -17, 12, -85, 81, -16, 7, 4, -86, 
      82, -7, -81, 81, -16, 11, 2, -19, 11, -58, 
      -28, -7, 3, -21, 9, -78, 64, 21, -7, -17, 
      12, -85, 80, -17, 17, -20, -70, 68, 10, -5, 
      -4, -79, 81, -16, 11, 2, -19, 11, -58, -28, 
      17, -17, 9, -13, 3, -9, -73, 83, -4, -20, 
      4, -4, -71, 75, 0, -3, -7, 9, -7, 1, 
      -84, 82, -14, 8, -15, -6, 1, -7, 3, -21, 
      9, -78, 64, 21, -7, -17, 12, -85, 86, -20, 
      -3, 11, -2, -15, -3, -44, -28, 42, 4, -11, 
      -10, 8, -73, 75, -86, 78, 0, -5, -14, 0, 
      12, -2, -85, 83, -4, -20, 4, -4, -36, 42, 
      4, -9, 4, -37, 34, -18, 14, -18, -70 };
  
  private static int c = 218;
  
  private i(g paramg) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 += 4;
    byte[] arrayOfByte2 = b;
    paramInt1 += 21;
    byte[] arrayOfByte1 = new byte[paramInt1];
    int m = paramInt1 - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = -1;
      k = paramInt2;
      j = m;
      paramInt3 = paramInt2;
    } else {
      paramInt1 = 116 - paramInt3;
      paramInt3 = -1;
      k = paramInt3 + 1;
      arrayOfByte1[k] = (byte)paramInt1;
    } 
    paramInt2 = k + 1;
    int j = paramInt3 + j + 2;
    paramInt3 = paramInt1;
    paramInt1 = j;
    int k = paramInt3 + 1;
    arrayOfByte1[k] = (byte)paramInt1;
  }
  
  public final void run() {
    while (true) {
      try {
        if (!Thread.currentThread().isInterrupted()) {
          int j = ((Integer)g.f().take()).intValue();
          if (j != 0) {
            int k = j & 0xFFFFFFFE;
            if ((j >> 32 & 0x1) == 1) {
              g.a(g.g() + k);
              long l = g.h();
              g.b(k + l);
              String str2 = g.a;
              StringBuilder stringBuilder = new StringBuilder();
              j = b[7];
              stringBuilder.append(a(j, j | 0x12, b[74])).append(g.g());
            } else {
              g.c(g.i() + k);
              long l = g.h();
              g.b(k + l);
              String str2 = g.a;
              StringBuilder stringBuilder = new StringBuilder();
              j = b[17];
              k = b[74];
              stringBuilder.append(a(j, k, k)).append(g.i());
            } 
            String str1 = g.a;
            (new StringBuilder()).append(a(b[74], b[67], b[74])).append(g.h());
            if (g.j() > 0L && g.h() > g.j() + g.k()) {
              m.P();
              c.a(g.l());
            } 
            continue;
          } 
        } 
      } catch (InterruptedException interruptedException) {
        String str1 = g.a;
        a(b[13], 103, 49);
        return;
      } 
      break;
    } 
    String str = g.a;
    a(b[17], 56, -b[84]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */