package br.com.santander.msgsdk.request;

import android.util.Log;
import br.com.santander.msgsdk.ConnectorRequestInterface;
import im;
import ir;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestStatus extends AbstractConnectorRequest {
  private static final String TAG = "RequestStatus";
  
  private static final String URL = "push/v1/status";
  
  private String pushId;
  
  private String status;
  
  private String uuId;
  
  public RequestStatus(RequestProvider paramRequestProvider, String paramString1, String paramString2, String paramString3) {
    super(paramRequestProvider);
    this.pushId = paramString1;
    this.status = paramString2;
    this.uuId = paramString3;
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("push/v1/status");
    ir.a(im.PUT);
    ir.a(HeaderProvider.unauth("RequestStatus", this.requestProvider));
    ir.a(Boolean.valueOf(true));
    ir.a(getBody());
    return ir;
  }
  
  public JSONObject getBody() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("pushMessageId", this.pushId);
      jSONObject.put("status", this.status);
      return jSONObject;
    } catch (JSONException jSONException) {
      Log.e("RequestStatus", "getBody", (Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.PUT;
  }
  
  public JSONObject getHeader() {
    return HeaderProvider.unauth("RequestStatus", this.requestProvider);
  }
  
  public String getMethod() {
    return "push/v1/status";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */