package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.ConnectorRequestInterface;
import im;
import ir;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestNotificationReadOrDeleted extends AbstractConnectorRequest {
  private static final String TAG = RequestConfigPanel.class.getName();
  
  private static final String URL = "messaging-internet/v1/update-notification-status";
  
  private boolean excluded;
  
  private String notificationId;
  
  private boolean read;
  
  private String timestamp;
  
  public RequestNotificationReadOrDeleted(RequestProvider paramRequestProvider, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2) {
    super(paramRequestProvider);
    this.notificationId = paramString1;
    this.timestamp = paramString2;
    this.read = paramBoolean1;
    this.excluded = paramBoolean2;
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("messaging-internet/v1/update-notification-status");
    ir.a(im.POST);
    ir.a(HeaderProvider.unauth(TAG, this.requestProvider));
    ir.a(Boolean.valueOf(true));
    ir.a(getBody());
    return ir;
  }
  
  public JSONObject getBody() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("notificationId", this.notificationId);
      jSONObject.put("timestamp", this.timestamp);
      if (this.read) {
        str = "true";
      } else {
        str = "false";
      } 
      jSONObject.put("read", str);
      if (this.excluded) {
        str = "true";
        jSONObject.put("excluded", str);
        return jSONObject;
      } 
      String str = "false";
      jSONObject.put("excluded", str);
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
    return "messaging-internet/v1/update-notification-status";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestNotificationReadOrDeleted.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */