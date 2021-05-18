import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public class czr {
  public static final String a = "SERVICE_NOT_AVAILABLE";
  
  public static final String b = "TIMEOUT";
  
  public static final String c = "MISSING_INSTANCEID_SERVICE";
  
  public static final String d = "RETRY_LATER";
  
  public static final String e = "MAIN_THREAD";
  
  static Map<String, czr> f = new HashMap<String, czr>();
  
  static String k;
  
  private static dad l;
  
  private static dab m;
  
  Context g;
  
  KeyPair h;
  
  String i = "";
  
  long j;
  
  protected czr(Context paramContext, String paramString, Bundle paramBundle) {
    this.g = paramContext.getApplicationContext();
    this.i = paramString;
  }
  
  static int a(Context paramContext) {
    try {
      return (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      String str = String.valueOf(nameNotFoundException);
      Log.w("InstanceID", (new StringBuilder(String.valueOf(str).length() + 38)).append("Never happens: can't find own package ").append(str).toString());
      return 0;
    } 
  }
  
  public static czr a(Context paramContext, Bundle paramBundle) {
    // Byte code:
    //   0: ldc czr
    //   2: monitorenter
    //   3: aload_1
    //   4: ifnonnull -> 107
    //   7: ldc ''
    //   9: astore_2
    //   10: goto -> 126
    //   13: aload_0
    //   14: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   17: astore #4
    //   19: getstatic czr.l : Ldad;
    //   22: ifnonnull -> 49
    //   25: new dad
    //   28: dup
    //   29: aload #4
    //   31: invokespecial <init> : (Landroid/content/Context;)V
    //   34: putstatic czr.l : Ldad;
    //   37: new dab
    //   40: dup
    //   41: aload #4
    //   43: invokespecial <init> : (Landroid/content/Context;)V
    //   46: putstatic czr.m : Ldab;
    //   49: aload #4
    //   51: invokestatic a : (Landroid/content/Context;)I
    //   54: invokestatic toString : (I)Ljava/lang/String;
    //   57: putstatic czr.k : Ljava/lang/String;
    //   60: getstatic czr.f : Ljava/util/Map;
    //   63: aload_2
    //   64: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   69: checkcast czr
    //   72: astore_3
    //   73: aload_3
    //   74: astore_0
    //   75: aload_3
    //   76: ifnonnull -> 102
    //   79: new czr
    //   82: dup
    //   83: aload #4
    //   85: aload_2
    //   86: aload_1
    //   87: invokespecial <init> : (Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    //   90: astore_0
    //   91: getstatic czr.f : Ljava/util/Map;
    //   94: aload_2
    //   95: aload_0
    //   96: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: ldc czr
    //   104: monitorexit
    //   105: aload_0
    //   106: areturn
    //   107: aload_1
    //   108: ldc 'subtype'
    //   110: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   113: astore_2
    //   114: goto -> 126
    //   117: astore_0
    //   118: ldc czr
    //   120: monitorexit
    //   121: aload_0
    //   122: athrow
    //   123: goto -> 13
    //   126: aload_2
    //   127: ifnonnull -> 123
    //   130: ldc ''
    //   132: astore_2
    //   133: goto -> 13
    // Exception table:
    //   from	to	target	type
    //   13	49	117	finally
    //   49	73	117	finally
    //   79	102	117	finally
    //   107	114	117	finally
  }
  
  static String a(KeyPair paramKeyPair) {
    byte[] arrayOfByte = paramKeyPair.getPublic().getEncoded();
    try {
      arrayOfByte = MessageDigest.getInstance("SHA1").digest(arrayOfByte);
      arrayOfByte[0] = (byte)((arrayOfByte[0] & 0xF) + 112 & 0xFF);
      return Base64.encodeToString(arrayOfByte, 0, 8, 11);
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      Log.w("InstanceID", "Unexpected error, device missing required alghorithms");
      return null;
    } 
  }
  
  static String a(byte[] paramArrayOfbyte) {
    return Base64.encodeToString(paramArrayOfbyte, 11);
  }
  
  static String b(Context paramContext) {
    try {
      return (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionName;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      String str = String.valueOf(nameNotFoundException);
      Log.w("InstanceID", (new StringBuilder(String.valueOf(str).length() + 38)).append("Never happens: can't find own package ").append(str).toString());
      return null;
    } 
  }
  
  public static czr c(Context paramContext) {
    return a(paramContext, (Bundle)null);
  }
  
  KeyPair a() {
    if (this.h == null)
      this.h = l.c(this.i); 
    if (this.h == null) {
      this.j = System.currentTimeMillis();
      this.h = l.a(this.i, this.j);
    } 
    return this.h;
  }
  
  public void a(String paramString1, String paramString2) {
    a(paramString1, paramString2, null);
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle) {
    if (Looper.getMainLooper() == Looper.myLooper())
      throw new IOException("MAIN_THREAD"); 
    l.b(this.i, paramString1, paramString2);
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    bundle.putString("sender", paramString1);
    if (paramString2 != null)
      bundle.putString("scope", paramString2); 
    bundle.putString("subscription", paramString1);
    bundle.putString("delete", "1");
    bundle.putString("X-delete", "1");
    if ("".equals(this.i)) {
      paramString2 = paramString1;
    } else {
      paramString2 = this.i;
    } 
    bundle.putString("subtype", paramString2);
    if (!"".equals(this.i))
      paramString1 = this.i; 
    bundle.putString("X-subtype", paramString1);
    Intent intent = m.a(bundle, a());
    m.b(intent);
  }
  
  public String b() {
    return a(a());
  }
  
  public String b(String paramString1, String paramString2) {
    return b(paramString1, paramString2, null);
  }
  
  public String b(String paramString1, String paramString2, Bundle paramBundle) {
    String str;
    boolean bool2 = false;
    if (Looper.getMainLooper() == Looper.myLooper())
      throw new IOException("MAIN_THREAD"); 
    boolean bool1 = true;
    if (h()) {
      str = null;
    } else {
      str = l.a(this.i, paramString1, paramString2);
    } 
    if (str == null) {
      Bundle bundle = paramBundle;
      if (paramBundle == null)
        bundle = new Bundle(); 
      if (bundle.getString("ttl") != null)
        bool1 = false; 
      if ("jwt".equals(bundle.getString("type")))
        bool1 = bool2; 
      String str1 = c(paramString1, paramString2, bundle);
      str = str1;
      if (str1 != null) {
        str = str1;
        if (bool1) {
          l.a(this.i, paramString1, paramString2, str1, k);
          return str1;
        } 
      } 
    } 
    return str;
  }
  
  public long c() {
    if (this.j == 0L) {
      String str = l.a(this.i, "cre");
      if (str != null)
        this.j = Long.parseLong(str); 
    } 
    return this.j;
  }
  
  public String c(String paramString1, String paramString2, Bundle paramBundle) {
    if (paramString2 != null)
      paramBundle.putString("scope", paramString2); 
    paramBundle.putString("sender", paramString1);
    if ("".equals(this.i)) {
      paramString2 = paramString1;
    } else {
      paramString2 = this.i;
    } 
    if (!paramBundle.containsKey("legacy.register")) {
      paramBundle.putString("subscription", paramString1);
      paramBundle.putString("subtype", paramString2);
      paramBundle.putString("X-subscription", paramString1);
      paramBundle.putString("X-subtype", paramString2);
    } 
    Intent intent = m.a(paramBundle, a());
    return m.b(intent);
  }
  
  public void d() {
    a("*", "*", null);
    e();
  }
  
  public void e() {
    this.j = 0L;
    l.d(this.i);
    this.h = null;
  }
  
  public dad f() {
    return l;
  }
  
  public dab g() {
    return m;
  }
  
  boolean h() {
    String str = l.a("appVersion");
    if (str != null && str.equals(k)) {
      str = l.a("lastToken");
      if (str != null) {
        long l = Long.parseLong(str);
        if (System.currentTimeMillis() / 1000L - Long.valueOf(l).longValue() <= 604800L)
          return false; 
      } 
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */