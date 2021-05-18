package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import org.json.JSONException;
import org.json.JSONObject;

class HeaderProvider {
  static JSONObject auth(String paramString, RequestProvider paramRequestProvider) {
    if (paramRequestProvider.getAuthentication() != null) {
      boolean bool1 = true;
      return get(paramString, paramRequestProvider, bool1);
    } 
    boolean bool = false;
    return get(paramString, paramRequestProvider, bool);
  }
  
  private static JSONObject get(String paramString, RequestProvider paramRequestProvider, boolean paramBoolean) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("Content-Type", "application/json");
      if (paramRequestProvider != null && paramRequestProvider.getAppKey() != null) {
        jSONObject.put("X-Application-Key", paramRequestProvider.getAppKey());
        return jSONObject;
      } 
      jSONObject.put("X-Application-Key", MSGSDK.getInstance().getAppKey());
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e(paramString, "HeaderProvider", (Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  static JSONObject unauth(String paramString, RequestProvider paramRequestProvider) {
    return get(paramString, paramRequestProvider, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\HeaderProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */