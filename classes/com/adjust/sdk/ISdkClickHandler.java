package com.adjust.sdk;

public interface ISdkClickHandler {
  void init(IActivityHandler paramIActivityHandler, boolean paramBoolean);
  
  void pauseSending();
  
  void resumeSending();
  
  void sendReftagReferrers();
  
  void sendSdkClick(ActivityPackage paramActivityPackage);
  
  void teardown();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ISdkClickHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */