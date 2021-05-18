package com.adjust.sdk;

public class SessionResponseData extends ResponseData {
  public AdjustSessionFailure getFailureResponseData() {
    if (this.success)
      return null; 
    AdjustSessionFailure adjustSessionFailure = new AdjustSessionFailure();
    adjustSessionFailure.message = this.message;
    adjustSessionFailure.timestamp = this.timestamp;
    adjustSessionFailure.adid = this.adid;
    adjustSessionFailure.willRetry = this.willRetry;
    adjustSessionFailure.jsonResponse = this.jsonResponse;
    return adjustSessionFailure;
  }
  
  public AdjustSessionSuccess getSuccessResponseData() {
    if (!this.success)
      return null; 
    AdjustSessionSuccess adjustSessionSuccess = new AdjustSessionSuccess();
    adjustSessionSuccess.message = this.message;
    adjustSessionSuccess.timestamp = this.timestamp;
    adjustSessionSuccess.adid = this.adid;
    adjustSessionSuccess.jsonResponse = this.jsonResponse;
    return adjustSessionSuccess;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\SessionResponseData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */