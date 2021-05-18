package com.datami.smi.b;

import android.content.Context;
import android.content.Intent;
import com.datami.smi.SmiIntentService;
import java.util.TimerTask;

public class x extends TimerTask {
  private static final byte[] d = new byte[] { 
      12, -39, 83, -57, 50, -22, 1, 10, 3, -12, 
      5, -2, -79, 72, 4, -79, 50, 25, -5, -24, 
      18, -5, 19, -2, -13, 6, 2, -10, 9, -19, 
      18, -12, 5, -2, -27, 12, 17, -9, -50, 14, 
      -1, 14, -13, -16, 26, -31, 19, -2, -13, 25, 
      -5, -24, 18, -5, 19, -2, -13, 6, 2, -10, 
      9, -19, 18, -12, 5, -2, -27, 12, 17, -9, 
      -76, 83, -12, 3, -9, 12, -83, 69, 2, 8, 
      -14, -2, -68, 8, 8, -5, -13, -11, 25, -5, 
      -23, 16, 6, -24, 20, 3, -9, 12, 0 };
  
  private static int e = 1;
  
  private final String a = x.class.getSimpleName();
  
  private String b;
  
  private Context c;
  
  public x(Context paramContext, String paramString) {
    this.b = paramString;
    this.c = paramContext;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 += 4;
    int i = 91 - paramInt1 * 2;
    int m = paramInt2 + 11;
    byte[] arrayOfByte1 = d;
    byte[] arrayOfByte2 = new byte[m];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
    } else {
      paramInt2 = 0;
      paramInt1 = i;
      int n = paramInt3 + 1;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
      int i1 = paramInt2 + 1;
    } 
    i = paramInt3 + i + 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int j = paramInt3 + 1;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
    int k = paramInt2 + 1;
  }
  
  public void run() {
    try {
      byte b1 = d[98];
      byte b2 = d[25];
      a(b1, b2, b2 | 0x48);
      a(d[14], -d[19], 44);
      if (this.c != null) {
        Intent intent = new Intent(this.c, SmiIntentService.class);
        b1 = -d[24];
        b2 = d[98];
        intent.setAction(a(b1, b2, b2 | 0x22));
        m.l = f.b;
        this.c.startService(intent);
      } 
      return;
    } catch (Exception exception) {
      a(-d[87], d[17], d[40]);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */