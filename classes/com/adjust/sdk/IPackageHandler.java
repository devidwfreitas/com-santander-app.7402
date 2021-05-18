package com.adjust.sdk;

import android.content.Context;

public interface IPackageHandler {
  void addPackage(ActivityPackage paramActivityPackage);
  
  void closeFirstPackage(ResponseData paramResponseData, ActivityPackage paramActivityPackage);
  
  void init(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean);
  
  void pauseSending();
  
  void resumeSending();
  
  void sendFirstPackage();
  
  void sendNextPackage(ResponseData paramResponseData);
  
  void teardown(boolean paramBoolean);
  
  void updatePackages(SessionParameters paramSessionParameters);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\IPackageHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */