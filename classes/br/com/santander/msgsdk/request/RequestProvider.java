package br.com.santander.msgsdk.request;

import br.com.santander.msgsdk.Authentication;
import br.com.santander.msgsdk.IdProvider;

public interface RequestProvider extends IdProvider {
  Authentication getAuthentication();
  
  ConnectorEnvironment getConnectorEnvironment();
  
  String getDeviceId();
  
  String getToken();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\request\RequestProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */