package com.adjust.sdk;

public interface IRequestHandler {
  void init(IPackageHandler paramIPackageHandler);
  
  void sendPackage(ActivityPackage paramActivityPackage, int paramInt);
  
  void teardown();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\IRequestHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */