package com.adjust.sdk;

import android.net.Uri;
import ave;
import avf;
import avg;
import avh;
import avi;
import avj;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class AttributionHandler implements IAttributionHandler {
  private static final String ATTRIBUTION_TIMER_NAME = "Attribution timer";
  
  private WeakReference<IActivityHandler> activityHandlerWeakRef;
  
  private ActivityPackage attributionPackage;
  
  private ILogger logger = AdjustFactory.getLogger();
  
  private boolean paused;
  
  private CustomScheduledExecutor scheduledExecutor = new CustomScheduledExecutor("AttributionHandler", false);
  
  private TimerOnce timer = new TimerOnce((Runnable)new ave(this), "Attribution timer");
  
  public AttributionHandler(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean) {
    init(paramIActivityHandler, paramActivityPackage, paramBoolean);
  }
  
  private void checkAttributionI(IActivityHandler paramIActivityHandler, ResponseData paramResponseData) {
    if (paramResponseData.jsonResponse == null)
      return; 
    long l = paramResponseData.jsonResponse.optLong("ask_in", -1L);
    if (l >= 0L) {
      paramIActivityHandler.setAskingAttribution(true);
      getAttributionI(l);
      return;
    } 
    paramIActivityHandler.setAskingAttribution(false);
    paramResponseData.attribution = AdjustAttribution.fromJson(paramResponseData.jsonResponse.optJSONObject("attribution"), paramResponseData.adid);
  }
  
  private void checkAttributionResponseI(IActivityHandler paramIActivityHandler, AttributionResponseData paramAttributionResponseData) {
    checkAttributionI(paramIActivityHandler, paramAttributionResponseData);
    checkDeeplinkI(paramAttributionResponseData);
    paramIActivityHandler.launchAttributionResponseTasks(paramAttributionResponseData);
  }
  
  private void checkDeeplinkI(AttributionResponseData paramAttributionResponseData) {
    if (paramAttributionResponseData.jsonResponse != null) {
      JSONObject jSONObject = paramAttributionResponseData.jsonResponse.optJSONObject("attribution");
      if (jSONObject != null) {
        String str = jSONObject.optString("deeplink", null);
        if (str != null) {
          paramAttributionResponseData.deeplink = Uri.parse(str);
          return;
        } 
      } 
    } 
  }
  
  private void checkSdkClickResponseI(IActivityHandler paramIActivityHandler, SdkClickResponseData paramSdkClickResponseData) {
    checkAttributionI(paramIActivityHandler, paramSdkClickResponseData);
    paramIActivityHandler.launchSdkClickResponseTasks(paramSdkClickResponseData);
  }
  
  private void checkSessionResponseI(IActivityHandler paramIActivityHandler, SessionResponseData paramSessionResponseData) {
    checkAttributionI(paramIActivityHandler, paramSessionResponseData);
    paramIActivityHandler.launchSessionResponseTasks(paramSessionResponseData);
  }
  
  private void getAttributionI(long paramLong) {
    if (this.timer.getFireIn() > paramLong)
      return; 
    if (paramLong != 0L) {
      double d = paramLong / 1000.0D;
      String str = Util.SecondsDisplayFormat.format(d);
      this.logger.debug("Waiting to query attribution in %s seconds", new Object[] { str });
    } 
    this.timer.startIn(paramLong);
  }
  
  private void sendAttributionRequestI() {
    if (this.paused) {
      this.logger.debug("Attribution handler is paused", new Object[0]);
      return;
    } 
    this.logger.verbose("%s", new Object[] { this.attributionPackage.getExtendedString() });
    try {
      ResponseData responseData = UtilNetworking.createGETHttpsURLConnection(this.attributionPackage);
      if (responseData instanceof AttributionResponseData) {
        checkAttributionResponse((AttributionResponseData)responseData);
        return;
      } 
      return;
    } catch (Exception exception) {
      this.logger.error("Failed to get attribution (%s)", new Object[] { exception.getMessage() });
      return;
    } 
  }
  
  public void checkAttributionResponse(AttributionResponseData paramAttributionResponseData) {
    this.scheduledExecutor.submit((Runnable)new avi(this, paramAttributionResponseData));
  }
  
  public void checkSdkClickResponse(SdkClickResponseData paramSdkClickResponseData) {
    this.scheduledExecutor.submit((Runnable)new avh(this, paramSdkClickResponseData));
  }
  
  public void checkSessionResponse(SessionResponseData paramSessionResponseData) {
    this.scheduledExecutor.submit((Runnable)new avg(this, paramSessionResponseData));
  }
  
  public void getAttribution() {
    this.scheduledExecutor.submit((Runnable)new avf(this));
  }
  
  public void init(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean) {
    this.activityHandlerWeakRef = new WeakReference<IActivityHandler>(paramIActivityHandler);
    this.attributionPackage = paramActivityPackage;
    if (!paramBoolean) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    this.paused = paramBoolean;
  }
  
  public void pauseSending() {
    this.paused = true;
  }
  
  public void resumeSending() {
    this.paused = false;
  }
  
  public void sendAttributionRequest() {
    this.scheduledExecutor.submit((Runnable)new avj(this));
  }
  
  public void teardown() {
    this.logger.verbose("AttributionHandler teardown", new Object[0]);
    if (this.timer != null)
      this.timer.teardown(); 
    if (this.scheduledExecutor != null)
      try {
        this.scheduledExecutor.shutdownNow();
      } catch (SecurityException securityException) {} 
    if (this.activityHandlerWeakRef != null)
      this.activityHandlerWeakRef.clear(); 
    this.scheduledExecutor = null;
    this.activityHandlerWeakRef = null;
    this.logger = null;
    this.attributionPackage = null;
    this.timer = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AttributionHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */