package br.com.santander.msgsdk;

import java.io.InputStream;
import java.util.Map;
import org.json.JSONObject;

public interface ConnectorRequestInterface {
  JSONObject getBody();
  
  InputStream getCertificate();
  
  Class getClassObject();
  
  ConnectorRequestInterface$ConnectorType getConnectorType();
  
  String getEndPoint();
  
  JSONObject getHeader();
  
  String getMethod();
  
  Map<?, ?> getQueryString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\ConnectorRequestInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */