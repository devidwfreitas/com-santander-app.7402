package com.adjust.sdk;

import java.util.LinkedHashMap;
import java.util.Map;

public class AdjustEvent {
  private static ILogger logger = AdjustFactory.getLogger();
  
  public Map<String, String> callbackParameters;
  
  public String currency;
  
  public String eventToken;
  
  String orderId;
  
  public Map<String, String> partnerParameters;
  
  public Double revenue;
  
  public AdjustEvent(String paramString) {
    if (!checkEventToken(paramString, logger))
      return; 
    this.eventToken = paramString;
  }
  
  private static boolean checkEventToken(String paramString, ILogger paramILogger) {
    if (paramString == null) {
      paramILogger.error("Missing Event Token", new Object[0]);
      return false;
    } 
    if (paramString.length() != 6) {
      paramILogger.error("Malformed Event Token '%s'", new Object[] { paramString });
      return false;
    } 
    return true;
  }
  
  private boolean checkRevenue(Double paramDouble, String paramString) {
    if (paramDouble != null) {
      if (paramDouble.doubleValue() < 0.0D) {
        logger.error("Invalid amount %.5f", new Object[] { paramDouble });
        return false;
      } 
      if (paramString == null) {
        logger.error("Currency must be set with revenue", new Object[0]);
        return false;
      } 
      if (paramString.equals("")) {
        logger.error("Currency is empty", new Object[0]);
        return false;
      } 
    } else if (paramString != null) {
      logger.error("Revenue must be set with currency", new Object[0]);
      return false;
    } 
    return true;
  }
  
  public void addCallbackParameter(String paramString1, String paramString2) {
    if (Util.isValidParameter(paramString1, "key", "Callback") && Util.isValidParameter(paramString2, "value", "Callback")) {
      if (this.callbackParameters == null)
        this.callbackParameters = new LinkedHashMap<String, String>(); 
      if ((String)this.callbackParameters.put(paramString1, paramString2) != null) {
        logger.warn("Key %s was overwritten", new Object[] { paramString1 });
        return;
      } 
    } 
  }
  
  public void addPartnerParameter(String paramString1, String paramString2) {
    if (Util.isValidParameter(paramString1, "key", "Partner") && Util.isValidParameter(paramString2, "value", "Partner")) {
      if (this.partnerParameters == null)
        this.partnerParameters = new LinkedHashMap<String, String>(); 
      if ((String)this.partnerParameters.put(paramString1, paramString2) != null) {
        logger.warn("Key %s was overwritten", new Object[] { paramString1 });
        return;
      } 
    } 
  }
  
  public boolean isValid() {
    return (this.eventToken != null);
  }
  
  public void setOrderId(String paramString) {
    this.orderId = paramString;
  }
  
  public void setRevenue(double paramDouble, String paramString) {
    if (!checkRevenue(Double.valueOf(paramDouble), paramString))
      return; 
    this.revenue = Double.valueOf(paramDouble);
    this.currency = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */