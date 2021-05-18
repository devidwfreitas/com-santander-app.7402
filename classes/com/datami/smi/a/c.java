package com.datami.smi.a;

import android.content.SharedPreferences;
import com.datami.smi.SmiSdk;
import com.datami.smi.b.k;
import com.datami.smi.b.m;

public final class c {
  private static final String a = "[dmi]LaunchCount";
  
  private static final String b = "wifi_launch_count";
  
  private static final String c = "mobile_launch_count";
  
  private static volatile int d;
  
  private static volatile int e;
  
  private static final byte[] f = new byte[] { 
      119, -60, -41, -105, -78, 31, -35, 12, -8, -4, 
      6, 24, -22, -21, 6, 10, -6, 36, -45, -7, 
      6, -7, 83, -27, 25, 20, -12, -10, 15, 68, 
      -74, -11, 82, -79, 8, -3, 5, -20, 10, -14, 
      16, 68, -9, -6, -74, 16, 59, -3, 12, -8, 
      -4, 6, 5, -14, 10, -21, 6, 10, -6, 8, 
      -5, -13, -7, 6, -7, -22, -21, 6, 10, -6, 
      71, -36, -45, -7, 6, -7, 83, -66, -12, -7, 
      12, 3, -4, -22, 88, -74, -6, 4, -12, 10, 
      7, -12, 2, -11, 13, 0, 67, -78, 21, -19, 
      2, -4, 28, -22, -21, 6, 10, -6, 36, -45, 
      -7, 6, -7, 83, -27, 25, 13, 2, -4, 9, 
      -14, 10, -21, 6, 10, -6, 8, -5, -13, -7, 
      6, -7, -84, -2, 4, -4, 12, 0, 25, -10, 
      -10, 3, 11, 16, -22, -21, 6, 10, -6, 36, 
      -45, -7, 6, -7, -45, 0, -7, 14, -20, 3, 
      83, -74, -11, 82, -79, -8, 8, -1, 75, -84, 
      3, 78, -79, -2, -6, 83, -84, 17, -22, 12, 
      -6, 6, 70, -45, -22, -21, 6, 10, -6, 71, 
      -68, -13, -7, 6, -7, 83, -66, -14, 12, -12, 
      -14, 4, 10, 5, -17, 82, -87, 20, -12, -10, 
      15, -15, -52, 20, -3, -12, -5, 10, -7, 0, 
      77, -27, 25 };
  
  private static int g = 63;
  
  static {
    d = 0;
    e = 0;
  }
  
  public c() {
    if (d == 0 && e == 0 && SmiSdk.mContext != null) {
      SharedPreferences sharedPreferences = k.a(SmiSdk.mContext);
      if (sharedPreferences.contains(a(-f[206], 112, g & 0xEA)))
        d = sharedPreferences.getInt(a(-f[206], 112, g & 0xEA), 0); 
      byte b = f[220];
      int j = g & 0xEB;
      if (sharedPreferences.contains(a(b, j, j - 3))) {
        b = f[220];
        j = g & 0xEB;
        e = sharedPreferences.getInt(a(b, j, j - 3), 0);
      } 
      return;
    } 
    a(f[46], 135, g & 0xEB);
    StringBuilder stringBuilder = new StringBuilder();
    int i = g & 0xEC;
    stringBuilder = stringBuilder.append(a(i, i | 0x11, f[90])).append(d);
    i = f[95];
    stringBuilder.append(a(i, i, i | 0x25)).append(e);
  }
  
  public static int a() {
    return d;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 = 59 - paramInt3;
    paramInt1 += 32;
    paramInt2 += 4;
    byte[] arrayOfByte2 = f;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      byte b = -1;
      paramInt3 = paramInt1;
      i = j;
      paramInt1 = b;
    } else {
      paramInt3 = -1;
      int m = paramInt3 + 1;
      arrayOfByte1[m] = (byte)paramInt1;
    } 
    int i = -i;
    paramInt2++;
    i = i + paramInt3 - 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[k] = (byte)paramInt1;
  }
  
  private static void a(String paramString, int paramInt) {
    if (paramInt <= 0) {
      a(f[46], 135, g & 0xEB);
      a(86, f[98], f[17]);
      return;
    } 
    if (SmiSdk.mContext == null) {
      a(f[46], 135, g & 0xEB);
      a(-f[6], 150, f[95]);
      return;
    } 
    SharedPreferences.Editor editor = k.a(SmiSdk.mContext).edit();
    editor.putInt(paramString, paramInt);
    editor.commit();
    editor.apply();
    a(f[46], 135, g & 0xEB);
    StringBuilder stringBuilder = (new StringBuilder()).append(paramString).append(a(g & 0x5A, 134, g & 0xF9)).append(paramInt);
    paramInt = f[95];
    stringBuilder.append(a(paramInt, paramInt | 0x80, -f[212]));
  }
  
  private static void a(boolean paramBoolean) {
    if (paramBoolean) {
      d++;
      a(a(-f[206], 112, g & 0xEA), d);
      return;
    } 
    e++;
    byte b = f[220];
    int i = g & 0xEB;
    a(a(b, i, i - 3), e);
  }
  
  public static int b() {
    return e;
  }
  
  public static void c() {
    boolean bool = false;
    try {
      boolean bool1 = m.E();
      bool = bool1;
      if (bool) {
        d++;
        a(a(-f[206], 112, g & 0xEA), d);
        return;
      } 
    } catch (Exception exception) {
      a(f[46], 135, g & 0xEB);
      (new StringBuilder()).append(a(g & 0xE5, 208, g & 0xEF)).append(exception);
      if (bool) {
        d++;
        a(a(-f[206], 112, g & 0xEA), d);
        return;
      } 
    } 
    e++;
    byte b = f[220];
    int i = g & 0xEB;
    a(a(b, i, i - 3), e);
  }
  
  private static void d() {
    d++;
    a(a(-f[206], 112, g & 0xEA), d);
  }
  
  private static void e() {
    e++;
    byte b = f[220];
    int i = g & 0xEB;
    a(a(b, i, i - 3), e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */