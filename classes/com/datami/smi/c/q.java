package com.datami.smi.c;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.datami.smi.SmiIntentService;
import com.datami.smi.SmiSdk;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public final class q {
  private static final String a = "[dmi]MsisdnDiscovery";
  
  private static final byte[] f = new byte[] { 
      23, 35, 100, -4, -16, -1, 38, -28, -3, 2, 
      10, -18, 17, -18, 10, -7, 0, 5, 3, -11, 
      14, -8, 61, -53, -14, 9, -15, 2, 5, 4, 
      4, 45, 2, -12, 10, -12, 9, 74, -56, -10, 
      3, 59, -53, -16, -1, 2, 16, -13, 13, -3, 
      -16, 6, 9, -21, -3, 14, -1, -4, -16, 74, 
      -56, -10, 3, 59, -71, 13, -14, -5, 12, 5, 
      -3, 55, -72, 4, 3, 5, -10, 6, -19, 10, 
      2, 0, 4, -23, 11, 4, 41, 74, -56, -10, 
      3, 59, -55, -13, 10, -2, 55, -68, 14, -20, 
      11, 74, -56, -10, 3, 59, -53, -16, 6, 59, 
      -63, 5, -21, -19, -14, -5, 12, 5, -3, 68, 
      -85, 4, 3, 5, -10, 77, -74, -11, 82, -38, 
      -41, -4, -5, -6, 88, 0, 13, 24, -12, -52, 
      20, -3, -12, -5, 10, -7, 0, 77, -88, 14, 
      -2, -4, 6, 68, -68, -16, 12, 3, -20, 10, 
      -6, 6, 70, -70, -10, 10, -13, 10, -2, 0, 
      67, -85, 10, -5, 7, 68, -69, -6, -11, 15, 
      -13, -8, 16, -14, -8, 88, -86, 2, 5, 75, 
      -10, -10, 3, 11, 15, -39, 9, -11, 14, -11, 
      41, -38, -11, 15, -13, -8, 16, -14, -8, -59, 
      11, 4, 41, 11, 4, 41, 74, -56, -10, 3, 
      59, -71, 14, -8, -72, 69, 0, -71, -1, 11, 
      4, 52, -72, 20, -12, 2, 4, 2, -20, 14 };
  
  private static int g = 73;
  
  private boolean b;
  
  private p c;
  
  private int d;
  
  private String e;
  
  public q(boolean paramBoolean, String paramString, p paramp, int paramInt) {
    this.b = paramBoolean;
    this.c = paramp;
    this.d = paramInt;
    this.e = a(paramString);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 += 4;
    paramInt1 = 52 - paramInt1;
    byte[] arrayOfByte2 = f;
    byte[] arrayOfByte1 = new byte[paramInt1];
    int j = paramInt1 - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      paramInt2 = paramInt3;
      i = j;
    } else {
      i = 0;
      paramInt1 = 120 - paramInt2;
      paramInt2 = i;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
      int m = paramInt3 + 1;
    } 
    int i = -paramInt3 + i - 1;
    paramInt3 = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
    int k = paramInt3 + 1;
  }
  
  private String a(String paramString) {
    String str2 = "";
    if (paramString == null || paramString.isEmpty())
      return ""; 
    String str1 = "";
    try {
      PackageInfo packageInfo = SmiSdk.mContext.getPackageManager().getPackageInfo(SmiSdk.mContext.getPackageName(), 0);
      if (packageInfo != null)
        str1 = packageInfo.versionName; 
      String str4 = t.a();
      if (str4 == null) {
        Log.i(a(32, 29, 185), a(29, f[6] - 1, 108));
        return "";
      } 
      StringBuilder stringBuilder2 = new StringBuilder();
      byte b1 = -f[195];
      byte b2 = f[16];
      StringBuilder stringBuilder3 = stringBuilder2.append(a(b1, b2, b2 | 0x60)).append(a(f[231] - 1, f[22] + 1, f[5])).append(SmiIntentService.getSdkKey(SmiSdk.mContext)).append(a(f[231] - 1, f[22], f[5])).append(a(f[6] - 1, f[16], f[128])).append(a(f[231] - 1, f[22] + 1, f[5])).append(a(f[86] + 1, -f[21], f[18])).append(a(f[231] - 1, f[22], f[5]));
      b1 = f[16];
      stringBuilder3 = stringBuilder3.append(a(43, b1, b1 | 0xD3)).append(a(f[231] - 1, f[22] + 1, f[5])).append(a(31, f[17], f[68]) + Build.VERSION.RELEASE).append(a(f[231] - 1, f[22], f[5]));
      b1 = f[16];
      stringBuilder3 = stringBuilder3.append(a(43, b1, b1 | 0x20)).append(a(f[231] - 1, f[22] + 1, f[5])).append(str1).append(a(f[231] - 1, f[22], f[5]));
      if (this.c == p.c) {
        str1 = a(f[86], f[46], -f[72]) + c.e + a(f[231] - 1, f[22], f[5]);
      } else if (this.c == p.b) {
        str1 = a(f[86], f[46], -f[72]) + c.e + a(47, f[22], 204) + c.e + a(f[231] - 1, f[22], f[5]);
      } else {
        str1 = a(48, f[18], 208) + c.e + a(f[231] - 1, f[22], f[5]);
      } 
      StringBuilder stringBuilder1 = stringBuilder3.append(str1).append(a(47, f[0], f[5])).append(a(f[231] - 1, f[22] + 1, f[5])).append(SmiSdk.mContext.getPackageName()).append(a(f[231] - 1, f[22], f[5]));
      b1 = f[16];
      stringBuilder1 = stringBuilder1.append(a(33, b1, b1 | 0x36)).append(a(f[231] - 1, f[22] + 1, f[5])).append(str4).append(a(f[231] - 1, f[22], f[5])).append(a(f[6] - 1, f[18], f[86] - 1)).append(a(f[231] - 1, f[22] + 1, f[5]));
      b1 = f[1];
      int i = g;
      stringBuilder1.append(a(b1, i, i | 0x92));
      String str3 = URLEncoder.encode(stringBuilder2.toString(), a(47, f[1], 130));
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      String str4 = a(32, 29, 185);
      StringBuilder stringBuilder = new StringBuilder();
      byte b = f[16];
      Log.i(str4, stringBuilder.append(a(b, b | 0x33, 134)).append(nameNotFoundException).toString());
      String str3 = str2;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      String str = a(32, 29, 185);
      StringBuilder stringBuilder = new StringBuilder();
      byte b = f[16];
      Log.i(str, stringBuilder.append(a(b, b | 0x33, 134)).append(unsupportedEncodingException).toString());
      str1 = str2;
    } 
    return paramString + str1;
  }
  
  private String c() {
    return (this.c == p.c) ? (a(f[86], f[46], -f[72]) + c.e + a(f[231] - 1, f[22], f[5])) : ((this.c == p.b) ? (a(f[86], f[46], -f[72]) + c.e + a(47, f[22], 204) + c.e + a(f[231] - 1, f[22], f[5])) : (a(48, f[18], 208) + c.e + a(f[231] - 1, f[22], f[5])));
  }
  
  private int d() {
    return this.d;
  }
  
  private static String e() {
    String str = "";
    PackageInfo packageInfo = SmiSdk.mContext.getPackageManager().getPackageInfo(SmiSdk.mContext.getPackageName(), 0);
    if (packageInfo != null)
      str = packageInfo.versionName; 
    return str;
  }
  
  public final boolean a() {
    return this.b;
  }
  
  public final String b() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */