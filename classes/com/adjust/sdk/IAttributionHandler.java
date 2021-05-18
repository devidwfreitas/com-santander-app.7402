package com.adjust.sdk;

public interface IAttributionHandler {
  void checkSdkClickResponse(SdkClickResponseData paramSdkClickResponseData);
  
  void checkSessionResponse(SessionResponseData paramSessionResponseData);
  
  void getAttribution();
  
  void init(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean);
  
  void pauseSending();
  
  void resumeSending();
  
  void teardown();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\IAttributionHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */