package com.datami.smi.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.datami.smi.SmiSdk;
import com.datami.smi.b.k;
import com.datami.smi.b.m;
import org.json.JSONException;
import org.json.JSONObject;

public final class c extends Thread {
  public static o a;
  
  public static n b;
  
  public static b c;
  
  protected static int d = 0;
  
  public static String e;
  
  private static final String f = "[dmi]DiscoveryService";
  
  private static boolean k;
  
  private static boolean l;
  
  private static a m;
  
  private static final byte[] n = new byte[] { 
      62, 38, -14, 120, -7, 6, 9, 3, 25, -6, 
      12, -14, -65, 76, 7, -64, 6, 18, 11, 59, 
      -65, 27, -5, 9, 11, 9, -13, 21, 60, 9, 
      -13, 25, -6, 10, 66, -64, 20, 8, -12, 9, 
      19, 62, -56, 12, -14, 4, 7, 9, 23, -7, 
      5, 16, 0, 7, 18, -62, 41, -26, 4, -4, 
      10, 53, 32, 18, -62, 21, -26, 18, 11, 48, 
      32, 5, 25, -11, 4, 17, 1, 13, 77, -79, 
      9, 23, -6, 83, -64, 11, -2, 3, 13, 7, 
      48, 32, 1, 3, 19, 7, -5, 82, -62, 1, 
      -4, 22, -6, -1, 23, -7, -1, 95, -76, 19, 
      -9, 5, 9, 10, 15, 7, 74, -59, -7, 84, 
      -63, -7, 6, 9, 3, 87, 9, -5, 17, -5, 
      8, 0, -4, 9, 6, 4, -4, 10, 5, 25, 
      -11, 4, 17, 1, 13, 77, -65, 1, 3, 19, 
      7, -5, 82, -62, 1, -4, 22, -6, -1, 23, 
      -7, -1, 95, -64, 11, -2, 3, 13, 7, 48, 
      32, 18, -62, 21, -23, 23, -6, 57, 32, -3, 
      -3, 10, 18, 31, -31, -4, 22, -6, -1, 23, 
      -7, -1, 44, -12, -7, 2, 19, 12, 4, -6, 
      9, 6, 13, 8, -11, 11, 3, 12, 0, -1, 
      21, -1, 81, -67, -4, 89, -60, -4, 17, 4, 
      -2, 5, 9, -4, 5, 21, 7, 73, -27, 85, 
      -65, 1, 3, 19, 7, -5, 82, -62, 1, -4, 
      22, -6, -1, 23, -7, -1, 95, -77, 17, 13, 
      -11, 19, 7, 74, -74, 4, 19, 5, 7, -7, 
      19, -3, 17, 4, -8, 89, -64, -3, 0, 13, 
      16, 62, 18, -62, 1, -4, 10, -1, 23, -7, 
      -1, 95, -71, 10, 8, 5, -6, 90, -72, 5, 
      1, 90, -60, 3, 75, -62, -5, 7, 15, 74, 
      -45, 27, -7, 17, -9, 17, 0, 7, 84, -67, 
      1, 84, -62, 1, -4, 22, -6, -1, 23, -7, 
      -1, 95, -77, 20, -7, 2, 19, 12, 4, 49, 
      32, -23, 23, -6, 83, -61, 8, -5, 6, 82, 
      -20, 32, -27, 85, -59, 6, 4, -4, 10, 79, 
      -79, 9, 12, 82, -64, -3, 0, 13, 16, 74, 
      -67, 1, 84, -65, 1, 3, 19, 7, -5, 82, 
      -62, 1, -4, 22, -6, -1, 23, -7, -1, 95, 
      -76, 19, -8, 9, 7, 7, 1, 20, 63, 18, 
      -61, -6, 7, 1, 16, 11, 5, -7, 15, 1, 
      13, 77, -72, 5, 85, -62, 5, -5, 10, 3, 
      -4, 18, 14, -3, 0, 90, -64, -3, 3, 88, 
      -78, 18, 9, 75, -59, -9, 6, 71, -58, 5, 
      17, -7, 23, -13, 11, 3, 87, -27, 8, -9, 
      -1, 15, 2, 21, 7, 74, -62, 1, -4, 22, 
      -6, -1, 23, -7, -1, 95, -62, 9, -13, 25, 
      45, 54, -95, 8, 0, 63, 32, -3, 10, 7, 
      52, -31, -45, 27, 4, -5, 2, 17, 0, 7, 
      84, -20, 32, 14, -1, 7, 15, 13, 1, 13, 
      18, -62, 24, -28, 7, 9, 60, 32, -38, 7, 
      0, 21, -13, 10, 90, -67, -4, 89, -72, -1, 
      15, 6, 82, -77, 10, 85, -72, 5, 1, 90, 
      -61, -3, 13, 10, -11, 15, 1, 13, 77, -61, 
      8, 4, 1, 9, 74, 6, 6, -21, -2, 3, 
      13, 7, 74, -78, 11, 85, -65, 8, -9, 90, 
      -46, 21, -1, 13, -5, 14, -1, 7, -5, 0, 
      18, 20, -7, 2, 19, 12, 4, 6, 18, 11, 
      16, 6, 10, -8, 5, 17, -45, 27, 4, -5, 
      2, 17, 0, 7, 84, -2, 17, 3, 7, 11, 
      0, -7, 6, 9, 3, 25, -6, 12, -14, 9, 
      23, -6, -7, 16, -8, 9, 12, 11, 11, -4, 
      11 };
  
  private static int o = 215;
  
  private boolean g = false;
  
  private final Context h;
  
  private final SharedPreferences i;
  
  private String j;
  
  static {
    k = false;
    l = true;
    a = null;
    b = null;
    c = null;
    d = 1;
    m = new a(a(573, n[17], n[349]));
    e = Settings.Secure.getString(SmiSdk.mContext.getContentResolver(), a(n[52], n[27], o & 0x17E));
  }
  
  public c(Context paramContext, boolean paramBoolean) {
    this.h = paramContext;
    this.i = k.a(paramContext);
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    byte[] arrayOfByte1 = n;
    paramInt1 = 601 - paramInt1;
    int i = 118 - paramInt2;
    int k = 96 - paramInt3;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      j = i;
      i = paramInt1;
    } else {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      paramInt1 = i;
      paramInt3++;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    paramInt1 = -i + j + 6;
    paramInt3++;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  public static void a(Context paramContext) {
    if (paramContext == null) {
      a(423, n[21], n[294]);
      a(104, n[470] - 1, -n[42]);
      return;
    } 
    SharedPreferences sharedPreferences = k.a(paramContext);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    b(sharedPreferences);
    if (sharedPreferences.contains(a(35, n[76], 92)))
      editor.remove(a(35, n[76], 92)); 
    m.P();
    if (sharedPreferences.contains(a(598, n[75], n[125])))
      editor.remove(a(598, n[75], n[125])); 
    byte b1 = n[75];
    if (sharedPreferences.contains(a(b1, b1, n[212]))) {
      b1 = n[75];
      editor.remove(a(b1, b1, n[212]));
    } 
    editor.apply();
    editor.commit();
  }
  
  public static void a(boolean paramBoolean) {
    k = paramBoolean;
  }
  
  public static boolean a() {
    return k;
  }
  
  public static boolean a(SharedPreferences paramSharedPreferences) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 38
    //   4: aload_0
    //   5: bipush #115
    //   7: getstatic com/datami/smi/c/c.n : [B
    //   10: iconst_5
    //   11: baload
    //   12: bipush #92
    //   14: invokestatic a : (III)Ljava/lang/String;
    //   17: ldc2_w -1
    //   20: invokeinterface getLong : (Ljava/lang/String;J)J
    //   25: lconst_0
    //   26: lcmp
    //   27: ifne -> 38
    //   30: iconst_1
    //   31: istore_1
    //   32: iload_1
    //   33: ifeq -> 43
    //   36: iconst_1
    //   37: ireturn
    //   38: iconst_0
    //   39: istore_1
    //   40: goto -> 32
    //   43: aload_0
    //   44: ifnull -> 133
    //   47: aload_0
    //   48: bipush #115
    //   50: getstatic com/datami/smi/c/c.n : [B
    //   53: iconst_5
    //   54: baload
    //   55: bipush #92
    //   57: invokestatic a : (III)Ljava/lang/String;
    //   60: ldc2_w -1
    //   63: invokeinterface getLong : (Ljava/lang/String;J)J
    //   68: lconst_0
    //   69: lcmp
    //   70: ifle -> 133
    //   73: iconst_1
    //   74: istore_1
    //   75: iload_1
    //   76: ifeq -> 131
    //   79: sipush #468
    //   82: getstatic com/datami/smi/c/c.n : [B
    //   85: bipush #27
    //   87: baload
    //   88: getstatic com/datami/smi/c/c.n : [B
    //   91: sipush #287
    //   94: baload
    //   95: iconst_1
    //   96: iadd
    //   97: invokestatic a : (III)Ljava/lang/String;
    //   100: astore_2
    //   101: aload_0
    //   102: ifnull -> 138
    //   105: aload_0
    //   106: aload_2
    //   107: aconst_null
    //   108: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   113: astore_0
    //   114: aload_0
    //   115: ifnull -> 138
    //   118: aload_0
    //   119: invokevirtual length : ()I
    //   122: ifle -> 138
    //   125: iconst_1
    //   126: istore_1
    //   127: iload_1
    //   128: ifeq -> 36
    //   131: iconst_0
    //   132: ireturn
    //   133: iconst_0
    //   134: istore_1
    //   135: goto -> 75
    //   138: iconst_0
    //   139: istore_1
    //   140: goto -> 127
  }
  
  private static boolean a(SharedPreferences paramSharedPreferences, String paramString) {
    if (paramSharedPreferences != null) {
      String str = paramSharedPreferences.getString(paramString, null);
      if (str != null && str.length() > 0)
        return true; 
    } 
    return false;
  }
  
  public static int b(Context paramContext) {
    SharedPreferences sharedPreferences = k.a(paramContext);
    if (sharedPreferences == null) {
      a(423, n[21], n[294]);
      a(374, n[56] - 1, n[48]);
      return 100000;
    } 
    long l = sharedPreferences.getLong(a(115, n[5], 92), -1L);
    if (l == 0L) {
      a(423, n[21], n[294]);
      a(392, n[7], n[78]);
      return 100004;
    } 
    byte b1 = n[75];
    int i = sharedPreferences.getInt(a(b1, b1, n[212]), -1);
    if (i > 0) {
      a(423, n[21], n[294]);
      a(510, n[114], -n[335]);
      return i;
    } 
    if (l == -1L) {
      a(423, n[21], n[294]);
      a(374, n[56] - 1, n[48]);
      return 100000;
    } 
    if (sharedPreferences.getString(a(468, n[27], n[287] + 1), "").isEmpty()) {
      a(423, n[21], n[294]);
      a(260, n[56] - 1, n[52]);
      return 100001;
    } 
    return i;
  }
  
  public static void b(SharedPreferences paramSharedPreferences) {
    SharedPreferences.Editor editor = paramSharedPreferences.edit();
    if (paramSharedPreferences.contains(a(472, n[14], 93)))
      editor.remove(a(472, n[14], 93)); 
    if (paramSharedPreferences.contains(a(n[7], n[76], 92)))
      editor.remove(a(n[7], n[76], 92)); 
    if (paramSharedPreferences.contains(a(468, n[27], n[287] + 1)))
      editor.remove(a(468, n[27], n[287] + 1)); 
    byte b1 = n[45];
    if (paramSharedPreferences.contains(a(557, b1, b1 | 0x58))) {
      b1 = n[45];
      editor.remove(a(557, b1, b1 | 0x58));
    } 
    if (paramSharedPreferences.contains(a(115, n[5], 92)))
      editor.remove(a(115, n[5], 92)); 
    if (paramSharedPreferences.contains(a(403, n[40], n[125])))
      editor.remove(a(403, n[40], n[125])); 
    if (paramSharedPreferences.contains(a(395, n[6], 92)))
      editor.remove(a(395, n[6], 92)); 
    editor.apply();
    editor.commit();
  }
  
  public static void b(boolean paramBoolean) {
    l = paramBoolean;
  }
  
  public static boolean b() {
    return l;
  }
  
  public static boolean c() {
    boolean bool;
    null = false;
    if (c != null && c.b != null && !c.b.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool) {
      if (a != null && a.a().a() && a.a().b() != null && !a.a().b().isEmpty()) {
        bool = true;
      } else {
        bool = false;
      } 
      return bool ? true : null;
    } 
    return true;
  }
  
  private static boolean c(SharedPreferences paramSharedPreferences) {
    return (paramSharedPreferences != null && paramSharedPreferences.getLong(a(115, n[5], 92), -1L) == 0L);
  }
  
  public static String d() {
    return b.a();
  }
  
  private static boolean d(SharedPreferences paramSharedPreferences) {
    return (paramSharedPreferences != null && paramSharedPreferences.getLong(a(115, n[5], 92), -1L) > 0L);
  }
  
  public static String e() {
    return b.b();
  }
  
  private static String e(SharedPreferences paramSharedPreferences) {
    String str1;
    SharedPreferences sharedPreferences = null;
    String str2 = paramSharedPreferences.getString(a(468, n[27], n[287] + 1), null);
    paramSharedPreferences = sharedPreferences;
    if (str2 != null)
      str1 = m.b(str2); 
    return str1;
  }
  
  public static String f() {
    return b.c();
  }
  
  private static boolean g() {
    return (a != null && a.a().a() && a.a().b() != null && !a.a().b().isEmpty());
  }
  
  private static boolean h() {
    return (c != null && c.b != null && !c.b.isEmpty());
  }
  
  private static String i() {
    String str1 = null;
    String str2 = c.b;
    String str3 = u.a();
    if (str2 != null) {
      if (str3 != null && !str3.isEmpty())
        return str2 + a(590, n[427], -n[420]) + str3; 
    } else {
      return str1;
    } 
    return str2 + a(590, n[427], -n[420]);
  }
  
  private void j() {
    String str = null;
    try {
      if (this.i != null) {
        String str1 = this.i.getString(a(472, n[14], 93), null);
        String str2 = this.i.getString(a(n[7], n[76], 92), null);
        String str3 = this.i.getString(a(468, n[27], n[287] + 1), null);
        SharedPreferences sharedPreferences1 = this.i;
        byte b2 = n[45];
        String str4 = sharedPreferences1.getString(a(557, b2, b2 | 0x58), null);
        String str5 = this.i.getString(a(35, n[76], 92), null);
        String str6 = this.i.getString(a(403, n[40], n[125]), null);
        long l = this.i.getLong(a(115, n[5], 92), -1L);
        if (str1 != null) {
          str1 = m.b(str1);
        } else {
          str1 = null;
        } 
        if (str2 != null) {
          str2 = m.b(str2);
        } else {
          str2 = null;
        } 
        if (str3 != null) {
          str3 = m.b(str3);
        } else {
          str3 = null;
        } 
        if (str4 != null) {
          str4 = m.b(str4);
        } else {
          str4 = null;
        } 
        if (str5 != null) {
          str5 = m.b(str5);
        } else {
          str5 = null;
        } 
        if (str6 != null)
          str = m.b(str6); 
        if (str5 != null && !str5.isEmpty())
          u.a(str5); 
        a(423, n[21], n[294]);
        (new StringBuilder()).append(a(165, n[329] + 1, -n[12])).append(str1).append(a(431, n[116], n[125])).append(str2).append(a(548, n[116], o & 0x17E)).append(str3).append(a(112, n[116], n[125])).append(str4).append(a(539, n[116], n[125])).append(str5);
        c = new b(str1, str2, str3, str4, str, l);
        a = new o();
        if (this.i.contains(a(395, n[6], 92))) {
          str1 = this.i.getString(a(395, n[6], 92), null);
          if (str1 != null) {
            JSONObject jSONObject = new JSONObject(str1);
            try {
              a = new o(jSONObject);
            } catch (JSONException jSONException) {}
          } 
        } 
      } else {
        return;
      } 
      b = new n();
      SharedPreferences sharedPreferences = this.i;
      byte b1 = n[77];
      if (sharedPreferences.contains(a(470, b1, b1 | 0x50))) {
        sharedPreferences = this.i;
        b1 = n[77];
        String str1 = sharedPreferences.getString(a(470, b1, b1 | 0x50), null);
        if (str1 != null) {
          JSONObject jSONObject = new JSONObject(str1);
          try {
            b = new n(jSONObject);
            return;
          } catch (JSONException jSONException) {
            a(423, n[21], n[294]);
            (new StringBuilder()).append(a(o & 0x3AF, n[192], n[349])).append(jSONException);
            return;
          } 
        } 
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
  }
  
  private boolean k() {
    long l;
    if (m.j && Build.VERSION.SDK_INT <= 20 && (this.i == null || !m.a(this.i)))
      return false; 
    if (this.i != null) {
      l = this.i.getLong(a(115, n[5], 92), -1L);
    } else {
      l = -1L;
    } 
    if (-1L == l || (0L != l && System.currentTimeMillis() >= l)) {
      d = 0;
      this.g = true;
      return false;
    } 
    if (c == null)
      j(); 
    return true;
  }
  
  private boolean l() {
    return (this.i != null && m.a(this.i));
  }
  
  private boolean m() {
    boolean bool2 = false;
    if (d.a() || this.g) {
      this.g = false;
      return false;
    } 
    boolean bool1 = bool2;
    if (this.i.contains(a(35, n[76], 92)))
      try {
        if (u.a().isEmpty()) {
          String str = this.i.getString(a(35, n[76], 92), "");
          str = m.b(str);
          if (str != null && !str.isEmpty())
            u.a(str); 
        } 
        bool1 = true;
      } catch (Exception exception) {
        a(423, n[21], n[294]);
        a(-n[57], n[329], o & 0x17E);
        bool1 = bool2;
      }  
    a(423, n[21], n[294]);
    (new StringBuilder()).append(a(271, n[62] + 1, n[119])).append(bool1);
    return bool1;
  }
  
  private boolean n() {
    boolean bool = false;
    if (!this.i.getString(a(554, n[52], n[215]), "").equals(a(476, o & 0x16D, n[287] + 1))) {
      if (this.i != null) {
        SharedPreferences.Editor editor = this.i.edit();
        editor.putString(a(554, n[52], n[215]), a(476, o & 0x16D, n[287] + 1));
        editor.commit();
      } 
      bool = true;
    } 
    return bool;
  }
  
  private void o() {
    if (this.i != null) {
      SharedPreferences.Editor editor = this.i.edit();
      editor.putString(a(554, n[52], n[215]), a(476, o & 0x16D, n[287] + 1));
      editor.commit();
    } 
  }
  
  private boolean p() {
    TelephonyManager telephonyManager = (TelephonyManager)this.h.getSystemService(a(n[3] - 1, n[5], n[287] + 1));
    if (telephonyManager == null)
      throw new Exception(a(-n[12], n[69], -n[12])); 
    this.j = telephonyManager.getSimOperator();
    e.c = this.j;
    e.d = telephonyManager.getSimOperatorName();
    if (!this.i.getString(a(n[62], n[6], n[215]), "").equals(this.j)) {
      if (this.i != null) {
        SharedPreferences.Editor editor = this.i.edit();
        editor.putString(a(n[62], n[6], n[215]), this.j);
        editor.commit();
      } 
      return true;
    } 
    return false;
  }
  
  private void q() {
    if (this.i != null) {
      SharedPreferences.Editor editor = this.i.edit();
      editor.putString(a(n[62], n[6], n[215]), this.j);
      editor.commit();
    } 
  }
  
  public final void run() {
    // Byte code:
    //   0: getstatic com/datami/smi/c/c.e : Ljava/lang/String;
    //   3: putstatic com/datami/smi/c/e.e : Ljava/lang/String;
    //   6: invokestatic E : ()Z
    //   9: ifne -> 899
    //   12: aload_0
    //   13: getfield h : Landroid/content/Context;
    //   16: invokestatic a : (Landroid/content/Context;)Z
    //   19: ifeq -> 23
    //   22: return
    //   23: aload_0
    //   24: getfield h : Landroid/content/Context;
    //   27: getstatic com/datami/smi/c/c.n : [B
    //   30: iconst_3
    //   31: baload
    //   32: iconst_1
    //   33: isub
    //   34: getstatic com/datami/smi/c/c.n : [B
    //   37: iconst_5
    //   38: baload
    //   39: getstatic com/datami/smi/c/c.n : [B
    //   42: sipush #287
    //   45: baload
    //   46: iconst_1
    //   47: iadd
    //   48: invokestatic a : (III)Ljava/lang/String;
    //   51: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   54: checkcast android/telephony/TelephonyManager
    //   57: astore #4
    //   59: aload #4
    //   61: ifnonnull -> 428
    //   64: new java/lang/Exception
    //   67: dup
    //   68: getstatic com/datami/smi/c/c.n : [B
    //   71: bipush #12
    //   73: baload
    //   74: ineg
    //   75: getstatic com/datami/smi/c/c.n : [B
    //   78: bipush #69
    //   80: baload
    //   81: getstatic com/datami/smi/c/c.n : [B
    //   84: bipush #12
    //   86: baload
    //   87: ineg
    //   88: invokestatic a : (III)Ljava/lang/String;
    //   91: invokespecial <init> : (Ljava/lang/String;)V
    //   94: athrow
    //   95: astore #4
    //   97: sipush #423
    //   100: getstatic com/datami/smi/c/c.n : [B
    //   103: bipush #21
    //   105: baload
    //   106: getstatic com/datami/smi/c/c.n : [B
    //   109: sipush #294
    //   112: baload
    //   113: invokestatic a : (III)Ljava/lang/String;
    //   116: pop
    //   117: sipush #302
    //   120: getstatic com/datami/smi/c/c.n : [B
    //   123: sipush #329
    //   126: baload
    //   127: getstatic com/datami/smi/c/c.n : [B
    //   130: bipush #15
    //   132: baload
    //   133: ineg
    //   134: invokestatic a : (III)Ljava/lang/String;
    //   137: pop
    //   138: ldc2_w -1
    //   141: lstore_2
    //   142: getstatic com/datami/smi/b/m.j : Z
    //   145: ifeq -> 719
    //   148: getstatic android/os/Build$VERSION.SDK_INT : I
    //   151: bipush #20
    //   153: if_icmpgt -> 719
    //   156: aload_0
    //   157: getfield i : Landroid/content/SharedPreferences;
    //   160: ifnull -> 173
    //   163: aload_0
    //   164: getfield i : Landroid/content/SharedPreferences;
    //   167: invokestatic a : (Landroid/content/SharedPreferences;)Z
    //   170: ifne -> 719
    //   173: iconst_0
    //   174: istore_1
    //   175: iload_1
    //   176: ifne -> 202
    //   179: new com/datami/smi/c/d
    //   182: dup
    //   183: aload_0
    //   184: getfield h : Landroid/content/Context;
    //   187: invokespecial <init> : (Landroid/content/Context;)V
    //   190: astore #4
    //   192: aload #4
    //   194: invokevirtual start : ()V
    //   197: aload #4
    //   199: invokevirtual join : ()V
    //   202: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   205: ifnonnull -> 218
    //   208: new com/datami/smi/c/o
    //   211: dup
    //   212: invokespecial <init> : ()V
    //   215: putstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   218: getstatic com/datami/smi/c/c.b : Lcom/datami/smi/c/n;
    //   221: ifnonnull -> 234
    //   224: new com/datami/smi/c/n
    //   227: dup
    //   228: invokespecial <init> : ()V
    //   231: putstatic com/datami/smi/c/c.b : Lcom/datami/smi/c/n;
    //   234: invokestatic T : ()Z
    //   237: pop
    //   238: iconst_1
    //   239: getstatic com/datami/smi/c/c.d : I
    //   242: if_icmpne -> 899
    //   245: aload_0
    //   246: invokespecial m : ()Z
    //   249: ifne -> 899
    //   252: aconst_null
    //   253: astore #4
    //   255: getstatic com/datami/smi/c/c.c : Lcom/datami/smi/c/b;
    //   258: getfield b : Ljava/lang/String;
    //   261: astore #5
    //   263: invokestatic a : ()Ljava/lang/String;
    //   266: astore #6
    //   268: aload #5
    //   270: ifnull -> 332
    //   273: aload #6
    //   275: ifnull -> 845
    //   278: aload #6
    //   280: invokevirtual isEmpty : ()Z
    //   283: ifne -> 845
    //   286: new java/lang/StringBuilder
    //   289: dup
    //   290: invokespecial <init> : ()V
    //   293: aload #5
    //   295: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: sipush #590
    //   301: getstatic com/datami/smi/c/c.n : [B
    //   304: sipush #427
    //   307: baload
    //   308: getstatic com/datami/smi/c/c.n : [B
    //   311: sipush #420
    //   314: baload
    //   315: ineg
    //   316: invokestatic a : (III)Ljava/lang/String;
    //   319: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload #6
    //   324: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: invokevirtual toString : ()Ljava/lang/String;
    //   330: astore #4
    //   332: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   335: invokevirtual a : ()Lcom/datami/smi/c/q;
    //   338: invokevirtual a : ()Z
    //   341: ifeq -> 355
    //   344: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   347: invokevirtual a : ()Lcom/datami/smi/c/q;
    //   350: invokevirtual b : ()Ljava/lang/String;
    //   353: astore #4
    //   355: aload #4
    //   357: ifnull -> 899
    //   360: new com/datami/smi/c/u
    //   363: dup
    //   364: aload #4
    //   366: aload_0
    //   367: getfield h : Landroid/content/Context;
    //   370: invokespecial <init> : (Ljava/lang/String;Landroid/content/Context;)V
    //   373: astore #4
    //   375: aload #4
    //   377: invokevirtual start : ()V
    //   380: aload #4
    //   382: invokevirtual join : ()V
    //   385: return
    //   386: astore #4
    //   388: sipush #423
    //   391: getstatic com/datami/smi/c/c.n : [B
    //   394: bipush #21
    //   396: baload
    //   397: getstatic com/datami/smi/c/c.n : [B
    //   400: sipush #294
    //   403: baload
    //   404: invokestatic a : (III)Ljava/lang/String;
    //   407: pop
    //   408: sipush #531
    //   411: getstatic com/datami/smi/c/c.n : [B
    //   414: bipush #7
    //   416: baload
    //   417: getstatic com/datami/smi/c/c.n : [B
    //   420: bipush #116
    //   422: baload
    //   423: invokestatic a : (III)Ljava/lang/String;
    //   426: pop
    //   427: return
    //   428: aload_0
    //   429: aload #4
    //   431: invokevirtual getSimOperator : ()Ljava/lang/String;
    //   434: putfield j : Ljava/lang/String;
    //   437: aload_0
    //   438: getfield j : Ljava/lang/String;
    //   441: putstatic com/datami/smi/c/e.c : Ljava/lang/String;
    //   444: aload #4
    //   446: invokevirtual getSimOperatorName : ()Ljava/lang/String;
    //   449: putstatic com/datami/smi/c/e.d : Ljava/lang/String;
    //   452: aload_0
    //   453: getfield i : Landroid/content/SharedPreferences;
    //   456: getstatic com/datami/smi/c/c.n : [B
    //   459: bipush #62
    //   461: baload
    //   462: getstatic com/datami/smi/c/c.n : [B
    //   465: bipush #6
    //   467: baload
    //   468: getstatic com/datami/smi/c/c.n : [B
    //   471: sipush #215
    //   474: baload
    //   475: invokestatic a : (III)Ljava/lang/String;
    //   478: ldc_w ''
    //   481: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   486: aload_0
    //   487: getfield j : Ljava/lang/String;
    //   490: invokevirtual equals : (Ljava/lang/Object;)Z
    //   493: ifne -> 894
    //   496: aload_0
    //   497: getfield i : Landroid/content/SharedPreferences;
    //   500: ifnull -> 900
    //   503: aload_0
    //   504: getfield i : Landroid/content/SharedPreferences;
    //   507: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   512: astore #4
    //   514: aload #4
    //   516: getstatic com/datami/smi/c/c.n : [B
    //   519: bipush #62
    //   521: baload
    //   522: getstatic com/datami/smi/c/c.n : [B
    //   525: bipush #6
    //   527: baload
    //   528: getstatic com/datami/smi/c/c.n : [B
    //   531: sipush #215
    //   534: baload
    //   535: invokestatic a : (III)Ljava/lang/String;
    //   538: aload_0
    //   539: getfield j : Ljava/lang/String;
    //   542: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   547: pop
    //   548: aload #4
    //   550: invokeinterface commit : ()Z
    //   555: pop
    //   556: goto -> 900
    //   559: iload_1
    //   560: ifeq -> 569
    //   563: getstatic com/datami/smi/SmiSdk.mContext : Landroid/content/Context;
    //   566: invokestatic a : (Landroid/content/Context;)V
    //   569: aload_0
    //   570: getfield i : Landroid/content/SharedPreferences;
    //   573: sipush #554
    //   576: getstatic com/datami/smi/c/c.n : [B
    //   579: bipush #52
    //   581: baload
    //   582: getstatic com/datami/smi/c/c.n : [B
    //   585: sipush #215
    //   588: baload
    //   589: invokestatic a : (III)Ljava/lang/String;
    //   592: ldc_w ''
    //   595: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   600: sipush #476
    //   603: getstatic com/datami/smi/c/c.o : I
    //   606: sipush #365
    //   609: iand
    //   610: getstatic com/datami/smi/c/c.n : [B
    //   613: sipush #287
    //   616: baload
    //   617: iconst_1
    //   618: iadd
    //   619: invokestatic a : (III)Ljava/lang/String;
    //   622: invokevirtual equals : (Ljava/lang/Object;)Z
    //   625: ifne -> 889
    //   628: aload_0
    //   629: getfield i : Landroid/content/SharedPreferences;
    //   632: ifnull -> 905
    //   635: aload_0
    //   636: getfield i : Landroid/content/SharedPreferences;
    //   639: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   644: astore #4
    //   646: aload #4
    //   648: sipush #554
    //   651: getstatic com/datami/smi/c/c.n : [B
    //   654: bipush #52
    //   656: baload
    //   657: getstatic com/datami/smi/c/c.n : [B
    //   660: sipush #215
    //   663: baload
    //   664: invokestatic a : (III)Ljava/lang/String;
    //   667: sipush #476
    //   670: getstatic com/datami/smi/c/c.o : I
    //   673: sipush #365
    //   676: iand
    //   677: getstatic com/datami/smi/c/c.n : [B
    //   680: sipush #287
    //   683: baload
    //   684: iconst_1
    //   685: iadd
    //   686: invokestatic a : (III)Ljava/lang/String;
    //   689: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   694: pop
    //   695: aload #4
    //   697: invokeinterface commit : ()Z
    //   702: pop
    //   703: goto -> 905
    //   706: iload_1
    //   707: ifeq -> 138
    //   710: getstatic com/datami/smi/SmiSdk.mContext : Landroid/content/Context;
    //   713: invokestatic a : (Landroid/content/Context;)V
    //   716: goto -> 138
    //   719: aload_0
    //   720: getfield i : Landroid/content/SharedPreferences;
    //   723: ifnull -> 751
    //   726: aload_0
    //   727: getfield i : Landroid/content/SharedPreferences;
    //   730: bipush #115
    //   732: getstatic com/datami/smi/c/c.n : [B
    //   735: iconst_5
    //   736: baload
    //   737: bipush #92
    //   739: invokestatic a : (III)Ljava/lang/String;
    //   742: ldc2_w -1
    //   745: invokeinterface getLong : (Ljava/lang/String;J)J
    //   750: lstore_2
    //   751: ldc2_w -1
    //   754: lload_2
    //   755: lcmp
    //   756: ifeq -> 773
    //   759: lconst_0
    //   760: lload_2
    //   761: lcmp
    //   762: ifeq -> 787
    //   765: invokestatic currentTimeMillis : ()J
    //   768: lload_2
    //   769: lcmp
    //   770: iflt -> 787
    //   773: iconst_0
    //   774: putstatic com/datami/smi/c/c.d : I
    //   777: aload_0
    //   778: iconst_1
    //   779: putfield g : Z
    //   782: iconst_0
    //   783: istore_1
    //   784: goto -> 175
    //   787: getstatic com/datami/smi/c/c.c : Lcom/datami/smi/c/b;
    //   790: ifnonnull -> 797
    //   793: aload_0
    //   794: invokespecial j : ()V
    //   797: iconst_1
    //   798: istore_1
    //   799: goto -> 175
    //   802: astore #4
    //   804: sipush #423
    //   807: getstatic com/datami/smi/c/c.n : [B
    //   810: bipush #21
    //   812: baload
    //   813: getstatic com/datami/smi/c/c.n : [B
    //   816: sipush #294
    //   819: baload
    //   820: invokestatic a : (III)Ljava/lang/String;
    //   823: pop
    //   824: sipush #464
    //   827: getstatic com/datami/smi/c/c.n : [B
    //   830: bipush #7
    //   832: baload
    //   833: getstatic com/datami/smi/c/c.n : [B
    //   836: iconst_0
    //   837: baload
    //   838: invokestatic a : (III)Ljava/lang/String;
    //   841: pop
    //   842: goto -> 202
    //   845: new java/lang/StringBuilder
    //   848: dup
    //   849: invokespecial <init> : ()V
    //   852: aload #5
    //   854: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   857: sipush #590
    //   860: getstatic com/datami/smi/c/c.n : [B
    //   863: sipush #427
    //   866: baload
    //   867: getstatic com/datami/smi/c/c.n : [B
    //   870: sipush #420
    //   873: baload
    //   874: ineg
    //   875: invokestatic a : (III)Ljava/lang/String;
    //   878: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   881: invokevirtual toString : ()Ljava/lang/String;
    //   884: astore #4
    //   886: goto -> 332
    //   889: iconst_0
    //   890: istore_1
    //   891: goto -> 706
    //   894: iconst_0
    //   895: istore_1
    //   896: goto -> 559
    //   899: return
    //   900: iconst_1
    //   901: istore_1
    //   902: goto -> 559
    //   905: iconst_1
    //   906: istore_1
    //   907: goto -> 706
    // Exception table:
    //   from	to	target	type
    //   0	22	95	java/lang/Exception
    //   23	59	95	java/lang/Exception
    //   64	95	95	java/lang/Exception
    //   192	202	802	java/lang/InterruptedException
    //   375	385	386	java/lang/InterruptedException
    //   428	556	95	java/lang/Exception
    //   563	569	95	java/lang/Exception
    //   569	703	95	java/lang/Exception
    //   710	716	95	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */