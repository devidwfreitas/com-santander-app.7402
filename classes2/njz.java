import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;

public final class njz {
  private final Random a;
  
  private final Map<String, Object> b;
  
  private final SharedPreferences c;
  
  private final TelephonyManager d;
  
  private final WindowManager e;
  
  private final ConnectivityManager f;
  
  private final SimpleDateFormat g;
  
  private final SimpleDateFormat h;
  
  private final String i;
  
  private final boolean j;
  
  njz(nkj paramnkj) {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_0
    //   5: new java/security/SecureRandom
    //   8: dup
    //   9: invokespecial <init> : ()V
    //   12: putfield a : Ljava/util/Random;
    //   15: aload_1
    //   16: invokevirtual b : ()Landroid/app/Application;
    //   19: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   22: astore_3
    //   23: aload_0
    //   24: aload_3
    //   25: ldc 'phone'
    //   27: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   30: checkcast android/telephony/TelephonyManager
    //   33: putfield d : Landroid/telephony/TelephonyManager;
    //   36: aload_0
    //   37: aload_3
    //   38: ldc 'window'
    //   40: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   43: checkcast android/view/WindowManager
    //   46: putfield e : Landroid/view/WindowManager;
    //   49: aload_0
    //   50: aload_3
    //   51: ldc 'connectivity'
    //   53: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   56: checkcast android/net/ConnectivityManager
    //   59: putfield f : Landroid/net/ConnectivityManager;
    //   62: aload_0
    //   63: new java/text/SimpleDateFormat
    //   66: dup
    //   67: ldc 'yyyy-MM-dd'T'HH:mm:ss'Z''
    //   69: getstatic java/util/Locale.ROOT : Ljava/util/Locale;
    //   72: invokespecial <init> : (Ljava/lang/String;Ljava/util/Locale;)V
    //   75: putfield h : Ljava/text/SimpleDateFormat;
    //   78: aload_0
    //   79: getfield h : Ljava/text/SimpleDateFormat;
    //   82: ldc 'UTC'
    //   84: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   87: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   90: aload_0
    //   91: new java/text/SimpleDateFormat
    //   94: dup
    //   95: ldc 'yyyy-MM-dd'T'HH:mm:ss'
    //   97: getstatic java/util/Locale.ROOT : Ljava/util/Locale;
    //   100: invokespecial <init> : (Ljava/lang/String;Ljava/util/Locale;)V
    //   103: putfield g : Ljava/text/SimpleDateFormat;
    //   106: new java/util/concurrent/ConcurrentHashMap
    //   109: dup
    //   110: bipush #7
    //   112: invokespecial <init> : (I)V
    //   115: astore_2
    //   116: aload_0
    //   117: aload_2
    //   118: putfield b : Ljava/util/Map;
    //   121: aload_3
    //   122: aload_2
    //   123: invokestatic a : (Landroid/content/Context;Ljava/util/Map;)V
    //   126: aload_0
    //   127: getfield e : Landroid/view/WindowManager;
    //   130: astore_2
    //   131: aload_1
    //   132: invokestatic a : (Lnkj;)Landroid/content/SharedPreferences;
    //   135: astore_1
    //   136: aload_0
    //   137: aload_1
    //   138: putfield c : Landroid/content/SharedPreferences;
    //   141: aload_0
    //   142: aload_3
    //   143: aload_2
    //   144: aload_1
    //   145: invokespecial a : (Landroid/content/Context;Landroid/view/WindowManager;Landroid/content/SharedPreferences;)V
    //   148: aload_0
    //   149: getfield c : Landroid/content/SharedPreferences;
    //   152: ldc 'visitor_id'
    //   154: aconst_null
    //   155: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   160: astore_2
    //   161: aload_2
    //   162: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   165: ifne -> 179
    //   168: aload_2
    //   169: astore_1
    //   170: aload_2
    //   171: ldc '^[0-9a-f]+$'
    //   173: invokevirtual matches : (Ljava/lang/String;)Z
    //   176: ifne -> 267
    //   179: aload_0
    //   180: getfield c : Landroid/content/SharedPreferences;
    //   183: ldc 'uuid'
    //   185: ldc ''
    //   187: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   192: ldc '-'
    //   194: ldc ''
    //   196: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   199: getstatic java/util/Locale.ROOT : Ljava/util/Locale;
    //   202: invokevirtual toLowerCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   205: astore_2
    //   206: aload_2
    //   207: astore_1
    //   208: aload_2
    //   209: ldc '^[0-9a-f]+$'
    //   211: invokevirtual matches : (Ljava/lang/String;)Z
    //   214: ifne -> 237
    //   217: invokestatic randomUUID : ()Ljava/util/UUID;
    //   220: invokevirtual toString : ()Ljava/lang/String;
    //   223: ldc '-'
    //   225: ldc ''
    //   227: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   230: getstatic java/util/Locale.ROOT : Ljava/util/Locale;
    //   233: invokevirtual toLowerCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   236: astore_1
    //   237: aload_0
    //   238: getfield c : Landroid/content/SharedPreferences;
    //   241: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   246: ldc 'visitor_id'
    //   248: aload_1
    //   249: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   254: ldc 'tealium_visitor_id'
    //   256: aload_1
    //   257: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   262: invokeinterface apply : ()V
    //   267: aload_0
    //   268: aload_1
    //   269: putfield i : Ljava/lang/String;
    //   272: aload_0
    //   273: aload_3
    //   274: invokestatic b : (Landroid/content/Context;)Z
    //   277: putfield j : Z
    //   280: return
  }
  
  private static String a(ConnectivityManager paramConnectivityManager) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokevirtual getActiveNetworkInfo : ()Landroid/net/NetworkInfo;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull -> 55
    //   11: aload_2
    //   12: invokevirtual isConnectedOrConnecting : ()Z
    //   15: ifeq -> 55
    //   18: aload_2
    //   19: invokevirtual getType : ()I
    //   22: iconst_1
    //   23: if_icmpne -> 31
    //   26: ldc 'WIFI'
    //   28: astore_1
    //   29: aload_1
    //   30: areturn
    //   31: aload_2
    //   32: invokevirtual getType : ()I
    //   35: ifne -> 55
    //   38: aload_0
    //   39: invokevirtual getActiveNetworkInfo : ()Landroid/net/NetworkInfo;
    //   42: invokevirtual getSubtypeName : ()Ljava/lang/String;
    //   45: astore_0
    //   46: aload_0
    //   47: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   50: ifne -> 29
    //   53: aload_0
    //   54: areturn
    //   55: aconst_null
    //   56: astore_0
    //   57: goto -> 46
  }
  
  private static String a(WindowManager paramWindowManager) {
    switch (paramWindowManager.getDefaultDisplay().getRotation()) {
      default:
        return "Portrait";
      case 1:
        return "Landscape Right";
      case 2:
        return "Portrait UpsideDown";
      case 3:
        break;
    } 
    return "Landscape Left";
  }
  
  private static String a(String paramString) {
    return (paramString != null && paramString.length() >= 3) ? paramString.substring(0, 3) : null;
  }
  
  private void a(Context paramContext, WindowManager paramWindowManager, SharedPreferences paramSharedPreferences) {
    SharedPreferences.Editor editor = paramSharedPreferences.edit();
    if (!paramSharedPreferences.contains("device")) {
      String str1 = Build.MANUFACTURER;
      String str2 = Build.MODEL;
      if (str2.startsWith(str1)) {
        str1 = nis.a(str2);
      } else {
        str1 = nis.a(str1) + " " + str2;
      } 
      editor.putString("device", str1);
    } 
    if (!paramSharedPreferences.contains("device_architecture"))
      editor.putString("device_architecture", "32"); 
    if (!paramSharedPreferences.contains("device_cputype")) {
      String str = System.getProperty("os.arch", null);
      if (str != null)
        editor.putString("device_cputype", str); 
    } 
    if (!paramSharedPreferences.contains("device_resolution")) {
      String str = b(paramWindowManager);
      if (str != null)
        editor.putString("device_resolution", str); 
    } 
    if (!paramSharedPreferences.contains("origin")) {
      String str;
      if (nip.b(paramContext)) {
        str = "tv";
      } else {
        str = "mobile";
      } 
      editor.putString("origin", str);
    } 
    if (!paramSharedPreferences.contains("platform"))
      editor.putString("platform", "android"); 
    if (!paramSharedPreferences.contains("uuid")) {
      editor.putString("uuid", UUID.randomUUID().toString());
      editor.putString("app_uuid", UUID.randomUUID().toString());
    } 
    editor.apply();
  }
  
  private static void a(Context paramContext, Map<String, Object> paramMap) {
    String str2 = paramContext.getPackageName();
    ApplicationInfo applicationInfo = paramContext.getApplicationInfo();
    if (applicationInfo.labelRes != 0)
      paramMap.put("app_name", paramContext.getString(applicationInfo.labelRes)); 
    String str1 = nip.a(paramContext);
    if (str1 != null)
      paramMap.put("app_version", str1); 
    paramMap.put("app_rdns", str2);
    paramMap.put("device_os_version", Build.VERSION.RELEASE);
    paramMap.put("library_version", "5.2.0");
    paramMap.put("os_version", Build.VERSION.RELEASE);
    paramMap.put("tealium_library_name", "android");
    paramMap.put("tealium_library_version", "5.2.0");
    paramMap.put("tealium_session_id", Long.valueOf(System.currentTimeMillis()));
  }
  
  private void a(nil paramnil) {
    String str1 = a(this.f);
    String str2 = Locale.getDefault().getLanguage();
    Date date = new Date(paramnil.f());
    if (!this.j) {
      String str3 = this.d.getNetworkOperatorName();
      String str4 = this.d.getNetworkCountryIso();
      String str5 = this.d.getNetworkOperator();
      String str6 = a(this.e);
      paramnil.b("carrier", str3);
      paramnil.b("carrier_iso", str4);
      paramnil.b("carrier_mcc", a(str5));
      paramnil.b("carrier_mnc", b(str5));
      paramnil.b("orientation", str6);
      paramnil.b("device_orientation", str6);
    } 
    paramnil.b("connection_type", str1);
    paramnil.b("device_language", str2);
    paramnil.b("timestamp", this.h.format(date));
    paramnil.b("timestamp_local", this.g.format(date));
    paramnil.b("timestamp_offset", String.format(Locale.ROOT, "%.0f", new Object[] { Float.valueOf(TimeZone.getDefault().getOffset(paramnil.f()) / 3600000.0F) }));
    paramnil.b("timestamp_unix", Long.toString(paramnil.f() / 1000L));
    paramnil.b("tealium_timestamp_epoch", Long.toString(paramnil.f() / 1000L));
    paramnil.b("tealium_random", e());
  }
  
  private static String b(WindowManager paramWindowManager) {
    Display display = paramWindowManager.getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 13) {
      Point point = new Point();
      display.getSize(point);
      if (point.x > 0 && point.y > 0)
        return point.x + "x" + point.y; 
    } else {
      int i = display.getWidth();
      int j = display.getHeight();
      if (i > 0 && j > 0)
        return i + "x" + j; 
    } 
    return null;
  }
  
  private static String b(String paramString) {
    return (paramString != null && paramString.length() > 3) ? paramString.substring(3, paramString.length()) : null;
  }
  
  private String e() {
    long l = this.a.nextLong();
    return String.format(Locale.ROOT, "%016d", new Object[] { Long.valueOf(Math.abs(l % 10000000000000000L)) });
  }
  
  public Map<String, Object> a() {
    return this.b;
  }
  
  public SharedPreferences b() {
    return this.c;
  }
  
  public String c() {
    return this.i;
  }
  
  nji d() {
    return new nka(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */