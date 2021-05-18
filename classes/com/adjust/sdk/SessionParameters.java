package com.adjust.sdk;

import java.util.HashMap;
import java.util.Map;

public class SessionParameters {
  public Map<String, String> callbackParameters;
  
  public Map<String, String> partnerParameters;
  
  public SessionParameters deepCopy() {
    SessionParameters sessionParameters = new SessionParameters();
    if (this.callbackParameters != null)
      sessionParameters.callbackParameters = new HashMap<String, String>(this.callbackParameters); 
    if (this.partnerParameters != null)
      sessionParameters.partnerParameters = new HashMap<String, String>(this.partnerParameters); 
    return sessionParameters;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!Util.equalObject(this.callbackParameters, ((SessionParameters)paramObject).callbackParameters))
        return false; 
      if (!Util.equalObject(this.partnerParameters, ((SessionParameters)paramObject).partnerParameters))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return (Util.hashObject(this.callbackParameters) + 629) * 37 + Util.hashObject(this.partnerParameters);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\SessionParameters.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */