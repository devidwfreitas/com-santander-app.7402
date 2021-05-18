import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONObject;

public class ef {
  public static int a(boolean paramBoolean) {
    return paramBoolean ? 1 : 0;
  }
  
  private static String a() {
    return "android.hardware.telephony.gsm";
  }
  
  public static String a(Context paramContext) {
    try {
      return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    } catch (Exception exception) {
      exception.printStackTrace();
      return "";
    } 
  }
  
  private static String b() {
    return "android.hardware.telephony.cdma";
  }
  
  public static String b(Context paramContext) {
    try {
      AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(paramContext.getApplicationContext());
      boolean bool = info.isLimitAdTrackingEnabled();
      return bool ? "" : info.getId();
    } catch (Exception exception) {
      try {
        exception.printStackTrace();
        return "";
      } catch (Exception exception1) {
        exception1.printStackTrace();
        return "";
      } 
    } 
  }
  
  private static String c() {
    return "android.hardware.telephony";
  }
  
  static JSONObject c(Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("a", a(paramContext));
      jSONObject.put("b", b(paramContext));
      jSONObject.put("c", d(paramContext));
      return jSONObject;
    } catch (Exception exception) {
      exception.printStackTrace();
      return jSONObject;
    } 
  }
  
  private static String d() {
    return "android.hardware.camera.external";
  }
  
  private static String d(Context paramContext) {
    String str1;
    try {
      str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    } catch (Exception exception) {
      exception.printStackTrace();
      str1 = "";
    } 
    String str2 = str1;
    if (str1 == null)
      str2 = ""; 
    return str2;
  }
  
  private static String e() {
    return "android.hardware.fingerprint";
  }
  
  private static JSONObject e(Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject1 = new JSONObject();
      jSONObject1.put("a", q());
      jSONObject1.put("b", p());
      jSONObject1.put("c", o());
      jSONObject1.put("d", n());
      PackageManager packageManager = paramContext.getPackageManager();
      JSONObject jSONObject2 = new JSONObject();
      jSONObject2.put("a", a(packageManager.hasSystemFeature(m())));
      jSONObject2.put("b", a(packageManager.hasSystemFeature(l())));
      jSONObject2.put("c", a(packageManager.hasSystemFeature(k())));
      jSONObject2.put("d", a(packageManager.hasSystemFeature(j())));
      jSONObject.put("b", jSONObject2);
      jSONObject2 = new JSONObject();
      jSONObject2.put("a", a(packageManager.hasSystemFeature(i())));
      jSONObject2.put("b", a(packageManager.hasSystemFeature(h())));
      jSONObject.put("c", jSONObject2);
      jSONObject2 = new JSONObject();
      jSONObject2.put("a", a(packageManager.hasSystemFeature(g())));
      jSONObject2.put("b", a(packageManager.hasSystemFeature(f())));
      jSONObject2.put("c", a(packageManager.hasSystemFeature(e())));
      jSONObject2.put("d", a(packageManager.hasSystemFeature(d())));
      jSONObject.put("d", jSONObject2);
      jSONObject2 = new JSONObject();
      jSONObject2.put("a", a(packageManager.hasSystemFeature(c())));
      jSONObject2.put("b", a(packageManager.hasSystemFeature(b())));
      jSONObject2.put("c", a(packageManager.hasSystemFeature(a())));
      jSONObject.put("e", jSONObject2);
      new JSONObject();
      jSONObject.put("a", jSONObject1);
      return jSONObject;
    } catch (Exception exception) {
      exception.printStackTrace();
      return jSONObject;
    } 
  }
  
  private static String f() {
    return "android.hardware.camera.front";
  }
  
  private static String g() {
    return "android.hardware.camera.flash";
  }
  
  private static String h() {
    return "android.hardware.camera.capability.manual_sensor";
  }
  
  private static String i() {
    return "android.hardware.camera.capability.manual_post_processing";
  }
  
  private static String j() {
    return "android.hardware.camera.autofocus";
  }
  
  private static String k() {
    return "android.hardware.camera";
  }
  
  private static String l() {
    return "android.hardware.bluetooth_le";
  }
  
  private static String m() {
    return "android.hardware.bluetooth";
  }
  
  private static String n() {
    return Build.BOARD;
  }
  
  private static String o() {
    return Build.BRAND;
  }
  
  private static String p() {
    return Build.MANUFACTURER;
  }
  
  private static String q() {
    return Build.MODEL;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */