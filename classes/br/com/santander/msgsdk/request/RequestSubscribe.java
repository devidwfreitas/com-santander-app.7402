package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.ConnectorRequestInterface;
import im;
import ir;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestSubscribe extends AbstractConnectorRequest {
  private static final String TAG = "RequestSubscribe";
  
  private static final String URL = "push/v1/subscriptions";
  
  public RequestSubscribe(RequestProvider paramRequestProvider) {
    super(paramRequestProvider);
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("push/v1/subscriptions");
    ir.a(im.POST);
    ir.a(HeaderProvider.auth("RequestSubscribe", this.requestProvider));
    ir.a(getBody());
    ir.a(Boolean.valueOf(true));
    return ir;
  }
  
  public JSONObject getBody() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("appId", this.requestProvider.getAppId());
      jSONObject.put("userId", this.requestProvider.getUserId());
      jSONObject.put("token", this.requestProvider.getToken());
      jSONObject.put("deviceId", this.requestProvider.getDeviceId());
      jSONObject.put("platform", "ANDROID");
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e("RequestSubscribe", "getBody", (Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.POST;
  }
  
  public JSONObject getHeader() {
    return HeaderProvider.auth("RequestSubscribe", this.requestProvider);
  }
  
  public String getMethod() {
    return "push/v1/subscriptions";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestSubscribe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */