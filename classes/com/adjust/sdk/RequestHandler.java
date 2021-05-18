package com.adjust.sdk;

import avy;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.SocketTimeoutException;

public class RequestHandler implements IRequestHandler {
  private ILogger logger = AdjustFactory.getLogger();
  
  private WeakReference<IPackageHandler> packageHandlerWeakRef;
  
  private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor("RequestHandler", false);
  
  public RequestHandler(IPackageHandler paramIPackageHandler) {
    init(paramIPackageHandler);
  }
  
  private void closePackageI(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable) {
    String str = String.format("%s. (%s) Will retry later", new Object[] { paramActivityPackage.getFailureMessage(), Util.getReasonString(paramString, paramThrowable) });
    this.logger.error(str, new Object[0]);
    ResponseData responseData = ResponseData.buildResponseData(paramActivityPackage);
    responseData.message = str;
    IPackageHandler iPackageHandler = this.packageHandlerWeakRef.get();
    if (iPackageHandler == null)
      return; 
    iPackageHandler.closeFirstPackage(responseData, paramActivityPackage);
  }
  
  private void sendI(ActivityPackage paramActivityPackage, int paramInt) {
    String str = "https://app.adjust.com" + paramActivityPackage.getPath();
    try {
      ResponseData responseData = UtilNetworking.createPOSTHttpsURLConnection(str, paramActivityPackage, paramInt);
      IPackageHandler iPackageHandler = this.packageHandlerWeakRef.get();
      if (iPackageHandler == null)
        return; 
      if (responseData.jsonResponse == null) {
        iPackageHandler.closeFirstPackage(responseData, paramActivityPackage);
        return;
      } 
      iPackageHandler.sendNextPackage(responseData);
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      sendNextPackageI(paramActivityPackage, "Failed to encode parameters", unsupportedEncodingException);
      return;
    } catch (SocketTimeoutException socketTimeoutException) {
      closePackageI(paramActivityPackage, "Request timed out", socketTimeoutException);
      return;
    } catch (IOException iOException) {
      closePackageI(paramActivityPackage, "Request failed", iOException);
      return;
    } catch (Throwable throwable) {
      sendNextPackageI(paramActivityPackage, "Runtime exception", throwable);
      return;
    } 
  }
  
  private void sendNextPackageI(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable) {
    paramString = String.format("%s. (%s)", new Object[] { paramActivityPackage.getFailureMessage(), Util.getReasonString(paramString, paramThrowable) });
    this.logger.error(paramString, new Object[0]);
    ResponseData responseData = ResponseData.buildResponseData(paramActivityPackage);
    responseData.message = paramString;
    IPackageHandler iPackageHandler = this.packageHandlerWeakRef.get();
    if (iPackageHandler == null)
      return; 
    iPackageHandler.sendNextPackage(responseData);
  }
  
  public void init(IPackageHandler paramIPackageHandler) {
    this.packageHandlerWeakRef = new WeakReference<IPackageHandler>(paramIPackageHandler);
  }
  
  public void sendPackage(ActivityPackage paramActivityPackage, int paramInt) {
    this.scheduledExecutor.submit((Runnable)new avy(this, paramActivityPackage, paramInt));
  }
  
  public void teardown() {
    this.logger.verbose("RequestHandler teardown", new Object[0]);
    if (this.scheduledExecutor != null)
      try {
        this.scheduledExecutor.shutdownNow();
      } catch (SecurityException securityException) {} 
    if (this.packageHandlerWeakRef != null)
      this.packageHandlerWeakRef.clear(); 
    this.scheduledExecutor = null;
    this.packageHandlerWeakRef = null;
    this.logger = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\RequestHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */