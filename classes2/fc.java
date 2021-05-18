import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class fc {
  public static final String a = "com.parse.bolts.measurement_event";
  
  public static final String b = "event_name";
  
  public static final String c = "event_args";
  
  public static final String d = "al_nav_out";
  
  public static final String e = "al_nav_in";
  
  private Context f;
  
  private String g;
  
  private Bundle h;
  
  private fc(Context paramContext, String paramString, Bundle paramBundle) {
    this.f = paramContext.getApplicationContext();
    this.g = paramString;
    this.h = paramBundle;
  }
  
  private static Bundle a(Context paramContext, String paramString, Bundle paramBundle, Intent paramIntent) {
    Bundle bundle = new Bundle();
    ComponentName componentName = paramIntent.resolveActivity(paramContext.getPackageManager());
    if (componentName != null)
      bundle.putString("class", componentName.getShortClassName()); 
    if ("al_nav_out".equals(paramString)) {
      if (componentName != null)
        bundle.putString("package", componentName.getPackageName()); 
      if (paramIntent.getData() != null)
        bundle.putString("outputURL", paramIntent.getData().toString()); 
      if (paramIntent.getScheme() != null)
        bundle.putString("outputURLScheme", paramIntent.getScheme()); 
    } else if ("al_nav_in".equals(paramString)) {
      if (paramIntent.getData() != null)
        bundle.putString("inputURL", paramIntent.getData().toString()); 
      if (paramIntent.getScheme() != null)
        bundle.putString("inputURLScheme", paramIntent.getScheme()); 
    } 
    for (String paramString : paramBundle.keySet()) {
      Uri uri;
      Object object = paramBundle.get(paramString);
      if (object instanceof Bundle) {
        for (String str1 : ((Bundle)object).keySet()) {
          String str2 = a(((Bundle)object).get(str1));
          if (paramString.equals("referer_app_link")) {
            if (str1.equalsIgnoreCase("url")) {
              bundle.putString("refererURL", str2);
              continue;
            } 
            if (str1.equalsIgnoreCase("app_name")) {
              bundle.putString("refererAppName", str2);
              continue;
            } 
            if (str1.equalsIgnoreCase("package")) {
              bundle.putString("sourceApplication", str2);
              continue;
            } 
          } 
          bundle.putString(paramString + "/" + str1, str2);
        } 
        continue;
      } 
      object = a(object);
      if (paramString.equals("target_url")) {
        uri = Uri.parse((String)object);
        bundle.putString("targetURL", uri.toString());
        bundle.putString("targetURLHost", uri.getHost());
        continue;
      } 
      bundle.putString((String)uri, (String)object);
    } 
    return bundle;
  }
  
  private static String a(Object paramObject) {
    if (paramObject == null)
      return null; 
    if (paramObject instanceof JSONArray || paramObject instanceof JSONObject)
      return paramObject.toString(); 
    try {
      return (paramObject instanceof Collection) ? (new JSONArray((Collection)paramObject)).toString() : ((paramObject instanceof Map) ? (new JSONObject((Map)paramObject)).toString() : paramObject.toString());
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private void a() {
    if (this.g == null)
      Log.d(getClass().getName(), "Event name is required"); 
    try {
      Class<?> clazz = Class.forName("android.support.v4.content.LocalBroadcastManager");
      Method method2 = clazz.getMethod("getInstance", new Class[] { Context.class });
      Method method1 = clazz.getMethod("sendBroadcast", new Class[] { Intent.class });
      Object object = method2.invoke(null, new Object[] { this.f });
      Intent intent = new Intent("com.parse.bolts.measurement_event");
      intent.putExtra("event_name", this.g);
      intent.putExtra("event_args", this.h);
      method1.invoke(object, new Object[] { intent });
      return;
    } catch (Exception exception) {
      Log.d(getClass().getName(), "LocalBroadcastManager in android support library is required to raise bolts event.");
      return;
    } 
  }
  
  static void a(Context paramContext, String paramString, Intent paramIntent, Map<String, String> paramMap) {
    Bundle bundle2 = new Bundle();
    if (paramIntent != null) {
      Bundle bundle3;
      Bundle bundle4 = eq.a(paramIntent);
      if (bundle4 != null) {
        bundle3 = a(paramContext, paramString, bundle4, paramIntent);
      } else {
        Uri uri = bundle3.getData();
        if (uri != null)
          bundle2.putString("intentData", uri.toString()); 
        bundle3 = bundle3.getExtras();
        if (bundle3 != null)
          for (String str : bundle3.keySet())
            bundle2.putString(str, a(bundle3.get(str)));  
        bundle3 = bundle2;
      } 
      if (paramMap != null)
        for (String str : paramMap.keySet())
          bundle3.putString(str, paramMap.get(str));  
      (new fc(paramContext, paramString, bundle3)).a();
      return;
    } 
    Bundle bundle1 = bundle2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */