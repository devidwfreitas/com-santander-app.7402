import android.net.Uri;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class bml implements ep {
  private static final String a = "app_links";
  
  private static final String b = "android";
  
  private static final String c = "web";
  
  private static final String d = "package";
  
  private static final String e = "class";
  
  private static final String f = "app_name";
  
  private static final String g = "url";
  
  private static final String h = "should_fallback";
  
  private final HashMap<Uri, ek> i = new HashMap<Uri, ek>();
  
  private static String a(JSONObject paramJSONObject, String paramString1, String paramString2) {
    try {
      return paramJSONObject.getString(paramString1);
    } catch (JSONException jSONException) {
      return paramString2;
    } 
  }
  
  private static boolean a(JSONObject paramJSONObject, String paramString, boolean paramBoolean) {
    try {
      return paramJSONObject.getBoolean(paramString);
    } catch (JSONException jSONException) {
      return paramBoolean;
    } 
  }
  
  private static Uri b(Uri paramUri, JSONObject paramJSONObject) {
    JSONObject jSONObject = null;
    try {
      Uri uri;
      paramJSONObject = paramJSONObject.getJSONObject("web");
      if (!a(paramJSONObject, "should_fallback", true))
        return null; 
      String str = a(paramJSONObject, "url", (String)null);
      paramJSONObject = jSONObject;
      if (str != null)
        uri = Uri.parse(str); 
      if (uri != null)
        return uri; 
    } catch (JSONException jSONException) {}
    return paramUri;
  }
  
  private static el b(JSONObject paramJSONObject) {
    Uri uri;
    JSONObject jSONObject = null;
    String str1 = a(paramJSONObject, "package", (String)null);
    if (str1 == null)
      return null; 
    String str2 = a(paramJSONObject, "class", (String)null);
    String str3 = a(paramJSONObject, "app_name", (String)null);
    String str4 = a(paramJSONObject, "url", (String)null);
    paramJSONObject = jSONObject;
    if (str4 != null)
      uri = Uri.parse(str4); 
    return new el(str1, str2, uri, str3);
  }
  
  public fd<ek> a(Uri paramUri) {
    ArrayList<Uri> arrayList = new ArrayList();
    arrayList.add(paramUri);
    return a(arrayList).c(new bmm(this, paramUri));
  }
  
  public fd<Map<Uri, ek>> a(List<Uri> paramList) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    HashSet<Uri> hashSet = new HashSet();
    StringBuilder stringBuilder = new StringBuilder();
    for (Uri uri : paramList) {
      synchronized (this.i) {
        ek ek = this.i.get(uri);
        if (ek != null) {
          hashMap.put(uri, ek);
          continue;
        } 
      } 
      if (!hashSet.isEmpty())
        stringBuilder.append(','); 
      stringBuilder.append(uri.toString());
      hashSet.add(uri);
    } 
    if (hashSet.isEmpty())
      return fd.a(hashMap); 
    fu fu = fd.b();
    Bundle bundle = new Bundle();
    bundle.putString("ids", stringBuilder.toString());
    bundle.putString("fields", String.format("%s.fields(%s,%s)", new Object[] { "app_links", "android", "web" }));
    (new GraphRequest(AccessToken.a(), "", bundle, null, new bmn(this, fu, hashMap, hashSet))).n();
    return fu.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */