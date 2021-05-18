package com.datami.smi.a;

import android.app.ActivityManager;
import android.content.Context;
import android.net.TrafficStats;
import com.datami.smi.SmiSdk;
import com.datami.smi.b.m;
import com.datami.smi.f.g;

public final class h {
  private static final String a = "[dmi]SelfDataMonitoring";
  
  private static long b;
  
  private static long c;
  
  private static int d;
  
  private static final byte[] e = new byte[] { 
      5, 50, 60, 12, -3, -18, 10, -14, 12, -12, 
      -6, -48, -1, 79, -53, -37, 87, -35, -56, 4, 
      14, -15, 82, -27, 25, -48, -1, 79, -37, -30, 
      -20, 18, 64, -27, 25, -48, -1, 79, -51, -39, 
      87, -35, -56, 4, 14, -15, 82, -27, 25, -10, 
      -10, 3, 11, 9, -19, -8, 5, 33, -30, -20, 
      18, 19, -35, 0, 4, -12, 4, -4, 8, -6, 
      6, -48, -1, 79, -81, -3, 2, 11, -3, -15, 
      -1, 82, -86, 11, 4, 67, -27, 25, -52, 14, 
      35, -37, -30, -20, 18, 64, -54, -31, 17, -7, 
      1, 68, -27, 25, -35, 2, -10, 3, 83, -69, 
      -6, 4, -11, -7, 83, -52, 13, -16 };
  
  private static int f = 140;
  
  static {
    b = 0L;
    c = 0L;
    d = -1;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j = paramInt1 + 8;
    byte[] arrayOfByte2 = e;
    paramInt3 = 103 - paramInt3;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      i = j;
    } else {
      paramInt1 = 0;
      i = 97 - paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = i;
      byte b1 = (byte)paramInt1;
      int n = paramInt2 + 1;
      arrayOfByte1[paramInt2] = b1;
      int i1 = paramInt3 + 1;
    } 
    int i = -paramInt3 + i - 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    byte b = (byte)paramInt1;
    int k = paramInt2 + 1;
    arrayOfByte1[paramInt2] = b;
    int m = paramInt3 + 1;
  }
  
  private static void a() {
    if (!m.K()) {
      byte b3 = -e[21];
      byte b4 = e[70];
      a(b3, b4, b4 | 0x31);
      a(-e[99], e[98], e[63]);
      return;
    } 
    if (d < 0) {
      String str = SmiSdk.mContext.getPackageName();
      Context context = SmiSdk.mContext;
      byte b = e[63];
      for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager)context.getSystemService(a(b, b, b | 0x64))).getRunningAppProcesses()) {
        if (runningAppProcessInfo.processName.equalsIgnoreCase(str)) {
          d = runningAppProcessInfo.uid;
          break;
        } 
      } 
    } 
    byte b1 = -e[21];
    byte b2 = e[70];
    a(b1, b2, b2 | 0x31);
    (new StringBuilder()).append(a(e[6], e[57] - 1, e[57])).append(d);
    if (d > 0) {
      long l = TrafficStats.getUidTxBytes(d);
      b1 = -e[21];
      b2 = e[70];
      a(b1, b2, b2 | 0x31);
      (new StringBuilder()).append(a(-e[99], e[57] - 1, 93)).append(TrafficStats.getUidTxBytes(d));
      b1 = -e[21];
      b2 = e[70];
      a(b1, b2, b2 | 0x31);
      (new StringBuilder()).append(a(-e[99], e[57] - 1, -e[109])).append(TrafficStats.getUidRxBytes(d));
      if (0L != b)
        c += l - b; 
      b = l;
      return;
    } 
  }
  
  private static void b() {
    if (d < 0) {
      String str = SmiSdk.mContext.getPackageName();
      Context context = SmiSdk.mContext;
      byte b = e[63];
      for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager)context.getSystemService(a(b, b, b | 0x64))).getRunningAppProcesses()) {
        if (runningAppProcessInfo.processName.equalsIgnoreCase(str)) {
          d = runningAppProcessInfo.uid;
          break;
        } 
      } 
    } 
    byte b1 = -e[21];
    byte b2 = e[70];
    a(b1, b2, b2 | 0x31);
    (new StringBuilder()).append(a(e[6], e[57] - 1, e[57])).append(d);
  }
  
  private static long c() {
    long l2 = g.e();
    long l1 = c - l2;
    byte b1 = -e[21];
    byte b2 = e[70];
    a(b1, b2, b2 | 0x31);
    (new StringBuilder()).append(a(e[51], e[57] - 1, e[13])).append(c).append(a(e[53], e[32] + 1, -e[117])).append(g.e());
    if (l1 < 0L || 0L == l2)
      l1 = 0L; 
    return l1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */