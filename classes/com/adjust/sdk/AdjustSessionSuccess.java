package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustSessionSuccess {
  public String adid;
  
  public JSONObject jsonResponse;
  
  public String message;
  
  public String timestamp;
  
  public String toString() {
    return String.format(Locale.US, "Session Success msg:%s time:%s adid:%s json:%s", new Object[] { this.message, this.timestamp, this.adid, this.jsonResponse });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustSessionSuccess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */