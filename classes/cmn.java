import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@TargetApi(4)
public class cmn {
  private static final Map<String, String> a = new HashMap<String, String>();
  
  private static boolean b = false;
  
  private static long c = -1L;
  
  private static boolean d = true;
  
  private static boolean e = false;
  
  private static final Object f = new Object();
  
  private static cmh g = null;
  
  private static boolean h = false;
  
  static long a() {
    return (b && c >= 0L) ? c : System.currentTimeMillis();
  }
  
  public static cmh a(Context paramContext) {
    synchronized (f) {
      if (g == null)
        g = new cmh(paramContext); 
      return g;
    } 
  }
  
  public static cmq a(Context paramContext, String paramString) {
    Map<String, String> map;
    String str;
    synchronized (a) {
      String str1 = a.get(paramString);
      str = str1;
      if (str1 == null)
        str = paramContext.getSharedPreferences("google_conversion_click_referrer", 0).getString(paramString, ""); 
      return cmq.a(str);
    } 
  }
  
  public static cmr a(Uri paramUri) {
    if (paramUri == null)
      return null; 
    String str2 = paramUri.getQueryParameter("referrer");
    if (TextUtils.isEmpty(str2))
      return null; 
    str2 = String.valueOf(str2);
    if (str2.length() != 0) {
      str2 = "http://hostname/?".concat(str2);
    } else {
      str2 = new String("http://hostname/?");
    } 
    Uri uri = Uri.parse(str2);
    String str4 = uri.getQueryParameter("conv");
    String str5 = uri.getQueryParameter("gclid");
    if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5))
      return null; 
    String str3 = uri.getQueryParameter("ai");
    String str1 = str3;
    if (str3 == null)
      str1 = ""; 
    return new cmr(str4, new cmq(str5, str1));
  }
  
  public static <T> T a(T paramT) {
    if (paramT == null)
      throw new NullPointerException(); 
    return paramT;
  }
  
  static String a(long paramLong) {
    return String.format(Locale.US, "%d.%03d", new Object[] { Long.valueOf(paramLong / 1000L), Long.valueOf(paramLong % 1000L) });
  }
  
  public static String a(Context paramContext, cms paramcms) {
    return a(paramContext, paramcms, (new cma(paramContext)).a());
  }
  
  public static String a(Context paramContext, cms paramcms, cmx paramcmx) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getPackageName : ()Ljava/lang/String;
    //   4: astore #5
    //   6: ldc ''
    //   8: astore_3
    //   9: aload_0
    //   10: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   13: aload #5
    //   15: iconst_0
    //   16: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   19: getfield versionName : Ljava/lang/String;
    //   22: astore #4
    //   24: aload #4
    //   26: astore_3
    //   27: aconst_null
    //   28: astore #4
    //   30: aload_2
    //   31: ifnonnull -> 40
    //   34: aload_0
    //   35: invokestatic e : (Landroid/content/Context;)Ljava/lang/String;
    //   38: astore #4
    //   40: aload_1
    //   41: invokestatic a : (Lcms;)Z
    //   44: ifne -> 83
    //   47: aload_1
    //   48: invokestatic b : (Lcms;)Lcmt;
    //   51: getstatic cmt.b : Lcmt;
    //   54: if_acmpne -> 83
    //   57: aload_1
    //   58: aload #5
    //   60: aload_3
    //   61: aload_2
    //   62: aload #4
    //   64: invokestatic a : (Lcms;Ljava/lang/String;Ljava/lang/String;Lcmx;Ljava/lang/String;)Ljava/lang/String;
    //   67: areturn
    //   68: astore #4
    //   70: ldc 'GoogleConversionReporter'
    //   72: ldc 'Error to retrieve app version'
    //   74: aload #4
    //   76: invokestatic w : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   79: pop
    //   80: goto -> 27
    //   83: aload_1
    //   84: invokestatic b : (Lcms;)Lcmt;
    //   87: getstatic cmt.a : Lcmt;
    //   90: if_acmpne -> 99
    //   93: aload_1
    //   94: aload_2
    //   95: invokestatic a : (Lcms;Lcmx;)Ljava/lang/String;
    //   98: areturn
    //   99: aload_1
    //   100: invokestatic b : (Lcms;)Lcmt;
    //   103: getstatic cmt.d : Lcmt;
    //   106: if_acmpne -> 120
    //   109: aload_1
    //   110: aload #5
    //   112: aload_3
    //   113: aload_2
    //   114: aload #4
    //   116: invokestatic c : (Lcms;Ljava/lang/String;Ljava/lang/String;Lcmx;Ljava/lang/String;)Ljava/lang/String;
    //   119: areturn
    //   120: aload_1
    //   121: aload #5
    //   123: aload_3
    //   124: aload_2
    //   125: aload #4
    //   127: invokestatic b : (Lcms;Ljava/lang/String;Ljava/lang/String;Lcmx;Ljava/lang/String;)Ljava/lang/String;
    //   130: areturn
    // Exception table:
    //   from	to	target	type
    //   9	24	68	android/content/pm/PackageManager$NameNotFoundException
  }
  
  public static String a(cmq paramcmq) {
    if (paramcmq == null)
      return ""; 
    if (TextUtils.isEmpty(cmq.a(paramcmq))) {
      String str = String.valueOf("&gclid=");
      str1 = String.valueOf(cmq.b(paramcmq));
      return (str1.length() != 0) ? str.concat(str1) : new String(str);
    } 
    String str2 = String.valueOf("&gclid=");
    String str3 = cmq.b((cmq)str1);
    String str4 = String.valueOf("ai");
    String str1 = cmq.a((cmq)str1);
    return (new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str1).length())).append(str2).append(str3).append("&").append(str4).append("=").append(str1).toString();
  }
  
  public static String a(cms paramcms) {
    switch (cmp.a[cms.b(paramcms).ordinal()]) {
      default:
        return "google_nonrepeatable_conversion";
      case 1:
        return "doubleclick_nonrepeatable_conversion";
      case 2:
        break;
    } 
    return "iap_nonrepeatable_conversion";
  }
  
  public static String a(cms paramcms, cmx paramcmx) {
    if (paramcmx == null)
      return null; 
    String str1 = String.valueOf("https://pubads.g.doubleclick.net/activity;dc_iu=");
    String str2 = String.valueOf(cms.d(paramcms));
    if (str2.length() != 0) {
      str1 = str1.concat(str2);
    } else {
      str1 = new String(str1);
    } 
    StringBuilder stringBuilder = new StringBuilder(str1);
    a(stringBuilder, paramcmx, (String)null);
    if (cms.e(paramcms) != null)
      for (Map.Entry entry : cms.e(paramcms).entrySet()) {
        String str3 = Uri.encode((String)entry.getKey());
        String str4 = Uri.encode(entry.getValue().toString());
        stringBuilder.append((new StringBuilder(String.valueOf(str3).length() + 2 + String.valueOf(str4).length())).append(";").append(str3).append("=").append(str4).toString());
      }  
    return stringBuilder.toString();
  }
  
  public static String a(cms paramcms, String paramString1, String paramString2, cmx paramcmx, String paramString3) {
    String str2 = String.valueOf("https://pubads.g.doubleclick.net/activity;xsp=");
    String str1 = cms.c(paramcms);
    String str3 = String.valueOf("ait");
    String str4 = String.valueOf("bundleid");
    String str5 = String.valueOf("appversion");
    String str6 = String.valueOf("osversion");
    String str7 = String.valueOf(Build.VERSION.RELEASE);
    String str8 = String.valueOf("sdkversion");
    String str9 = String.valueOf("ct-sdk-a-v2.2.4");
    String str10 = String.valueOf("timestamp");
    String str11 = a(a());
    StringBuilder stringBuilder = new StringBuilder((new StringBuilder(String.valueOf(str2).length() + 13 + String.valueOf(str1).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(paramString1).length() + String.valueOf(str5).length() + String.valueOf(paramString2).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str11).length())).append(str2).append(str1).append(";").append(str3).append("=").append("1").append(";").append(str4).append("=").append(paramString1).append(";").append(str5).append("=").append(paramString2).append(";").append(str6).append("=").append(str7).append(";").append(str8).append("=").append(str9).append(";").append(str10).append("=").append(str11).toString());
    a(stringBuilder, paramcmx, paramString3);
    return stringBuilder.toString();
  }
  
  private static String a(cmx paramcmx) {
    return (paramcmx == null) ? null : (paramcmx.b() ? "1" : "0");
  }
  
  public static String a(String paramString) {
    if (((String)a(paramString)).length() == 0)
      throw new IllegalStateException("Parameter cannot be empty string"); 
    return paramString;
  }
  
  private static List<String> a(SharedPreferences paramSharedPreferences) {
    ArrayList<String> arrayList = new ArrayList();
    for (Map.Entry entry : paramSharedPreferences.getAll().entrySet()) {
      if (cmq.a((String)entry.getValue()) == null)
        arrayList.add(entry.getKey()); 
    } 
    return arrayList;
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences(paramString1, 0).edit();
    editor.putBoolean(paramString2, true);
    editor.commit();
  }
  
  private static void a(Uri.Builder paramBuilder, cmx paramcmx, String paramString) {
    if (a(paramcmx) != null)
      paramBuilder.appendQueryParameter("lat", a(paramcmx)); 
    if (paramcmx != null) {
      paramBuilder.appendQueryParameter("rdid", paramcmx.a());
      return;
    } 
    paramBuilder.appendQueryParameter("muid", paramString);
  }
  
  private static void a(Uri.Builder paramBuilder, boolean paramBoolean, Map<String, ?> paramMap) {
    if (paramBoolean && paramMap != null)
      for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
        if (entry.getValue() instanceof String) {
          String str1 = String.valueOf("data.");
          String str2 = String.valueOf(entry.getKey());
          if (str2.length() != 0) {
            str1 = str1.concat(str2);
          } else {
            str1 = new String(str1);
          } 
          paramBuilder.appendQueryParameter(str1, (String)entry.getValue());
          continue;
        } 
        if (entry.getValue() instanceof String[])
          for (String str2 : (String[])entry.getValue()) {
            String str1 = String.valueOf("data.");
            String str3 = String.valueOf(entry.getKey());
            if (str3.length() != 0) {
              str1 = str1.concat(str3);
            } else {
              str1 = new String(str1);
            } 
            paramBuilder.appendQueryParameter(str1, str2);
          }  
      }  
  }
  
  private static void a(StringBuilder paramStringBuilder, cmx paramcmx, String paramString) {
    String str2 = a(paramcmx);
    if (str2 != null) {
      String str = String.valueOf(";dc_lat=");
      str2 = String.valueOf(str2);
      if (str2.length() != 0) {
        str = str.concat(str2);
      } else {
        str = new String(str);
      } 
      paramStringBuilder.append(str);
    } 
    if (paramcmx == null) {
      str1 = String.valueOf(";isu=");
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        str1 = str1.concat(paramString);
      } else {
        str1 = new String(str1);
      } 
      paramStringBuilder.append(str1);
      return;
    } 
    paramString = String.valueOf(";dc_rdid=");
    String str1 = String.valueOf(str1.a());
    if (str1.length() != 0) {
      str1 = paramString.concat(str1);
    } else {
      str1 = new String(paramString);
    } 
    paramStringBuilder.append(str1);
  }
  
  public static boolean a(Context paramContext, cmr paramcmr) {
    if (paramcmr != null) {
      SharedPreferences sharedPreferences = paramContext.getSharedPreferences("google_conversion_click_referrer", 0);
      List<String> list = a(sharedPreferences);
      if (sharedPreferences.getString(cmr.a(paramcmr), null) != null || sharedPreferences.getAll().size() != 100 || !list.isEmpty()) {
        String str1 = cmq.b(cmr.b(paramcmr));
        String str2 = String.valueOf(" ");
        String str3 = cmq.a(cmr.b(paramcmr));
        str4 = String.valueOf(" ");
        long l = cmq.c(cmr.b(paramcmr));
        str2 = (new StringBuilder(String.valueOf(str1).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length())).append(str1).append(str2).append(str3).append(str4).append(l).toString();
        synchronized (a) {
          for (String str4 : list)
            a.remove(str4); 
        } 
        a.put(cmr.a(paramcmr), str2);
        /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/String}, name=null} */
        (new Thread(new cmo(sharedPreferences, list, paramcmr, str2))).start();
        return true;
      } 
    } 
    return false;
  }
  
  public static boolean a(Context paramContext, cms paramcms, boolean paramBoolean) {
    return a(paramContext, a(paramcms), b(paramcms), paramBoolean);
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
    boolean bool = true;
    if (b && e)
      return d; 
    if (!paramBoolean) {
      paramBoolean = paramContext.getSharedPreferences(paramString1, 0).getBoolean(paramString2, false);
      if (paramBoolean) {
        String str = String.valueOf(paramString2);
        if (str.length() != 0) {
          str = "Already sent ping for conversion ".concat(str);
        } else {
          str = new String("Already sent ping for conversion ");
        } 
        Log.i("GoogleConversionReporter", str);
      } 
      return !paramBoolean;
    } 
    return bool;
  }
  
  public static long b(Context paramContext) {
    return paramContext.getSharedPreferences("google_conversion", 0).getLong("last_retry_time", 0L);
  }
  
  public static String b(cms paramcms) {
    switch (cmp.a[cms.b(paramcms).ordinal()]) {
      default:
        return cms.g(paramcms);
      case 1:
        return cms.c(paramcms);
      case 2:
        break;
    } 
    return String.format("google_iap_ping:%s", new Object[] { cms.l(paramcms) });
  }
  
  public static String b(cms paramcms, String paramString1, String paramString2, cmx paramcmx, String paramString3) {
    String str2 = a(cms.f(paramcms));
    Uri.Builder builder2 = Uri.parse("https://www.googleadservices.com/pagead/conversion/").buildUpon().appendEncodedPath(String.valueOf(cms.c(paramcms)).concat("/")).appendQueryParameter("bundleid", paramString1).appendQueryParameter("appversion", paramString2).appendQueryParameter("osversion", Build.VERSION.RELEASE).appendQueryParameter("sdkversion", "ct-sdk-a-v2.2.4");
    if (paramcmx != null) {
      paramString1 = "1";
    } else {
      paramString1 = "0";
    } 
    Uri.Builder builder1 = builder2.appendQueryParameter("gms", paramString1);
    a(builder1, paramcmx, paramString3);
    if (cms.g(paramcms) != null && cms.d(paramcms) != null)
      builder1.appendQueryParameter("label", cms.g(paramcms)).appendQueryParameter("value", cms.d(paramcms)); 
    if (cms.h(paramcms) != 0L) {
      builder1.appendQueryParameter("timestamp", a(cms.h(paramcms)));
    } else {
      builder1.appendQueryParameter("timestamp", a(a()));
    } 
    if (cms.a(paramcms))
      builder1.appendQueryParameter("remarketing_only", "1"); 
    if (cms.i(paramcms))
      builder1.appendQueryParameter("auto", "1"); 
    if (cms.j(paramcms)) {
      builder1.appendQueryParameter("usage_tracking_enabled", "1");
    } else {
      builder1.appendQueryParameter("usage_tracking_enabled", "0");
    } 
    if (cms.k(paramcms) != null)
      builder1.appendQueryParameter("currency_code", cms.k(paramcms)); 
    a(builder1, cms.a(paramcms), cms.e(paramcms));
    String str1 = String.valueOf(builder1.build());
    return (new StringBuilder(String.valueOf(str1).length() + 0 + String.valueOf(str2).length())).append(str1).append(str2).toString();
  }
  
  public static String c(cms paramcms, String paramString1, String paramString2, cmx paramcmx, String paramString3) {
    Uri.Builder builder = Uri.parse("https://www.googleadservices.com/pagead/conversion/").buildUpon().appendQueryParameter("sku", cms.l(paramcms)).appendQueryParameter("value", cms.d(paramcms)).appendQueryParameter("bundleid", paramString1).appendQueryParameter("appversion", paramString2).appendQueryParameter("osversion", Build.VERSION.RELEASE).appendQueryParameter("sdkversion", "ct-sdk-a-v2.2.4").appendQueryParameter("timestamp", a(a()));
    a(builder, paramcmx, paramString3);
    return builder.build().toString();
  }
  
  public static void c(Context paramContext) {
    SharedPreferences.Editor editor = paramContext.getSharedPreferences("google_conversion", 0).edit();
    editor.putLong("last_retry_time", a());
    editor.commit();
  }
  
  public static boolean d(Context paramContext) {
    if (b)
      return h; 
    ConnectivityManager connectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (connectivityManager != null) {
      NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
      if (networkInfo == null || !networkInfo.isConnected())
        return false; 
    } 
    return true;
  }
  
  private static String e(Context paramContext) {
    String str2 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    String str1 = str2;
    if (str2 == null)
      str1 = "null"; 
    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
    messageDigest.update(str1.getBytes());
    return cni.a(messageDigest.digest(), false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */