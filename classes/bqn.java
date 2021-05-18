import android.os.Bundle;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;

public final class bqn {
  public static final String A = "method_results";
  
  public static final String B = "version";
  
  public static final String C = "touch";
  
  public static final Collection<String> D;
  
  public static final Collection<String> E;
  
  public static final String F = "CONNECTION_FAILURE";
  
  private static final String G = bqn.class.getName();
  
  private static final String H = "m.%s";
  
  private static final String I = "https://graph-video.%s";
  
  private static final String J = "https://graph.%s";
  
  private static final String K = "v2.9";
  
  public static final String a = "dialog/";
  
  public static final String b = "access_token";
  
  public static final String c = "app_id";
  
  public static final String d = "auth_type";
  
  public static final String e = "client_id";
  
  public static final String f = "display";
  
  public static final String g = "touch";
  
  public static final String h = "e2e";
  
  public static final String i = "legacy_override";
  
  public static final String j = "redirect_uri";
  
  public static final String k = "response_type";
  
  public static final String l = "return_scopes";
  
  public static final String m = "scope";
  
  public static final String n = "sso";
  
  public static final String o = "default_audience";
  
  public static final String p = "sdk";
  
  public static final String q = "state";
  
  public static final String r = "rerequest";
  
  public static final String s = "token,signed_request";
  
  public static final String t = "true";
  
  public static final String u = "fbconnect://success";
  
  public static final String v = "fbconnect://cancel";
  
  public static final String w = "app_id";
  
  public static final String x = "bridge_args";
  
  public static final String y = "android_key_hash";
  
  public static final String z = "method_args";
  
  static {
    D = bqq.a(new String[] { "service_disabled", "AndroidAuthKillSwitchException" });
    E = bqq.a(new String[] { "access_denied", "OAuthAccessDeniedException" });
  }
  
  public static Bundle a(String paramString, int paramInt, Bundle paramBundle) {
    String str = bhv.d(bhv.h());
    if (!bqq.a(str)) {
      Bundle bundle2 = new Bundle();
      bundle2.putString("android_key_hash", str);
      bundle2.putString("app_id", bhv.l());
      bundle2.putInt("version", paramInt);
      bundle2.putString("display", "touch");
      Bundle bundle3 = new Bundle();
      bundle3.putString("action_id", paramString);
      Bundle bundle1 = paramBundle;
      if (paramBundle == null)
        bundle1 = new Bundle(); 
      try {
        JSONObject jSONObject2 = bna.a(bundle3);
        JSONObject jSONObject1 = bna.a(bundle1);
        if (jSONObject2 != null && jSONObject1 != null) {
          bundle2.putString("bridge_args", jSONObject2.toString());
          bundle2.putString("method_args", jSONObject1.toString());
          return bundle2;
        } 
      } catch (JSONException jSONException) {
        bpu.a(bjb.DEVELOPER_ERRORS, 6, G, "Error creating Url -- " + jSONException);
        jSONException = null;
      } 
    } 
    return null;
  }
  
  public static final String a() {
    return String.format("m.%s", new Object[] { bhv.g() });
  }
  
  public static final String b() {
    return String.format("https://graph.%s", new Object[] { bhv.g() });
  }
  
  public static final String c() {
    return String.format("https://graph-video.%s", new Object[] { bhv.g() });
  }
  
  public static final String d() {
    return "v2.9";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */