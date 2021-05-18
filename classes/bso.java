import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.login.LoginClient;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class bso {
  static final String A = "failure";
  
  static final String B = "com.facebook.katana";
  
  static final String a = "fb_mobile_login_method_start";
  
  static final String b = "fb_mobile_login_method_complete";
  
  static final String c = "fb_mobile_login_method_not_tried";
  
  static final String d = "skipped";
  
  static final String e = "fb_mobile_login_start";
  
  static final String f = "fb_mobile_login_complete";
  
  static final String g = "fb_mobile_login_status_start";
  
  static final String h = "fb_mobile_login_status_complete";
  
  static final String i = "0_auth_logger_id";
  
  static final String j = "1_timestamp_ms";
  
  static final String k = "2_result";
  
  static final String l = "3_method";
  
  static final String m = "4_error_code";
  
  static final String n = "5_error_message";
  
  static final String o = "6_extras";
  
  static final String p = "7_challenge";
  
  static final String q = "try_login_activity";
  
  static final String r = "no_internet_permission";
  
  static final String s = "not_tried";
  
  static final String t = "new_permissions";
  
  static final String u = "login_behavior";
  
  static final String v = "request_code";
  
  static final String w = "permissions";
  
  static final String x = "default_audience";
  
  static final String y = "isReauthorize";
  
  static final String z = "facebookVersion";
  
  private final bla C;
  
  private String D;
  
  private String E;
  
  public bso(Context paramContext, String paramString) {
    this.D = paramString;
    this.C = bla.c(paramContext, paramString);
    try {
      PackageManager packageManager = paramContext.getPackageManager();
      if (packageManager != null) {
        PackageInfo packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0);
        if (packageInfo != null)
          this.E = packageInfo.versionName; 
      } 
      return;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return;
    } 
  }
  
  static Bundle a(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
    bundle.putString("0_auth_logger_id", paramString);
    bundle.putString("3_method", "");
    bundle.putString("2_result", "");
    bundle.putString("5_error_message", "");
    bundle.putString("4_error_code", "");
    bundle.putString("6_extras", "");
    return bundle;
  }
  
  public String a() {
    return this.D;
  }
  
  public void a(LoginClient.Request paramRequest) {
    Bundle bundle = a(paramRequest.e());
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("login_behavior", paramRequest.b().toString());
      jSONObject.put("request_code", LoginClient.d());
      jSONObject.put("permissions", TextUtils.join(",", paramRequest.a()));
      jSONObject.put("default_audience", paramRequest.c().toString());
      jSONObject.put("isReauthorize", paramRequest.f());
      if (this.E != null)
        jSONObject.put("facebookVersion", this.E); 
      bundle.putString("6_extras", jSONObject.toString());
    } catch (JSONException jSONException) {}
    this.C.a("fb_mobile_login_start", (Double)null, bundle);
  }
  
  public void a(String paramString, Exception paramException) {
    Bundle bundle = a(paramString);
    bundle.putString("2_result", bsk.ERROR.getLoggingValue());
    bundle.putString("5_error_message", paramException.toString());
    this.C.a("fb_mobile_login_status_complete", (Double)null, bundle);
  }
  
  public void a(String paramString1, String paramString2) {
    Bundle bundle = a(paramString1);
    bundle.putString("3_method", paramString2);
    this.C.a("fb_mobile_login_method_start", (Double)null, bundle);
  }
  
  public void a(String paramString1, String paramString2, String paramString3) {
    Bundle bundle = a("");
    bundle.putString("2_result", bsk.ERROR.getLoggingValue());
    bundle.putString("5_error_message", paramString2);
    bundle.putString("3_method", paramString3);
    this.C.a(paramString1, (Double)null, bundle);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Map<String, String> paramMap) {
    Bundle bundle = a(paramString1);
    if (paramString3 != null)
      bundle.putString("2_result", paramString3); 
    if (paramString4 != null)
      bundle.putString("5_error_message", paramString4); 
    if (paramString5 != null)
      bundle.putString("4_error_code", paramString5); 
    if (paramMap != null && !paramMap.isEmpty())
      bundle.putString("6_extras", (new JSONObject(paramMap)).toString()); 
    bundle.putString("3_method", paramString2);
    this.C.a("fb_mobile_login_method_complete", (Double)null, bundle);
  }
  
  public void a(String paramString, Map<String, String> paramMap1, bsk parambsk, Map<String, String> paramMap2, Exception paramException) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic a : (Ljava/lang/String;)Landroid/os/Bundle;
    //   4: astore #6
    //   6: aload_3
    //   7: ifnull -> 21
    //   10: aload #6
    //   12: ldc '2_result'
    //   14: aload_3
    //   15: invokevirtual getLoggingValue : ()Ljava/lang/String;
    //   18: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   21: aload #5
    //   23: ifnull -> 46
    //   26: aload #5
    //   28: invokevirtual getMessage : ()Ljava/lang/String;
    //   31: ifnull -> 46
    //   34: aload #6
    //   36: ldc '5_error_message'
    //   38: aload #5
    //   40: invokevirtual getMessage : ()Ljava/lang/String;
    //   43: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload_2
    //   47: invokeinterface isEmpty : ()Z
    //   52: ifne -> 177
    //   55: new org/json/JSONObject
    //   58: dup
    //   59: aload_2
    //   60: invokespecial <init> : (Ljava/util/Map;)V
    //   63: astore_1
    //   64: aload_1
    //   65: astore_2
    //   66: aload #4
    //   68: ifnull -> 141
    //   71: aload_1
    //   72: ifnonnull -> 174
    //   75: new org/json/JSONObject
    //   78: dup
    //   79: invokespecial <init> : ()V
    //   82: astore_1
    //   83: aload #4
    //   85: invokeinterface entrySet : ()Ljava/util/Set;
    //   90: invokeinterface iterator : ()Ljava/util/Iterator;
    //   95: astore_2
    //   96: aload_2
    //   97: invokeinterface hasNext : ()Z
    //   102: ifeq -> 169
    //   105: aload_2
    //   106: invokeinterface next : ()Ljava/lang/Object;
    //   111: checkcast java/util/Map$Entry
    //   114: astore_3
    //   115: aload_1
    //   116: aload_3
    //   117: invokeinterface getKey : ()Ljava/lang/Object;
    //   122: checkcast java/lang/String
    //   125: aload_3
    //   126: invokeinterface getValue : ()Ljava/lang/Object;
    //   131: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   134: pop
    //   135: goto -> 96
    //   138: astore_2
    //   139: aload_1
    //   140: astore_2
    //   141: aload_2
    //   142: ifnull -> 156
    //   145: aload #6
    //   147: ldc '6_extras'
    //   149: aload_2
    //   150: invokevirtual toString : ()Ljava/lang/String;
    //   153: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload_0
    //   157: getfield C : Lbla;
    //   160: ldc 'fb_mobile_login_complete'
    //   162: aconst_null
    //   163: aload #6
    //   165: invokevirtual a : (Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    //   168: return
    //   169: aload_1
    //   170: astore_2
    //   171: goto -> 141
    //   174: goto -> 83
    //   177: aconst_null
    //   178: astore_1
    //   179: goto -> 64
    // Exception table:
    //   from	to	target	type
    //   83	96	138	org/json/JSONException
    //   96	135	138	org/json/JSONException
  }
  
  public void b(String paramString) {
    Bundle bundle = a(paramString);
    this.C.a("fb_mobile_login_status_start", (Double)null, bundle);
  }
  
  public void b(String paramString1, String paramString2) {
    Bundle bundle = a(paramString1);
    bundle.putString("3_method", paramString2);
    this.C.a("fb_mobile_login_method_not_tried", (Double)null, bundle);
  }
  
  public void c(String paramString) {
    Bundle bundle = a(paramString);
    bundle.putString("2_result", bsk.SUCCESS.getLoggingValue());
    this.C.a("fb_mobile_login_status_complete", (Double)null, bundle);
  }
  
  public void c(String paramString1, String paramString2) {
    a(paramString1, paramString2, "");
  }
  
  public void d(String paramString) {
    Bundle bundle = a(paramString);
    bundle.putString("2_result", "failure");
    this.C.a("fb_mobile_login_status_complete", (Double)null, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bso.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */