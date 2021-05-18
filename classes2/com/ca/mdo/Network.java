package com.ca.mdo;

import com.ca.integration.CaMDOCallback;
import java.util.Map;

public class Network {
  public CaMDOCallback callback;
  
  public Map<String, String> customAttributes;
  
  public Map<String, String> headers;
  
  public int httpStatus;
  
  public long inBytes;
  
  public long outBytes;
  
  public Map<String, String> reqParams;
  
  public long responseTime;
  
  public String url;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\Network.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */