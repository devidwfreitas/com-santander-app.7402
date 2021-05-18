package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.ConnectorRequestInterface;
import im;
import ir;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestUnsubscribe extends AbstractConnectorRequest {
  private static final String TAG = "RequestUnsubscribe";
  
  private static final String URL = "push/v1/subscriptions/byDeviceId";
  
  public RequestUnsubscribe(RequestProvider paramRequestProvider) {
    super(paramRequestProvider);
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("push/v1/subscriptions/byDeviceId");
    ir.a(im.DELETE);
    ir.a(HeaderProvider.auth("RequestUnsubscribe", this.requestProvider));
    ir.a(Boolean.valueOf(true));
    ir.a(getBody());
    return ir;
  }
  
  public JSONObject getBody() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("appId", this.requestProvider.getAppId());
      jSONObject.put("userId", this.requestProvider.getUserId());
      jSONObject.put("deviceId", this.requestProvider.getDeviceId());
      jSONObject.put("platform", "ANDROID");
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e("RequestUnsubscribe", "getBody", (Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.DELETE;
  }
  
  public JSONObject getHeader() {
    return HeaderProvider.unauth("RequestUnsubscribe", this.requestProvider);
  }
  
  public String getMethod() {
    return "push/v1/subscriptions/byDeviceId";
  }
  
  public Map<?, ?> getQueryString() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("appId", this.requestProvider.getAppId());
    hashMap.put("userId", this.requestProvider.getUserId());
    hashMap.put("deviceId", this.requestProvider.getDeviceId());
    hashMap.put("platform", "ANDROID");
    return hashMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestUnsubscribe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */