package com.datami.smi.b;

import android.content.Context;
import android.webkit.WebView;
import com.datami.smi.SmiResult;
import com.datami.smi.c;

final class q implements Runnable {
  private static final byte[] d = new byte[] { 
      104, -39, -16, 5, 51, -21, 2, 11, 4, -11, 
      6, -1, -78, 87, -15, 1, 3, -7, -69, 87, 
      -18, -3, 20, -13, -4, 18, -87, 73, 5, 5, 
      1, -19, 13, 6, -11, -8, 19, -11, 6, -1, 
      -77 };
  
  private static int e = 92;
  
  q(Context paramContext, m paramm, SmiResult paramSmiResult) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = 69 - paramInt3 * 4;
    int k = paramInt2 * 4 + 38;
    paramInt3 = paramInt1 + 4;
    byte[] arrayOfByte1 = d;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
    } else {
      paramInt1 = i;
      paramInt2 = 0;
      byte b1 = (byte)paramInt1;
      int n = paramInt2 + 1;
      arrayOfByte2[paramInt2] = b1;
    } 
    i = paramInt3 + i;
    paramInt3 = paramInt1;
    paramInt1 = i;
    byte b = (byte)paramInt1;
    int j = paramInt2 + 1;
    arrayOfByte2[paramInt2] = b;
  }
  
  public final void run() {
    try {
      m.b(new WebView(this.a));
    } catch (Exception exception) {
      String str = m.J;
      byte b = d[11];
      int i = b + 1;
      a(b, i, i);
    } 
    c.b(this.b.e());
    if (!m.X())
      m.a(this.a, this.c); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */