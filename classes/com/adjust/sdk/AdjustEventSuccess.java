package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustEventSuccess {
  public String adid;
  
  public String eventToken;
  
  public JSONObject jsonResponse;
  
  public String message;
  
  public String timestamp;
  
  public String toString() {
    return String.format(Locale.US, "Event Success msg:%s time:%s adid:%s event:%s json:%s", new Object[] { this.message, this.timestamp, this.adid, this.eventToken, this.jsonResponse });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustEventSuccess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */