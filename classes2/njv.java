import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Locale;
import org.json.JSONObject;

final class njv {
  private final String a;
  
  private final njr b;
  
  njv(nhp paramnhp, String paramString) {
    if (!njx.a(paramString))
      throw new IllegalArgumentException("Given url must not be null."); 
    int i = paramString.indexOf("?request=");
    if (i == -1) {
      this.a = paramString.substring("tealium://".length()).toLowerCase(Locale.ROOT);
      paramString = null;
    } else {
      JSONObject jSONObject3;
      String str;
      JSONObject jSONObject4;
      this.a = paramString.substring("tealium://".length(), i).toLowerCase(Locale.ROOT);
      paramString = paramString.substring(i + "?request=".length());
      try {
        paramString = URLDecoder.decode(paramString, "UTF-8");
        if (paramString.length() == 0) {
          jSONObject3 = new JSONObject();
        } else {
          jSONObject3 = new JSONObject((String)jSONObject3);
        } 
        if (!njq.a(this.a))
          throw new IllegalArgumentException("The command id provided by the request is not a valid command id."); 
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        throw new RuntimeException(unsupportedEncodingException);
      } 
      if (jSONObject3 == null) {
        jSONObject3 = null;
      } else {
        String str1;
        jSONObject1 = jSONObject3.optJSONObject("config");
        if (jSONObject1 == null) {
          jSONObject1 = jSONObject2;
        } else {
          str1 = jSONObject1.optString("response_id", null);
        } 
        jSONObject2 = jSONObject3.optJSONObject("payload");
        str = str1;
        jSONObject4 = jSONObject2;
      } 
      this.b = a((nhp)unsupportedEncodingException, this.a, str, jSONObject4);
      return;
    } 
    if (!njq.a(this.a))
      throw new IllegalArgumentException("The command id provided by the request is not a valid command id."); 
  }
  
  static njr a(nhp paramnhp, String paramString1, String paramString2, JSONObject paramJSONObject) {
    return new njw(paramString1, paramString2, paramJSONObject, paramnhp);
  }
  
  String a() {
    return this.a;
  }
  
  njr b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */