package com.datami.smi.a;

import android.content.SharedPreferences;
import com.datami.smi.SmiSdk;
import com.datami.smi.b.k;
import com.datami.smi.f.g;

public final class b {
  private static final String a = "[dmi]DataUsage";
  
  private static final String b = "fg_data_usage";
  
  private static final String c = "Bg_data_usage";
  
  private static volatile long d;
  
  private static volatile long e;
  
  private static volatile long f;
  
  private static final byte[] g = new byte[] { 
      48, 103, 106, -73, -20, 12, 10, -15, -68, 74, 
      11, -82, 79, -8, 3, -5, 20, -10, 14, -16, 
      -68, 9, 6, 74, -16, -59, 30, 20, -18, -64, 
      86, -1, -17, 7, -1, -68, 66, 12, 7, -12, 
      -3, 4, 22, -88, 74, 6, -4, 12, -10, -7, 
      12, -2, 11, -13, 0, -67, 27, -25, 1, 78, 
      3, -12, 8, 4, -6, -32, 30, 20, -18, -11, 
      31, -17, 7, -1, -30, 2, -38, 27, -25, 34, 
      18, -12, -5, 3, -68, 74, 11, -82, 74, 6, 
      -77, 56, -13, -2, 4, 84, 2, -4, 4, -12, 
      0, 45, 0, 7, -14, 20, -3, -83, 74, 11, 
      -82, 79, 8, -8, 1, -75, 84, -3, -78, 79, 
      2, 6, -83, 84, -17, 22, -12, 6, -6, -70, 
      37, 30, 20, -18, -64, 66, 14, -12, 12, 14, 
      -4, -10, -5, 17, -82, 87, -20, 12, 10, -15, 
      15, 10, 10, -3, -11, -24, 30, 20, -18, -11, 
      31, -17, 7, -1, 78, 3, -12, 8, 4, -6, 
      -32, 30, 20, -18, -11, 31, -17, 7, -1, -34, 
      6, -38, 27, -25, 38, -7, 6, -2, 20, -18, 
      -1, 23, -1, -17, 7, -1, -25, 2, -7, 6, 
      -2, 20, -18, -1, 23, -1, -17, 7, -1, 34, 
      18, -12, -5, 3, -68, 78, 3, 8, -16, 0, 
      -67, 85, -4, -78, 68, 3, 8, 1, 10, -8, 
      -10, 18 };
  
  private static int h = 110;
  
  static {
    d = 0L;
    e = 0L;
    f = 0L;
  }
  
  public b() {
    if (0L == d && 0L == e && SmiSdk.mContext != null) {
      SharedPreferences sharedPreferences = k.a(SmiSdk.mContext);
      if (sharedPreferences.contains(a(-g[129], 192, 41)))
        e = sharedPreferences.getLong(a(-g[129], 192, 41), 0L); 
      byte b2 = g[79];
      if (sharedPreferences.contains(a(b2, b2 | 0x91, 41))) {
        b2 = g[79];
        d = sharedPreferences.getLong(a(b2, b2 | 0x91, 41), 0L);
      } 
      return;
    } 
    a(-g[25], 146, h & 0xB8);
    StringBuilder stringBuilder = (new StringBuilder()).append(a(h & 0xB5, g[42] - 1, g[54])).append(e);
    byte b1 = g[54];
    stringBuilder.append(a(b1, b1 | 0x9F, g[79] - 1)).append(d);
  }
  
  public static long a() {
    long l1 = e + d;
    long l2 = g.e();
    if (l2 >= l1)
      l1 = l2; 
    l2 = l1;
    if (l1 > 0L)
      l2 = l1 / 1048576L; 
    return l2;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j = 54 - paramInt3;
    paramInt3 = paramInt1 + 32;
    int i = paramInt2 + 4;
    byte[] arrayOfByte2 = g;
    byte[] arrayOfByte1 = new byte[j];
    j--;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      paramInt2 = i;
      i = j;
    } else {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = paramInt3 + i - 1;
    i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt3;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  private static void a(long paramLong) {
    e += paramLong;
    a(a(-g[129], 192, 41), e);
  }
  
  private static void a(String paramString, long paramLong) {
    if (paramLong <= 0L) {
      a(-g[25], 146, h & 0xB8);
      a(g[30], g[31], g[70]);
      return;
    } 
    if (SmiSdk.mContext == null) {
      a(-g[25], 146, h & 0xB8);
      a(g[79] + 1, h & 0x1F0, g[14]);
      return;
    } 
    SharedPreferences.Editor editor = k.a(SmiSdk.mContext).edit();
    editor.putLong(paramString, paramLong);
    editor.commit();
    editor.apply();
    a(-g[25], 146, h & 0xB8);
    StringBuilder stringBuilder = (new StringBuilder()).append(paramString);
    int i = g[56] - 1;
    int j = i | 0xA5;
    stringBuilder = stringBuilder.append(a(i, j, j & 0x74)).append(paramLong);
    i = g[54];
    stringBuilder.append(a(i, i | 0x5A, g[0] - 1));
  }
  
  private static void a(boolean paramBoolean) {
    long l1 = g.e();
    long l2 = l1 - f;
    if (l2 > 0L)
      if (paramBoolean) {
        d = l2 + d;
        byte b1 = g[79];
        a(a(b1, b1 | 0x91, 41), d);
      } else {
        e = l2 + e;
        a(a(-g[129], 192, 41), e);
      }  
    f = l1;
  }
  
  public static void a(boolean paramBoolean1, boolean paramBoolean2) {
    if (!paramBoolean1) {
      a(paramBoolean2);
      return;
    } 
    a(-g[25], 146, h & 0xB8);
    a(h & 0xB5, g[9], g[130]);
  }
  
  public static long b() {
    long l1 = e + d;
    long l2 = g.e();
    return (l2 < l1) ? l1 : l2;
  }
  
  private static void b(long paramLong) {
    d += paramLong;
    byte b1 = g[79];
    a(a(b1, b1 | 0x91, 41), d);
  }
  
  public static void b(boolean paramBoolean1, boolean paramBoolean2) {
    if (paramBoolean1) {
      a(paramBoolean2);
      return;
    } 
    a(-g[25], 146, h & 0xB8);
    a(h & 0xB5, 204, g[26]);
  }
  
  private static long c() {
    return d;
  }
  
  public static void c(boolean paramBoolean1, boolean paramBoolean2) {
    if (!paramBoolean1) {
      a(paramBoolean2);
      return;
    } 
    a(-g[25], 146, h & 0xB8);
    a(h & 0xB5, g[9], g[130]);
  }
  
  private static long d() {
    return e;
  }
  
  private static void e() {
    if (0L == d && 0L == e && SmiSdk.mContext != null) {
      SharedPreferences sharedPreferences = k.a(SmiSdk.mContext);
      if (sharedPreferences.contains(a(-g[129], 192, 41)))
        e = sharedPreferences.getLong(a(-g[129], 192, 41), 0L); 
      byte b2 = g[79];
      if (sharedPreferences.contains(a(b2, b2 | 0x91, 41))) {
        b2 = g[79];
        d = sharedPreferences.getLong(a(b2, b2 | 0x91, 41), 0L);
      } 
      return;
    } 
    a(-g[25], 146, h & 0xB8);
    StringBuilder stringBuilder = (new StringBuilder()).append(a(h & 0xB5, g[42] - 1, g[54])).append(e);
    byte b1 = g[54];
    stringBuilder.append(a(b1, b1 | 0x9F, g[79] - 1)).append(d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */