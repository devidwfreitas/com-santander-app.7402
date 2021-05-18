package com.datami.smi.c;

import android.content.Context;
import com.datami.smi.b.m;
import java.util.TimerTask;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class r {
  private static String a;
  
  private static final byte[] e = new byte[] { 
      119, -60, -41, -105, -12, 31, -31, 12, -14, 2, 
      -7, 5, 18, -35, 17, -21, 13, 32, -39, 5, 
      -15, 5, 0, -1, 66, -80, 7, -20, 85, -85, 
      -3, 17, -21, 82, -28, 24, -3, 3, -3, 70, 
      -3, -11, -11, 2, 10, 6, -31, 15, -14, 23, 
      -23, -6, 6, -15, 28, -15, -20, 6, -49, -31, 
      6, 66, -53, -35, 17, -21, 82, -28, 24 };
  
  private static int f = 27;
  
  private TimerTask b;
  
  private ScheduledFuture c = null;
  
  private Context d = null;
  
  static {
    byte b = e[35];
    int i = e[11] - 1;
    a = a(b, i, i | 0x20);
  }
  
  public r(Context paramContext) {
    this.d = paramContext;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int k = paramInt2 * 3 + 6;
    byte[] arrayOfByte1 = e;
    int i = 115 - paramInt1;
    paramInt3 += 4;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
    } else {
      paramInt1 = i;
      paramInt2 = 0;
      int m = paramInt2 + 1;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    i = -i + paramInt3 - 2;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int j = paramInt2 + 1;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  private void b() {
    this.b = new s(this);
  }
  
  private static boolean b(boolean paramBoolean1, boolean paramBoolean2) {
    StringBuilder stringBuilder = new StringBuilder();
    byte b = e[44];
    stringBuilder.append(a(b, b - 1, e[23])).append(paramBoolean1).append(a(e[33] + 1, e[9], -e[62])).append(paramBoolean2);
    return !(paramBoolean1 == paramBoolean2);
  }
  
  public final void a() {
    byte b = e[22];
    a(b, b, e[5]);
    if (this.c != null)
      this.c.cancel(false); 
    this.c = null;
    this.b = null;
  }
  
  public final void a(int paramInt) {
    this.b = new s(this);
    this.c = m.a.scheduleWithFixedDelay(this.b, paramInt, paramInt, TimeUnit.MINUTES);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */