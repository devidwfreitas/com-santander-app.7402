package com.datami.smi.d;

import android.content.Context;
import com.datami.smi.g.c;

public final class e extends Thread {
  private static final byte[] e = new byte[] { 
      21, 37, 104, 108, -50, 22, -1, -10, -3, 12, 
      -5, 2, 79, -72, -4, 79, -82, 15, -8, 11, 
      -4, -4, 8, 72, -67, 4, -18, 20, 66, -69, 
      -11, 4, 3, 78, -83, 13, -9, 14, 5, -2, 
      69, -43, 4, 1, 8, 3, -16, 6, -2, 83, 
      -52, 4, 7, 45, -8, -8, 5, 13, 25, -48, 
      18, -8, -5, 35, -18, -1, -1, -9, 0, 16, 
      -12, 32, -17, -12, -3, 14, 7, -1, -43, 4, 
      1, 8, 3, -16, 6, -2, 83, -81, 14, -13, 
      4, 2, 2, -4, 15, 70 };
  
  private static int f = 207;
  
  private final Context a;
  
  private final String b;
  
  private final String c;
  
  private final boolean d;
  
  private e(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramBoolean;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k = 38 - paramInt1;
    byte[] arrayOfByte1 = e;
    paramInt3 = 91 - paramInt3 * 2;
    paramInt2 = 78 - paramInt2;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      i = paramInt2;
      j = paramInt3;
      paramInt3 = paramInt2;
    } else {
      i = 0;
      paramInt1 = paramInt3;
      paramInt3 = i;
      arrayOfByte2[paramInt3] = (byte)paramInt1;
      i = paramInt3 + 1;
    } 
    int j = -paramInt3 + j + 1;
    paramInt2 = i + 1;
    paramInt3 = paramInt1;
    paramInt1 = j;
    arrayOfByte2[paramInt3] = (byte)paramInt1;
    int i = paramInt3 + 1;
  }
  
  public final void run() {
    try {
      a(e[35], e[58] - 1, e[68]);
      (new StringBuilder()).append(a(e[58] - 1, e[1], e[9])).append(this.b);
      String str = c.a(this.a, this.b, this.c, this.d, false);
      a(e[35], e[58] - 1, e[68]);
      (new StringBuilder()).append(a(e[27] - 1, e[68], e[9])).append(str);
      return;
    } catch (Exception exception) {
      a(e[35], e[58] - 1, e[68]);
      StringBuilder stringBuilder = new StringBuilder();
      byte b = e[68];
      stringBuilder.append(a(b, b | 0x4A, e[19])).append(exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */