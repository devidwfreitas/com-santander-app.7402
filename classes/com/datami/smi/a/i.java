package com.datami.smi.a;

import android.content.SharedPreferences;
import com.datami.smi.SmiSdk;
import com.datami.smi.b.k;

public final class i {
  private static final String a = "[dmi]SessionTime";
  
  private static final String b = "fg_wifi_session";
  
  private static final String c = "Bg_wifi_session";
  
  private static final String d = "fg_mobile_session";
  
  private static final String e = "bg_mobile_session";
  
  private static volatile long f;
  
  private static volatile long g;
  
  private static volatile long h;
  
  private static volatile long i;
  
  private static volatile long j;
  
  private static volatile long k;
  
  private static final byte[] l = new byte[] { 
      3, 112, 67, 33, -2, 7, -15, -3, 12, -8, 
      -4, 6, 5, -21, 13, -15, -1, 9, -7, 0, 
      -38, 7, -25, 13, 2, -4, 9, -21, 13, -15, 
      -1, 9, -7, 0, -19, -15, -1, 9, -7, 0, 
      77, -69, 2, -20, 18, 64, -66, -12, -7, 12, 
      3, -4, -22, 88, -74, -6, 4, -12, 10, 7, 
      -12, 2, -11, 13, 0, -84, -2, 4, -4, 12, 
      0, 25, -45, 0, -7, 14, -20, 3, 83, -74, 
      -11, 82, -79, -8, 8, -1, 75, -84, 3, 78, 
      -79, -2, -6, 83, -84, 17, -22, 12, -6, 6, 
      70, -52, -19, -15, -1, 9, -7, 0, 77, -66, 
      -14, 12, -12, -14, 4, 10, 5, -17, 82, -87, 
      20, -12, -10, 15, -15, -2, 7, -25, 13, 2, 
      -4, 9, -21, 13, -15, -1, 9, -7, 0, -10, 
      -10, 3, 11, 9, -19, -15, -1, 9, -7, 0, 
      25, -22, -5, 7, -6, 7, -15, -3, 12, -8, 
      -4, 6, 5, -21, 13, -15, -1, 9, -7, 0 };
  
  private static int m = 71;
  
  static {
    f = 0L;
    g = 0L;
    h = 0L;
    i = 0L;
    j = 0L;
    k = 0L;
  }
  
  public i() {
    if (0L == f && 0L == g && 0L == h && 0L == i && SmiSdk.mContext != null) {
      SharedPreferences sharedPreferences = k.a(SmiSdk.mContext);
      byte b = l[19];
      if (sharedPreferences.contains(a(39, b, b | 0x78))) {
        b = l[19];
        f = sharedPreferences.getLong(a(39, b, b | 0x78), 0L);
      } 
      if (sharedPreferences.contains(a(39, 36, l[123])))
        g = sharedPreferences.getLong(a(39, 36, l[123]), 0L); 
      if (sharedPreferences.contains(a(37, l[19], l[16])))
        h = sharedPreferences.getLong(a(37, l[19], l[16]), 0L); 
      b = l[56];
      if (sharedPreferences.contains(a(37, b, b | 0x91))) {
        b = l[56];
        i = sharedPreferences.getLong(a(37, b, b | 0x91), 0L);
      } 
      return;
    } 
    a(-l[20], l[142], 134);
    a(-l[52], -l[34], 29);
  }
  
  public static long a() {
    return h;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 += 4;
    byte[] arrayOfByte2 = l;
    int k = 54 - paramInt1;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      j = k;
    } else {
      paramInt1 = 0;
      j = 102 - paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = j;
      int i1 = paramInt3 + 1;
      byte b1 = (byte)paramInt1;
      int i2 = paramInt2 + 1;
      arrayOfByte1[paramInt2] = b1;
    } 
    int j = -paramInt3 + j - 1;
    paramInt3 = paramInt1;
    paramInt1 = j;
    int m = paramInt3 + 1;
    byte b = (byte)paramInt1;
    int n = paramInt2 + 1;
    arrayOfByte1[paramInt2] = b;
  }
  
  private static void a(long paramLong) {
    long l = paramLong;
    if (paramLong > 0L)
      l = paramLong / 1000L; 
    f += l;
    byte b = l[19];
    a(a(39, b, b | 0x78), f);
  }
  
  private static void a(String paramString, long paramLong) {
    if (SmiSdk.mContext == null) {
      a(-l[20], l[142], 134);
      byte b = l[19];
      a(b, b | 0x23, l[2]);
      return;
    } 
    SharedPreferences.Editor editor = k.a(SmiSdk.mContext).edit();
    editor.putLong(paramString, paramLong);
    editor.commit();
    editor.apply();
    a(-l[20], l[142], 134);
    (new StringBuilder()).append(paramString).append(a(-l[101], 44, -l[46])).append(paramLong).append(a(47, l[100], 60));
  }
  
  public static void a(boolean paramBoolean1, boolean paramBoolean2) {
    long l = h();
    if (paramBoolean1) {
      if (paramBoolean2) {
        b(l);
        return;
      } 
      a(l);
      return;
    } 
    if (paramBoolean2) {
      d(l);
      return;
    } 
    c(l);
  }
  
  public static long b() {
    return i;
  }
  
  private static void b(long paramLong) {
    long l = paramLong;
    if (paramLong > 0L)
      l = paramLong / 1000L; 
    g += l;
    a(a(39, 36, l[123]), g);
  }
  
  public static void b(boolean paramBoolean1, boolean paramBoolean2) {
    long l = h();
    if (paramBoolean2) {
      if (paramBoolean1) {
        c(l);
        return;
      } 
      a(l);
      return;
    } 
    if (paramBoolean1) {
      d(l);
      return;
    } 
    b(l);
  }
  
  public static long c() {
    return f;
  }
  
  private static void c(long paramLong) {
    long l = paramLong;
    if (paramLong > 0L)
      l = paramLong / 1000L; 
    h += l;
    a(a(37, l[19], l[16]), h);
  }
  
  public static void c(boolean paramBoolean1, boolean paramBoolean2) {
    long l = h();
    if (paramBoolean2) {
      if (paramBoolean1) {
        a(l);
        return;
      } 
      c(l);
      return;
    } 
    if (paramBoolean1) {
      b(l);
      return;
    } 
    d(l);
  }
  
  public static long d() {
    return g;
  }
  
  private static void d(long paramLong) {
    long l = paramLong;
    if (paramLong > 0L)
      l = paramLong / 1000L; 
    i += l;
    byte b = l[56];
    a(a(37, b, b | 0x91), i);
  }
  
  public static long e() {
    long l2 = h + f;
    long l1 = l2;
    if (l2 > 0L)
      l1 = l2 / 60L; 
    return l1;
  }
  
  private static void f() {
    if (0L == f && 0L == g && 0L == h && 0L == i && SmiSdk.mContext != null) {
      SharedPreferences sharedPreferences = k.a(SmiSdk.mContext);
      byte b = l[19];
      if (sharedPreferences.contains(a(39, b, b | 0x78))) {
        b = l[19];
        f = sharedPreferences.getLong(a(39, b, b | 0x78), 0L);
      } 
      if (sharedPreferences.contains(a(39, 36, l[123])))
        g = sharedPreferences.getLong(a(39, 36, l[123]), 0L); 
      if (sharedPreferences.contains(a(37, l[19], l[16])))
        h = sharedPreferences.getLong(a(37, l[19], l[16]), 0L); 
      b = l[56];
      if (sharedPreferences.contains(a(37, b, b | 0x91))) {
        b = l[56];
        i = sharedPreferences.getLong(a(37, b, b | 0x91), 0L);
      } 
      return;
    } 
    a(-l[20], l[142], 134);
    a(-l[52], -l[34], 29);
  }
  
  private static long g() {
    long l2 = h + i + f + g;
    long l1 = l2;
    if (l2 > 0L)
      l1 = l2 / 60L; 
    return l1;
  }
  
  private static long h() {
    if (0L == j) {
      j = System.currentTimeMillis();
      return 0L;
    } 
    long l1 = System.currentTimeMillis();
    k = l1;
    long l2 = j;
    j = k;
    return l1 - l2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */