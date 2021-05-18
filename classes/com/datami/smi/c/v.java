package com.datami.smi.c;

import android.content.Context;
import com.datami.smi.b.m;
import java.util.TimerTask;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class v {
  private static String a;
  
  private static final byte[] g = new byte[] { 
      59, 74, 69, -69, 10, 4, 10, -63, 10, 18, 
      18, 5, -3, 1, 38, -8, 21, -16, 30, 13, 
      1, 22, -21, 22, 27, 1, 56, -4, 5, 28, 
      -6, 8, -59, 62, 38, -8, 21, -16, 30, 13, 
      1, 22, -21, 22, 27, 1 };
  
  private static int h = 246;
  
  private TimerTask b;
  
  private ScheduledFuture c = null;
  
  private Context d = null;
  
  private String e = null;
  
  private u f = null;
  
  static {
    byte b1 = g[9];
    byte b2 = g[13];
    a = a(b1 - 1, b2, b2);
  }
  
  private v(String paramString, Context paramContext) {
    int i = g[13] - 1;
    a(i, i, i + 2);
    this.e = paramString;
    this.d = paramContext;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte2 = g;
    paramInt1 = 26 - paramInt1;
    int j = 21 - paramInt2 * 3;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt2 = paramInt1;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = bool;
    } else {
      i = 0;
      paramInt2 = paramInt1;
      paramInt1 = 115 - paramInt3 * 24;
      paramInt3 = i;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
      int m = paramInt3 + 1;
    } 
    paramInt2++;
    int i = paramInt3 + i - 9;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
    int k = paramInt3 + 1;
  }
  
  private void a() {
    this.b = new w(this);
  }
  
  private void a(int paramInt) {
    this.b = new w(this);
    this.c = m.a.scheduleWithFixedDelay(this.b, paramInt, paramInt, TimeUnit.MINUTES);
  }
  
  private void b() {
    byte b1 = g[21];
    byte b2 = g[11];
    a(b1, b2, b2 - 5);
    if (this.c != null)
      this.c.cancel(false); 
    this.c = null;
    this.b = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */