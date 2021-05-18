package br.com.santander.msgsdk.request;

import br.com.santander.msgsdk.ConnectorRequestInterface;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

abstract class AbstractConnectorRequest implements ConnectorRequestInterface {
  private ConnectorEnvironment environment;
  
  RequestProvider requestProvider;
  
  AbstractConnectorRequest(RequestProvider paramRequestProvider) {
    this.requestProvider = paramRequestProvider;
    this.environment = paramRequestProvider.getConnectorEnvironment();
  }
  
  public JSONObject getBody() {
    return new JSONObject();
  }
  
  public InputStream getCertificate() {
    return (this.environment != null) ? this.environment.getCertificate() : null;
  }
  
  public Class getClassObject() {
    return JSONObject.class;
  }
  
  public ConnectorRequestInterface.ConnectorType getConnectorType() {
    return ConnectorRequestInterface.ConnectorType.GET;
  }
  
  public String getEndPoint() {
    return (this.environment != null) ? this.environment.getEndPoint() : "";
  }
  
  public JSONObject getHeader() {
    return new JSONObject();
  }
  
  public Map<?, ?> getQueryString() {
    return new HashMap<Object, Object>();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\AbstractConnectorRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */