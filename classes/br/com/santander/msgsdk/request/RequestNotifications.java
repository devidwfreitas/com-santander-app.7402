package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.ConnectorRequestInterface;
import im;
import ir;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestNotifications extends AbstractConnectorRequest {
  private static final String TAG = RequestNotifications.class.getName();
  
  private static final String URL = "messaging-internet/v1/list-notification";
  
  private String applicationId;
  
  public RequestNotifications(String paramString, RequestProvider paramRequestProvider) {
    super(paramRequestProvider);
    this.applicationId = paramString;
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("messaging-internet/v1/list-notification");
    ir.a(im.POST);
    ir.a(HeaderProvider.unauth(TAG, this.requestProvider));
    ir.a(Boolean.valueOf(true));
    ir.a(getBody());
    return ir;
  }
  
  public JSONObject getBody() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("numberPage", "1");
      jSONObject.put("applicationId", this.applicationId);
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e(TAG, "getBody JSONException ", (Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.PUT;
  }
  
  public JSONObject getHeader() {
    return HeaderProvider.unauth(TAG, this.requestProvider);
  }
  
  public String getMethod() {
    return "messaging-internet/v1/list-notification";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestNotifications.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */