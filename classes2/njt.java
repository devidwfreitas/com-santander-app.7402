import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

class njt extends njq {
  public njt() {
    super("_http", "Perform a native HTTP operation");
  }
  
  private String a(String paramString, JSONObject paramJSONObject) {
    paramJSONObject = paramJSONObject.optJSONObject("authenticate");
    if (paramJSONObject != null) {
      String str1 = paramJSONObject.optString("username");
      String str2 = paramJSONObject.optString("password");
      if (str1 != null && str2 != null) {
        String str;
        if (paramString.startsWith("http://")) {
          str = "http://";
        } else if (paramString.startsWith("https://")) {
          str = "https://";
        } else {
          throw new JSONException("Unsupported URL protocol.");
        } 
        try {
          return String.format(Locale.ROOT, "%s%s:%s@%s", new Object[] { str, URLEncoder.encode(str1, "UTF-8"), URLEncoder.encode(str2, "UTF-8"), paramString.substring(str.length()) });
        } catch (UnsupportedEncodingException unsupportedEncodingException) {
          return paramString;
        } 
      } 
    } 
    return paramString;
  }
  
  private void a(njr paramnjr, String paramString1, String paramString2) {
    (new Thread(new nju(this, paramString2, paramString1, paramnjr))).start();
  }
  
  private String b(String paramString, JSONObject paramJSONObject) {
    paramJSONObject = paramJSONObject.optJSONObject("parameters");
    if (paramJSONObject == null)
      return paramString; 
    Iterator<String> iterator = paramJSONObject.keys();
    StringBuilder stringBuilder = new StringBuilder();
    try {
      while (iterator.hasNext()) {
        String str1 = iterator.next();
        String str2 = paramJSONObject.get(str1).toString();
        if (stringBuilder.length() > 0)
          stringBuilder.append('&'); 
        stringBuilder.append(URLEncoder.encode(str1, "UTF-8")).append('=').append(URLEncoder.encode(str2, "UTF-8"));
      } 
      if (paramString.indexOf('?') > 0) {
        byte b1 = 38;
        stringBuilder.insert(0, b1);
        return stringBuilder.insert(0, paramString).toString();
      } 
      byte b = 63;
      stringBuilder.insert(0, b);
      return stringBuilder.insert(0, paramString).toString();
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      return paramString;
    } 
  }
  
  private static void b(njr paramnjr, HttpURLConnection paramHttpURLConnection) {
    JSONObject jSONObject = paramnjr.d().optJSONObject("headers");
    if (jSONObject != null) {
      Iterator<String> iterator = jSONObject.keys();
      while (true) {
        if (iterator.hasNext()) {
          String str = iterator.next();
          paramHttpURLConnection.setRequestProperty(str, jSONObject.optString(str, ""));
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static byte[] b(JSONObject paramJSONObject) {
    Charset charset = Charset.forName("UTF-8");
    Object object = paramJSONObject.opt("body");
    if (object instanceof JSONObject) {
      object = object;
      Iterator<String> iterator = object.keys();
      Uri.Builder builder = new Uri.Builder();
      while (iterator.hasNext()) {
        String str = iterator.next();
        builder.appendQueryParameter(str, object.optString(str, ""));
      } 
      return builder.build().getEncodedQuery().getBytes(charset);
    } 
    return (object instanceof String) ? URLEncoder.encode((String)object, "UTF-8").getBytes(charset) : ((object == null) ? new byte[0] : URLEncoder.encode(object.toString(), "UTF-8").getBytes(charset));
  }
  
  protected void a(njr paramnjr) {
    String str1 = paramnjr.d().optString("url", null);
    String str2 = paramnjr.d().optString("method", null);
    if (str1 == null || str2 == null) {
      paramnjr.a(400).a(String.format(Locale.ROOT, "Missing required keys \"%s\" or \"%s\".", new Object[] { "method", "url" })).g();
      return;
    } 
    a(paramnjr, b(a(str1, paramnjr.d()), paramnjr.d()), str2.toUpperCase(Locale.ROOT));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */