import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bol {
  private static final String a = "com.facebook.internal.preferences.APP_SETTINGS";
  
  private static final String b = "com.facebook.internal.APP_SETTINGS.%s";
  
  private static final String c = "supports_implicit_sdk_logging";
  
  private static final String d = "gdpv4_nux_content";
  
  private static final String e = "gdpv4_nux_enabled";
  
  private static final String f = "gdpv4_chrome_custom_tabs_enabled";
  
  private static final String g = "android_dialog_configs";
  
  private static final String h = "android_sdk_error_categories";
  
  private static final String i = "app_events_session_timeout";
  
  private static final String j = "app_events_feature_bitmask";
  
  private static final int k = 8;
  
  private static final String l = "seamless_login";
  
  private static final String m = "smart_login_bookmark_icon_url";
  
  private static final String n = "smart_login_menu_icon_url";
  
  private static final String[] o = new String[] { 
      "supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "gdpv4_chrome_custom_tabs_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "seamless_login", "smart_login_bookmark_icon_url", 
      "smart_login_menu_icon_url" };
  
  private static final String p = "fields";
  
  private static Map<String, boj> q = new ConcurrentHashMap<String, boj>();
  
  private static AtomicBoolean r = new AtomicBoolean(false);
  
  public static boj a(String paramString) {
    return (paramString != null) ? q.get(paramString) : null;
  }
  
  public static boj a(String paramString, boolean paramBoolean) {
    if (!paramBoolean && q.containsKey(paramString))
      return q.get(paramString); 
    JSONObject jSONObject = c(paramString);
    return (jSONObject == null) ? null : b(paramString, jSONObject);
  }
  
  private static Map<String, Map<String, bok>> a(JSONObject paramJSONObject) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    if (paramJSONObject != null) {
      JSONArray jSONArray = paramJSONObject.optJSONArray("data");
      if (jSONArray != null)
        for (int i = 0; i < jSONArray.length(); i++) {
          bok bok = bok.a(jSONArray.optJSONObject(i));
          if (bok != null) {
            String str = bok.a();
            Map<Object, Object> map2 = (Map)hashMap.get(str);
            Map<Object, Object> map1 = map2;
            if (map2 == null) {
              map1 = new HashMap<Object, Object>();
              hashMap.put(str, map1);
            } 
            map1.put(bok.b(), bok);
          } 
        }  
    } 
    return (Map)hashMap;
  }
  
  public static void a() {
    Context context = bhv.h();
    String str1 = bhv.l();
    boolean bool = r.compareAndSet(false, true);
    if (bqq.a(str1) || q.containsKey(str1) || !bool)
      return; 
    String str2 = String.format("com.facebook.internal.APP_SETTINGS.%s", new Object[] { str1 });
    bhv.f().execute(new bom(context, str2, str1));
  }
  
  private static boj b(String paramString, JSONObject paramJSONObject) {
    bod bod;
    JSONArray jSONArray = paramJSONObject.optJSONArray("android_sdk_error_categories");
    if (jSONArray == null) {
      bod = bod.d();
    } else {
      bod = bod.a((JSONArray)bod);
    } 
    if ((paramJSONObject.optInt("app_events_feature_bitmask", 0) & 0x8) != 0) {
      boolean bool1 = true;
      boj = new boj(paramJSONObject.optBoolean("supports_implicit_sdk_logging", false), paramJSONObject.optString("gdpv4_nux_content", ""), paramJSONObject.optBoolean("gdpv4_nux_enabled", false), paramJSONObject.optBoolean("gdpv4_chrome_custom_tabs_enabled", false), paramJSONObject.optInt("app_events_session_timeout", bmb.a()), bqo.parseOptions(paramJSONObject.optLong("seamless_login")), a(paramJSONObject.optJSONObject("android_dialog_configs")), bool1, bod, paramJSONObject.optString("smart_login_bookmark_icon_url"), paramJSONObject.optString("smart_login_menu_icon_url"));
      q.put(paramString, boj);
      return boj;
    } 
    boolean bool = false;
    boj boj = new boj(boj.optBoolean("supports_implicit_sdk_logging", false), boj.optString("gdpv4_nux_content", ""), boj.optBoolean("gdpv4_nux_enabled", false), boj.optBoolean("gdpv4_chrome_custom_tabs_enabled", false), boj.optInt("app_events_session_timeout", bmb.a()), bqo.parseOptions(boj.optLong("seamless_login")), a(boj.optJSONObject("android_dialog_configs")), bool, bod, boj.optString("smart_login_bookmark_icon_url"), boj.optString("smart_login_menu_icon_url"));
    q.put(paramString, boj);
    return boj;
  }
  
  private static JSONObject c(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("fields", TextUtils.join(",", (Object[])o));
    GraphRequest graphRequest = GraphRequest.b(null, paramString, null);
    graphRequest.a(true);
    graphRequest.a(bundle);
    return graphRequest.m().b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */