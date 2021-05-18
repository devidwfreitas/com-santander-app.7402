package com.adjust.sdk;

import avz;
import java.util.Locale;
import org.json.JSONObject;

public class ResponseData {
  public ActivityKind activityKind;
  
  public String adid;
  
  public AdjustAttribution attribution;
  
  public JSONObject jsonResponse;
  
  public String message;
  
  public boolean success;
  
  public String timestamp;
  
  public boolean willRetry;
  
  public static ResponseData buildResponseData(ActivityPackage paramActivityPackage) {
    ActivityKind activityKind = paramActivityPackage.getActivityKind();
    switch (avz.a[activityKind.ordinal()]) {
      default:
        responseData = new ResponseData();
        responseData.activityKind = activityKind;
        return responseData;
      case 1:
        responseData = new SessionResponseData();
        responseData.activityKind = activityKind;
        return responseData;
      case 2:
        responseData = new SdkClickResponseData();
        responseData.activityKind = activityKind;
        return responseData;
      case 3:
        responseData = new AttributionResponseData();
        responseData.activityKind = activityKind;
        return responseData;
      case 4:
        break;
    } 
    ResponseData responseData = new EventResponseData((ActivityPackage)responseData);
    responseData.activityKind = activityKind;
    return responseData;
  }
  
  public String toString() {
    return String.format(Locale.US, "message:%s timestamp:%s json:%s", new Object[] { this.message, this.timestamp, this.jsonResponse });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ResponseData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */