import android.annotation.TargetApi;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class bmo {
  public static final String a = "device_info";
  
  static final String b = "device";
  
  static final String c = "model";
  
  static final String d = "fbsdk";
  
  static final String e = "android";
  
  static final String f = "_fb._tcp.";
  
  private static HashMap<String, NsdManager.RegistrationListener> g = new HashMap<String, NsdManager.RegistrationListener>();
  
  public static String a() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("device", Build.DEVICE);
      jSONObject.put("model", Build.MODEL);
    } catch (JSONException jSONException) {}
    return jSONObject.toString();
  }
  
  public static boolean a(String paramString) {
    return b() ? c(paramString) : false;
  }
  
  public static void b(String paramString) {
    d(paramString);
  }
  
  public static boolean b() {
    return (Build.VERSION.SDK_INT >= 16 && bol.a(bhv.l()).g().contains(bqo.Enabled));
  }
  
  @TargetApi(16)
  private static boolean c(String paramString) {
    if (g.containsKey(paramString))
      return true; 
    String str = String.format("%s_%s_%s", new Object[] { "fbsdk", String.format("%s-%s", new Object[] { "android", bhv.j().replace('.', '|') }), paramString });
    NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
    nsdServiceInfo.setServiceType("_fb._tcp.");
    nsdServiceInfo.setServiceName(str);
    nsdServiceInfo.setPort(80);
    NsdManager nsdManager = (NsdManager)bhv.h().getSystemService("servicediscovery");
    bmp bmp = new bmp(str, paramString);
    g.put(paramString, bmp);
    nsdManager.registerService(nsdServiceInfo, 1, bmp);
    return true;
  }
  
  @TargetApi(16)
  private static void d(String paramString) {
    NsdManager.RegistrationListener registrationListener = g.get(paramString);
    if (registrationListener != null) {
      ((NsdManager)bhv.h().getSystemService("servicediscovery")).unregisterService(registrationListener);
      g.remove(paramString);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */