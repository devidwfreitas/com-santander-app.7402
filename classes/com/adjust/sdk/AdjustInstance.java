package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;
import auv;
import auw;
import aux;
import auy;
import auz;
import ava;
import avb;
import avc;
import avd;
import java.util.ArrayList;
import java.util.List;

public class AdjustInstance {
  private IActivityHandler activityHandler;
  
  private List<IRunActivityHandler> preLaunchActionsArray;
  
  private String pushToken;
  
  private Boolean startEnabled = null;
  
  private boolean startOffline = false;
  
  private boolean checkActivityHandler() {
    return checkActivityHandler(null);
  }
  
  private boolean checkActivityHandler(String paramString) {
    if (this.activityHandler == null) {
      if (paramString != null) {
        AdjustFactory.getLogger().warn("Adjust not initialized, but %s saved for launch", new Object[] { paramString });
        return false;
      } 
      AdjustFactory.getLogger().error("Adjust not initialized correctly", new Object[0]);
      return false;
    } 
    return true;
  }
  
  private boolean checkActivityHandler(boolean paramBoolean, String paramString1, String paramString2) {
    return paramBoolean ? checkActivityHandler(paramString1) : checkActivityHandler(paramString2);
  }
  
  private boolean isInstanceEnabled() {
    return (this.startEnabled == null || this.startEnabled.booleanValue());
  }
  
  private void savePushToken(String paramString, Context paramContext) {
    Util.runInBackground((Runnable)new avc(this, paramContext, paramString));
  }
  
  private void saveRawReferrer(String paramString, long paramLong, Context paramContext) {
    Util.runInBackground((Runnable)new avb(this, paramContext, paramString, paramLong));
  }
  
  private void setSendingReferrersAsNotSent(Context paramContext) {
    Util.runInBackground((Runnable)new avd(this, paramContext));
  }
  
  public void addSessionCallbackParameter(String paramString1, String paramString2) {
    if (checkActivityHandler("adding session callback parameter")) {
      this.activityHandler.addSessionCallbackParameter(paramString1, paramString2);
      return;
    } 
    if (this.preLaunchActionsArray == null)
      this.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
    this.preLaunchActionsArray.add(new auv(this, paramString1, paramString2));
  }
  
  public void addSessionPartnerParameter(String paramString1, String paramString2) {
    if (checkActivityHandler("adding session partner parameter")) {
      this.activityHandler.addSessionPartnerParameter(paramString1, paramString2);
      return;
    } 
    if (this.preLaunchActionsArray == null)
      this.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
    this.preLaunchActionsArray.add(new auw(this, paramString1, paramString2));
  }
  
  public void appWillOpenUrl(Uri paramUri) {
    if (!checkActivityHandler())
      return; 
    long l = System.currentTimeMillis();
    this.activityHandler.readOpenUrl(paramUri, l);
  }
  
  public String getAdid() {
    return !checkActivityHandler() ? null : this.activityHandler.getAdid();
  }
  
  public AdjustAttribution getAttribution() {
    return !checkActivityHandler() ? null : this.activityHandler.getAttribution();
  }
  
  public boolean isEnabled() {
    return !checkActivityHandler() ? isInstanceEnabled() : this.activityHandler.isEnabled();
  }
  
  public void onCreate(AdjustConfig paramAdjustConfig) {
    if (this.activityHandler != null) {
      AdjustFactory.getLogger().error("Adjust already initialized", new Object[0]);
      return;
    } 
    paramAdjustConfig.preLaunchActionsArray = this.preLaunchActionsArray;
    paramAdjustConfig.pushToken = this.pushToken;
    paramAdjustConfig.startEnabled = this.startEnabled;
    paramAdjustConfig.startOffline = this.startOffline;
    this.activityHandler = AdjustFactory.getActivityHandler(paramAdjustConfig);
    setSendingReferrersAsNotSent(paramAdjustConfig.context);
  }
  
  public void onPause() {
    if (!checkActivityHandler())
      return; 
    this.activityHandler.onPause();
  }
  
  public void onResume() {
    if (!checkActivityHandler())
      return; 
    this.activityHandler.onResume();
  }
  
  public void removeSessionCallbackParameter(String paramString) {
    if (checkActivityHandler("removing session callback parameter")) {
      this.activityHandler.removeSessionCallbackParameter(paramString);
      return;
    } 
    if (this.preLaunchActionsArray == null)
      this.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
    this.preLaunchActionsArray.add(new aux(this, paramString));
  }
  
  public void removeSessionPartnerParameter(String paramString) {
    if (checkActivityHandler("removing session partner parameter")) {
      this.activityHandler.removeSessionPartnerParameter(paramString);
      return;
    } 
    if (this.preLaunchActionsArray == null)
      this.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
    this.preLaunchActionsArray.add(new auy(this, paramString));
  }
  
  public void resetSessionCallbackParameters() {
    if (checkActivityHandler("resetting session callback parameters")) {
      this.activityHandler.resetSessionCallbackParameters();
      return;
    } 
    if (this.preLaunchActionsArray == null)
      this.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
    this.preLaunchActionsArray.add(new auz(this));
  }
  
  public void resetSessionPartnerParameters() {
    if (checkActivityHandler("resetting session partner parameters")) {
      this.activityHandler.resetSessionPartnerParameters();
      return;
    } 
    if (this.preLaunchActionsArray == null)
      this.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
    this.preLaunchActionsArray.add(new ava(this));
  }
  
  public void sendFirstPackages() {
    if (!checkActivityHandler())
      return; 
    this.activityHandler.sendFirstPackages();
  }
  
  public void sendReferrer(String paramString, Context paramContext) {
    long l = System.currentTimeMillis();
    if (paramString != null && paramString.length() != 0) {
      saveRawReferrer(paramString, l, paramContext);
      if (checkActivityHandler("referrer") && this.activityHandler.isEnabled()) {
        this.activityHandler.sendReftagReferrer();
        return;
      } 
    } 
  }
  
  public void setEnabled(boolean paramBoolean) {
    this.startEnabled = Boolean.valueOf(paramBoolean);
    if (checkActivityHandler(paramBoolean, "enabled mode", "disabled mode"))
      this.activityHandler.setEnabled(paramBoolean); 
  }
  
  public void setOfflineMode(boolean paramBoolean) {
    if (!checkActivityHandler(paramBoolean, "offline mode", "online mode")) {
      this.startOffline = paramBoolean;
      return;
    } 
    this.activityHandler.setOfflineMode(paramBoolean);
  }
  
  public void setPushToken(String paramString) {
    if (!checkActivityHandler("push token")) {
      this.pushToken = paramString;
      return;
    } 
    this.activityHandler.setPushToken(paramString, false);
  }
  
  public void setPushToken(String paramString, Context paramContext) {
    savePushToken(paramString, paramContext);
    if (checkActivityHandler("push token") && this.activityHandler.isEnabled())
      this.activityHandler.setPushToken(paramString, true); 
  }
  
  public void teardown(boolean paramBoolean) {
    if (!checkActivityHandler())
      return; 
    this.activityHandler.teardown(paramBoolean);
    this.activityHandler = null;
  }
  
  public void trackEvent(AdjustEvent paramAdjustEvent) {
    if (!checkActivityHandler())
      return; 
    this.activityHandler.trackEvent(paramAdjustEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustInstance.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */