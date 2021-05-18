package br.com.santander.msgsdk.request;

import br.com.santander.msgsdk.ConnectorRequestInterface;
import br.com.santander.msgsdk.entities.ListInbox;
import im;
import ir;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class RequestOfflineMessages extends AbstractConnectorRequest {
  private static final String TAG = "OfflineMessages";
  
  private static final String URL = "/push/v1/offlineMessages";
  
  public RequestOfflineMessages(RequestProvider paramRequestProvider) {
    super(paramRequestProvider);
  }
  
  private String createParamsGet() {
    return "?applicationId=" + this.requestProvider.getAppId() + "&deviceId=" + this.requestProvider.getDeviceId() + "&statusFilterMode=INCLUDE&status=RECEIVED&searchSize=50";
  }
  
  public ir createHubRequest() {
    ir ir = new ir();
    ir.a("/push/v1/offlineMessages" + createParamsGet());
    ir.a(im.GET);
    ir.a(HeaderProvider.unauth("OfflineMessages", this.requestProvider));
    ir.a(Boolean.valueOf(false));
    return ir;
  }
  
  public Class getClassObject() {
    return ListInbox[].class;
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.GET;
  }
  
  public JSONObject getHeader() {
    return HeaderProvider.unauth("OfflineMessages", this.requestProvider);
  }
  
  public String getMethod() {
    return "/push/v1/offlineMessages";
  }
  
  public Map<?, ?> getQueryString() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("applicationId", this.requestProvider.getAppId());
    hashMap.put("deviceId", this.requestProvider.getDeviceId());
    hashMap.put("statusFilterMode", "INCLUDE");
    hashMap.put("searchSize", "50");
    return hashMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestOfflineMessages.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */