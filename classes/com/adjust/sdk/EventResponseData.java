package com.adjust.sdk;

public class EventResponseData extends ResponseData {
  public String eventToken;
  
  public EventResponseData(ActivityPackage paramActivityPackage) {
    this.eventToken = paramActivityPackage.getParameters().get("event_token");
  }
  
  public AdjustEventFailure getFailureResponseData() {
    if (this.success)
      return null; 
    AdjustEventFailure adjustEventFailure = new AdjustEventFailure();
    adjustEventFailure.message = this.message;
    adjustEventFailure.timestamp = this.timestamp;
    adjustEventFailure.adid = this.adid;
    adjustEventFailure.willRetry = this.willRetry;
    adjustEventFailure.jsonResponse = this.jsonResponse;
    adjustEventFailure.eventToken = this.eventToken;
    return adjustEventFailure;
  }
  
  public AdjustEventSuccess getSuccessResponseData() {
    if (!this.success)
      return null; 
    AdjustEventSuccess adjustEventSuccess = new AdjustEventSuccess();
    adjustEventSuccess.message = this.message;
    adjustEventSuccess.timestamp = this.timestamp;
    adjustEventSuccess.adid = this.adid;
    adjustEventSuccess.jsonResponse = this.jsonResponse;
    adjustEventSuccess.eventToken = this.eventToken;
    return adjustEventSuccess;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\EventResponseData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */