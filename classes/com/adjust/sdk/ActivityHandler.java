package com.adjust.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Process;
import atm;
import atn;
import ato;
import atp;
import atq;
import atr;
import ats;
import att;
import atu;
import atv;
import atw;
import atx;
import aty;
import atz;
import aua;
import aub;
import auc;
import aud;
import aue;
import auf;
import aug;
import auh;
import aui;
import auj;
import auk;
import aul;
import aum;
import aun;
import auo;
import aup;
import auq;
import aur;
import aus;
import aut;
import avo;
import avq;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class ActivityHandler implements IActivityHandler {
  private static final String ACTIVITY_STATE_NAME = "Activity state";
  
  private static final String ATTRIBUTION_NAME = "Attribution";
  
  private static long BACKGROUND_TIMER_INTERVAL = 0L;
  
  private static final String BACKGROUND_TIMER_NAME = "Background timer";
  
  private static final String DELAY_START_TIMER_NAME = "Delay Start timer";
  
  private static long FOREGROUND_TIMER_INTERVAL = 0L;
  
  private static final String FOREGROUND_TIMER_NAME = "Foreground timer";
  
  private static long FOREGROUND_TIMER_START = 0L;
  
  private static final String SESSION_CALLBACK_PARAMETERS_NAME = "Session Callback parameters";
  
  private static long SESSION_INTERVAL = 0L;
  
  private static final String SESSION_PARAMETERS_NAME = "Session parameters";
  
  private static final String SESSION_PARTNER_PARAMETERS_NAME = "Session Partner parameters";
  
  private static long SUBSESSION_INTERVAL = 0L;
  
  private static final String TIME_TRAVEL = "Time travel!";
  
  private ActivityState activityState;
  
  private AdjustConfig adjustConfig;
  
  private AdjustAttribution attribution;
  
  private IAttributionHandler attributionHandler;
  
  private TimerOnce backgroundTimer;
  
  private TimerOnce delayStartTimer;
  
  private avo deviceInfo;
  
  private TimerCycle foregroundTimer;
  
  private InstallReferrer installReferrer;
  
  private ActivityHandler$InternalState internalState;
  
  private ILogger logger;
  
  private IPackageHandler packageHandler;
  
  private CustomScheduledExecutor scheduledExecutor;
  
  private ISdkClickHandler sdkClickHandler;
  
  private SessionParameters sessionParameters;
  
  private ActivityHandler(AdjustConfig paramAdjustConfig) {
    boolean bool;
    init(paramAdjustConfig);
    this.logger = AdjustFactory.getLogger();
    this.logger.lockLogLevel();
    this.scheduledExecutor = new CustomScheduledExecutor("ActivityHandler", false);
    this.internalState = new ActivityHandler$InternalState(this);
    ActivityHandler$InternalState activityHandler$InternalState = this.internalState;
    if (paramAdjustConfig.startEnabled != null) {
      bool = paramAdjustConfig.startEnabled.booleanValue();
    } else {
      bool = true;
    } 
    activityHandler$InternalState.enabled = bool;
    this.internalState.offline = paramAdjustConfig.startOffline;
    this.internalState.background = true;
    this.internalState.delayStart = false;
    this.internalState.updatePackages = false;
    this.internalState.sessionResponseProcessed = false;
    this.scheduledExecutor.submit((Runnable)new atm(this));
  }
  
  private void backgroundTimerFiredI() {
    if (toSendI())
      this.packageHandler.sendFirstPackage(); 
  }
  
  private boolean checkActivityStateI(ActivityState paramActivityState) {
    if (paramActivityState == null) {
      this.logger.error("Missing activity state", new Object[0]);
      return false;
    } 
    return true;
  }
  
  private void checkAttributionStateI() {
    if (checkActivityStateI(this.activityState) && (!this.internalState.isFirstLaunch() || !this.internalState.hasSessionResponseNotBeenProcessed()) && (this.attribution == null || this.activityState.askingAttribution)) {
      this.attributionHandler.getAttribution();
      return;
    } 
  }
  
  private boolean checkEventI(AdjustEvent paramAdjustEvent) {
    if (paramAdjustEvent == null) {
      this.logger.error("Event missing", new Object[0]);
      return false;
    } 
    if (!paramAdjustEvent.isValid()) {
      this.logger.error("Event not initialized correctly", new Object[0]);
      return false;
    } 
    return true;
  }
  
  private void checkForInstallReferrerInfo(SdkClickResponseData paramSdkClickResponseData) {
    if (!paramSdkClickResponseData.isInstallReferrer)
      return; 
    this.activityState.clickTime = paramSdkClickResponseData.clickTime;
    this.activityState.installBegin = paramSdkClickResponseData.installBegin;
    this.activityState.installReferrer = paramSdkClickResponseData.installReferrer;
    writeActivityStateI();
  }
  
  private boolean checkOrderIdI(String paramString) {
    if (paramString == null || paramString.isEmpty())
      return true; 
    if (this.activityState.findOrderId(paramString)) {
      this.logger.info("Skipping duplicated order ID '%s'", new Object[] { paramString });
      return false;
    } 
    this.activityState.addOrderId(paramString);
    this.logger.verbose("Added order ID '%s'", new Object[] { paramString });
    return true;
  }
  
  private Intent createDeeplinkIntentI(Uri paramUri) {
    if (this.adjustConfig.deepLinkComponent == null) {
      intent = new Intent("android.intent.action.VIEW", paramUri);
      intent.setFlags(268435456);
      intent.setPackage(this.adjustConfig.context.getPackageName());
      return intent;
    } 
    Intent intent = new Intent("android.intent.action.VIEW", (Uri)intent, this.adjustConfig.context, this.adjustConfig.deepLinkComponent);
    intent.setFlags(268435456);
    intent.setPackage(this.adjustConfig.context.getPackageName());
    return intent;
  }
  
  private void delayStartI() {
    if (!this.internalState.isNotInDelayedStart() && !isToUpdatePackagesI()) {
      double d;
      if (this.adjustConfig.delayStart != null) {
        d = this.adjustConfig.delayStart.doubleValue();
      } else {
        d = 0.0D;
      } 
      long l1 = AdjustFactory.getMaxDelayStart();
      long l2 = (long)(1000.0D * d);
      if (l2 > l1) {
        double d1 = (l1 / 1000L);
        String str1 = Util.SecondsDisplayFormat.format(d);
        String str2 = Util.SecondsDisplayFormat.format(d1);
        this.logger.warn("Delay start of %s seconds bigger than max allowed value of %s seconds", new Object[] { str1, str2 });
        d = d1;
      } else {
        l1 = l2;
      } 
      String str = Util.SecondsDisplayFormat.format(d);
      this.logger.info("Waiting %s seconds before starting first session", new Object[] { str });
      this.delayStartTimer.startIn(l1);
      this.internalState.updatePackages = true;
      if (this.activityState != null) {
        this.activityState.updatePackages = true;
        writeActivityStateI();
        return;
      } 
    } 
  }
  
  public static boolean deleteActivityState(Context paramContext) {
    return paramContext.deleteFile("AdjustIoActivityState");
  }
  
  public static boolean deleteAttribution(Context paramContext) {
    return paramContext.deleteFile("AdjustAttribution");
  }
  
  public static boolean deleteSessionCallbackParameters(Context paramContext) {
    return paramContext.deleteFile("AdjustSessionCallbackParameters");
  }
  
  public static boolean deleteSessionPartnerParameters(Context paramContext) {
    return paramContext.deleteFile("AdjustSessionPartnerParameters");
  }
  
  private void endI() {
    if (!toSendI())
      pauseSendingI(); 
    if (updateActivityStateI(System.currentTimeMillis()))
      writeActivityStateI(); 
  }
  
  private void foregroundTimerFiredI() {
    if (!isEnabledI()) {
      stopForegroundTimerI();
      return;
    } 
    if (toSendI())
      this.packageHandler.sendFirstPackage(); 
    if (updateActivityStateI(System.currentTimeMillis())) {
      writeActivityStateI();
      return;
    } 
  }
  
  public static ActivityHandler getInstance(AdjustConfig paramAdjustConfig) {
    if (paramAdjustConfig == null) {
      AdjustFactory.getLogger().error("AdjustConfig missing", new Object[0]);
      return null;
    } 
    if (!paramAdjustConfig.isValid()) {
      AdjustFactory.getLogger().error("AdjustConfig not initialized correctly", new Object[0]);
      return null;
    } 
    if (paramAdjustConfig.processName != null) {
      int i = Process.myPid();
      ActivityManager activityManager = (ActivityManager)paramAdjustConfig.context.getSystemService("activity");
      if (activityManager == null)
        return null; 
      for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
        if (runningAppProcessInfo.pid == i) {
          if (!runningAppProcessInfo.processName.equalsIgnoreCase(paramAdjustConfig.processName)) {
            AdjustFactory.getLogger().info("Skipping initialization in background process (%s)", new Object[] { runningAppProcessInfo.processName });
            return null;
          } 
          break;
        } 
      } 
    } 
    return new ActivityHandler(paramAdjustConfig);
  }
  
  private boolean hasChangedStateI(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2) {
    if (paramBoolean1 != paramBoolean2)
      return true; 
    if (paramBoolean1) {
      this.logger.debug(paramString1, new Object[0]);
      return false;
    } 
    this.logger.debug(paramString2, new Object[0]);
    return false;
  }
  
  private void initI() {
    SESSION_INTERVAL = AdjustFactory.getSessionInterval();
    SUBSESSION_INTERVAL = AdjustFactory.getSubsessionInterval();
    FOREGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
    FOREGROUND_TIMER_START = AdjustFactory.getTimerStart();
    BACKGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
    readAttributionI(this.adjustConfig.context);
    readActivityStateI(this.adjustConfig.context);
    this.sessionParameters = new SessionParameters();
    readSessionCallbackParametersI(this.adjustConfig.context);
    readSessionPartnerParametersI(this.adjustConfig.context);
    if (this.adjustConfig.startEnabled != null) {
      if (this.adjustConfig.preLaunchActionsArray == null)
        this.adjustConfig.preLaunchActionsArray = new ArrayList<IRunActivityHandler>(); 
      this.adjustConfig.preLaunchActionsArray.add(new aud(this));
    } 
    if (this.activityState != null) {
      this.internalState.enabled = this.activityState.enabled;
      this.internalState.updatePackages = this.activityState.updatePackages;
      this.internalState.firstLaunch = false;
    } else {
      this.internalState.firstLaunch = true;
    } 
    readConfigFile(this.adjustConfig.context);
    this.deviceInfo = new avo(this.adjustConfig.context, this.adjustConfig.sdkPrefix);
    if (this.adjustConfig.eventBufferingEnabled)
      this.logger.info("Event buffering is enabled", new Object[0]); 
    if (this.deviceInfo.a == null) {
      this.logger.warn("Unable to get Google Play Services Advertising ID at start time", new Object[0]);
      if (this.deviceInfo.c == null && this.deviceInfo.d == null && this.deviceInfo.e == null)
        this.logger.error("Unable to get any device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]); 
    } else {
      this.logger.info("Google Play Services Advertising ID read correctly at start time", new Object[0]);
    } 
    if (this.adjustConfig.defaultTracker != null)
      this.logger.info("Default tracker: '%s'", new Object[] { this.adjustConfig.defaultTracker }); 
    if (this.adjustConfig.pushToken != null) {
      this.logger.info("Push token: '%s'", new Object[] { this.adjustConfig.pushToken });
      if (this.activityState != null) {
        setPushToken(this.adjustConfig.pushToken, false);
      } else {
        (new SharedPreferencesManager(getContext())).savePushToken(this.adjustConfig.pushToken);
      } 
    } else if (this.activityState != null) {
      setPushToken((new SharedPreferencesManager(getContext())).getPushToken(), true);
    } 
    this.foregroundTimer = new TimerCycle((Runnable)new aue(this), FOREGROUND_TIMER_START, FOREGROUND_TIMER_INTERVAL, "Foreground timer");
    if (this.adjustConfig.sendInBackground) {
      this.logger.info("Send in background configured", new Object[0]);
      this.backgroundTimer = new TimerOnce((Runnable)new auf(this), "Background timer");
    } 
    if (this.activityState == null && this.adjustConfig.delayStart != null && this.adjustConfig.delayStart.doubleValue() > 0.0D) {
      this.logger.info("Delay start configured", new Object[0]);
      this.internalState.delayStart = true;
      this.delayStartTimer = new TimerOnce((Runnable)new aug(this), "Delay Start timer");
    } 
    UtilNetworking.setUserAgent(this.adjustConfig.userAgent);
    this.packageHandler = AdjustFactory.getPackageHandler(this, this.adjustConfig.context, toSendI(false));
    this.attributionHandler = AdjustFactory.getAttributionHandler(this, getAttributionPackageI(), toSendI(false));
    this.sdkClickHandler = AdjustFactory.getSdkClickHandler(this, toSendI(true));
    if (isToUpdatePackagesI())
      updatePackagesI(); 
    preLaunchActionsI(this.adjustConfig.preLaunchActionsArray);
    this.installReferrer = new InstallReferrer(this.adjustConfig.context, this);
    sendReftagReferrerI();
  }
  
  private boolean isEnabledI() {
    return (this.activityState != null) ? this.activityState.enabled : this.internalState.isEnabled();
  }
  
  private boolean isToUpdatePackagesI() {
    return (this.activityState != null) ? this.activityState.updatePackages : this.internalState.itHasToUpdatePackages();
  }
  
  private void launchAttributionListenerI(Handler paramHandler) {
    if (this.adjustConfig.onAttributionChangedListener == null)
      return; 
    paramHandler.post((Runnable)new aum(this));
  }
  
  private void launchAttributionResponseTasksI(AttributionResponseData paramAttributionResponseData) {
    updateAdidI(paramAttributionResponseData.adid);
    Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
    if (updateAttributionI(paramAttributionResponseData.attribution))
      launchAttributionListenerI(handler); 
    prepareDeeplinkI(paramAttributionResponseData.deeplink, handler);
  }
  
  private void launchDeeplinkMain(Intent paramIntent, Uri paramUri) {
    boolean bool;
    if (this.adjustConfig.context.getPackageManager().queryIntentActivities(paramIntent, 0).size() > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool) {
      this.logger.error("Unable to open deferred deep link (%s)", new Object[] { paramUri });
      return;
    } 
    this.logger.info("Open deferred deep link (%s)", new Object[] { paramUri });
    this.adjustConfig.context.startActivity(paramIntent);
  }
  
  private void launchEventResponseTasksI(EventResponseData paramEventResponseData) {
    updateAdidI(paramEventResponseData.adid);
    Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
    if (paramEventResponseData.success && this.adjustConfig.onEventTrackingSucceededListener != null) {
      this.logger.debug("Launching success event tracking listener", new Object[0]);
      handler.post((Runnable)new auh(this, paramEventResponseData));
      return;
    } 
    if (!paramEventResponseData.success && this.adjustConfig.onEventTrackingFailedListener != null) {
      this.logger.debug("Launching failed event tracking listener", new Object[0]);
      handler.post((Runnable)new auj(this, paramEventResponseData));
      return;
    } 
  }
  
  private void launchSdkClickResponseTasksI(SdkClickResponseData paramSdkClickResponseData) {
    updateAdidI(paramSdkClickResponseData.adid);
    Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
    if (updateAttributionI(paramSdkClickResponseData.attribution))
      launchAttributionListenerI(handler); 
  }
  
  private void launchSessionResponseListenerI(SessionResponseData paramSessionResponseData, Handler paramHandler) {
    if (paramSessionResponseData.success && this.adjustConfig.onSessionTrackingSucceededListener != null) {
      this.logger.debug("Launching success session tracking listener", new Object[0]);
      paramHandler.post((Runnable)new auk(this, paramSessionResponseData));
      return;
    } 
    if (!paramSessionResponseData.success && this.adjustConfig.onSessionTrackingFailedListener != null) {
      this.logger.debug("Launching failed session tracking listener", new Object[0]);
      paramHandler.post((Runnable)new aul(this, paramSessionResponseData));
      return;
    } 
  }
  
  private void launchSessionResponseTasksI(SessionResponseData paramSessionResponseData) {
    updateAdidI(paramSessionResponseData.adid);
    Handler handler = new Handler(this.adjustConfig.context.getMainLooper());
    if (updateAttributionI(paramSessionResponseData.attribution))
      launchAttributionListenerI(handler); 
    if (paramSessionResponseData.success)
      (new SharedPreferencesManager(getContext())).setInstallTracked(); 
    launchSessionResponseListenerI(paramSessionResponseData, handler);
    this.internalState.sessionResponseProcessed = true;
  }
  
  private void pauseSendingI() {
    this.attributionHandler.pauseSending();
    this.packageHandler.pauseSending();
    if (!toSendI(true)) {
      this.sdkClickHandler.pauseSending();
      return;
    } 
    this.sdkClickHandler.resumeSending();
  }
  
  private boolean pausedI() {
    return pausedI(false);
  }
  
  private boolean pausedI(boolean paramBoolean) {
    boolean bool = false;
    if (paramBoolean) {
      if (!this.internalState.isOffline()) {
        paramBoolean = bool;
        return !isEnabledI() ? true : paramBoolean;
      } 
    } else {
      if (!this.internalState.isOffline() && isEnabledI()) {
        paramBoolean = bool;
        return this.internalState.isInDelayedStart() ? true : paramBoolean;
      } 
      return true;
    } 
    return true;
  }
  
  private void preLaunchActionsI(List<IRunActivityHandler> paramList) {
    if (paramList != null) {
      Iterator<IRunActivityHandler> iterator = paramList.iterator();
      while (true) {
        if (iterator.hasNext()) {
          ((IRunActivityHandler)iterator.next()).run(this);
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void prepareDeeplinkI(Uri paramUri, Handler paramHandler) {
    if (paramUri == null)
      return; 
    this.logger.info("Deferred deeplink received (%s)", new Object[] { paramUri });
    paramHandler.post((Runnable)new aun(this, paramUri, createDeeplinkIntentI(paramUri)));
  }
  
  private void processSessionI() {
    long l1 = System.currentTimeMillis();
    if (this.activityState == null) {
      this.activityState = new ActivityState();
      SharedPreferencesManager sharedPreferencesManager = new SharedPreferencesManager(getContext());
      this.activityState.pushToken = sharedPreferencesManager.getPushToken();
      if (this.internalState.isEnabled()) {
        this.activityState.sessionCount = 1;
        transferSessionPackageI(l1);
      } 
      this.activityState.resetSessionAttributes(l1);
      this.activityState.enabled = this.internalState.isEnabled();
      this.activityState.updatePackages = this.internalState.itHasToUpdatePackages();
      writeActivityStateI();
      sharedPreferencesManager.removePushToken();
      return;
    } 
    long l2 = l1 - this.activityState.lastActivity;
    if (l2 < 0L) {
      this.logger.error("Time travel!", new Object[0]);
      this.activityState.lastActivity = l1;
      writeActivityStateI();
      return;
    } 
    if (l2 > SESSION_INTERVAL) {
      trackNewSessionI(l1);
      return;
    } 
    if (l2 > SUBSESSION_INTERVAL) {
      ActivityState activityState = this.activityState;
      activityState.subsessionCount++;
      activityState = this.activityState;
      activityState.sessionLength = l2 + activityState.sessionLength;
      this.activityState.lastActivity = l1;
      this.logger.verbose("Started subsession %d of session %d", new Object[] { Integer.valueOf(this.activityState.subsessionCount), Integer.valueOf(this.activityState.sessionCount) });
      writeActivityStateI();
      return;
    } 
    this.logger.verbose("Time span since last activity too short for a new subsession", new Object[0]);
  }
  
  private void readActivityStateI(Context paramContext) {
    try {
      this.activityState = Util.<ActivityState>readObject(paramContext, "AdjustIoActivityState", "Activity state", ActivityState.class);
      return;
    } catch (Exception exception) {
      this.logger.error("Failed to read %s file (%s)", new Object[] { "Activity state", exception.getMessage() });
      this.activityState = null;
      return;
    } 
  }
  
  private void readAttributionI(Context paramContext) {
    try {
      this.attribution = Util.<AdjustAttribution>readObject(paramContext, "AdjustAttribution", "Attribution", AdjustAttribution.class);
      return;
    } catch (Exception exception) {
      this.logger.error("Failed to read %s file (%s)", new Object[] { "Attribution", exception.getMessage() });
      this.attribution = null;
      return;
    } 
  }
  
  private void readConfigFile(Context paramContext) {
    try {
      InputStream inputStream = paramContext.getAssets().open("adjust_config.properties");
      Properties properties = new Properties();
      properties.load(inputStream);
      this.logger.verbose("adjust_config.properties file read and loaded", new Object[0]);
      String str = properties.getProperty("defaultTracker");
      if (str != null)
        this.adjustConfig.defaultTracker = str; 
      return;
    } catch (Exception exception) {
      this.logger.debug("%s file not found in this app", new Object[] { exception.getMessage() });
      return;
    } 
  }
  
  private void readOpenUrlI(Uri paramUri, long paramLong) {
    if (isEnabledI()) {
      ActivityPackage activityPackage = PackageFactory.buildDeeplinkSdkClickPackage(paramUri, paramLong, this.activityState, this.adjustConfig, this.deviceInfo, this.sessionParameters);
      if (activityPackage != null) {
        this.sdkClickHandler.sendSdkClick(activityPackage);
        return;
      } 
    } 
  }
  
  private void readSessionCallbackParametersI(Context paramContext) {
    try {
      this.sessionParameters.callbackParameters = Util.<Map<String, String>>readObject(paramContext, "AdjustSessionCallbackParameters", "Session Callback parameters", (Class)Map.class);
      return;
    } catch (Exception exception) {
      this.logger.error("Failed to read %s file (%s)", new Object[] { "Session Callback parameters", exception.getMessage() });
      this.sessionParameters.callbackParameters = null;
      return;
    } 
  }
  
  private void readSessionPartnerParametersI(Context paramContext) {
    try {
      this.sessionParameters.partnerParameters = Util.<Map<String, String>>readObject(paramContext, "AdjustSessionPartnerParameters", "Session Partner parameters", (Class)Map.class);
      return;
    } catch (Exception exception) {
      this.logger.error("Failed to read %s file (%s)", new Object[] { "Session Partner parameters", exception.getMessage() });
      this.sessionParameters.partnerParameters = null;
      return;
    } 
  }
  
  private void resumeSendingI() {
    this.attributionHandler.resumeSending();
    this.packageHandler.resumeSending();
    this.sdkClickHandler.resumeSending();
  }
  
  private void sendFirstPackagesI() {
    if (this.internalState.isNotInDelayedStart()) {
      this.logger.info("Start delay expired or never configured", new Object[0]);
      return;
    } 
    updatePackagesI();
    this.internalState.delayStart = false;
    this.delayStartTimer.cancel();
    this.delayStartTimer = null;
    updateHandlersStatusAndSendI();
  }
  
  private void sendInstallReferrerI(long paramLong1, long paramLong2, String paramString) {
    if (isEnabledI() && paramString != null && (paramLong1 != this.activityState.clickTime || paramLong2 != this.activityState.installBegin || !paramString.equals(this.activityState.installReferrer))) {
      ActivityPackage activityPackage = PackageFactory.buildInstallReferrerSdkClickPackage(paramString, paramLong1, paramLong2, this.activityState, this.adjustConfig, this.deviceInfo, this.sessionParameters);
      this.sdkClickHandler.sendSdkClick(activityPackage);
      return;
    } 
  }
  
  private void sendReftagReferrerI() {
    if (!isEnabledI())
      return; 
    this.sdkClickHandler.sendReftagReferrers();
  }
  
  private void setAskingAttributionI(boolean paramBoolean) {
    this.activityState.askingAttribution = paramBoolean;
    writeActivityStateI();
  }
  
  private void setEnabledI(boolean paramBoolean) {
    boolean bool2 = true;
    boolean bool1 = true;
    if (!hasChangedStateI(isEnabledI(), paramBoolean, "Adjust already enabled", "Adjust already disabled"))
      return; 
    this.internalState.enabled = paramBoolean;
    if (this.activityState == null) {
      if (!paramBoolean) {
        paramBoolean = bool1;
      } else {
        paramBoolean = false;
      } 
      updateStatusI(paramBoolean, "Handlers will start as paused due to the SDK being disabled", "Handlers will still start as paused", "Handlers will start as active due to the SDK being enabled");
      return;
    } 
    if (paramBoolean) {
      SharedPreferencesManager sharedPreferencesManager = new SharedPreferencesManager(getContext());
      if (!sharedPreferencesManager.getInstallTracked())
        trackNewSessionI(System.currentTimeMillis()); 
      String str = sharedPreferencesManager.getPushToken();
      if (str != null && !str.equals(this.activityState.pushToken))
        setPushToken(str, true); 
      if (sharedPreferencesManager.getRawReferrerArray() != null)
        sendReftagReferrer(); 
    } 
    this.activityState.enabled = paramBoolean;
    writeActivityStateI();
    if (!paramBoolean) {
      paramBoolean = bool2;
    } else {
      paramBoolean = false;
    } 
    updateStatusI(paramBoolean, "Pausing handlers due to SDK being disabled", "Handlers remain paused", "Resuming handlers due to SDK being enabled");
  }
  
  private void setOfflineModeI(boolean paramBoolean) {
    if (!hasChangedStateI(this.internalState.isOffline(), paramBoolean, "Adjust already in offline mode", "Adjust already in online mode"))
      return; 
    this.internalState.offline = paramBoolean;
    if (this.activityState == null) {
      updateStatusI(paramBoolean, "Handlers will start paused due to SDK being offline", "Handlers will still start as paused", "Handlers will start as active due to SDK being online");
      return;
    } 
    updateStatusI(paramBoolean, "Pausing handlers to put SDK offline mode", "Handlers remain paused", "Resuming handlers to put SDK in online mode");
  }
  
  private void setPushTokenI(String paramString) {
    if (checkActivityStateI(this.activityState) && isEnabledI() && paramString != null && !paramString.equals(this.activityState.pushToken)) {
      this.activityState.pushToken = paramString;
      writeActivityStateI();
      long l = System.currentTimeMillis();
      ActivityPackage activityPackage = (new avq(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, l)).b("push");
      this.packageHandler.addPackage(activityPackage);
      (new SharedPreferencesManager(getContext())).removePushToken();
      if (this.adjustConfig.eventBufferingEnabled) {
        this.logger.info("Buffered event %s", new Object[] { activityPackage.getSuffix() });
        return;
      } 
      this.packageHandler.sendFirstPackage();
      return;
    } 
  }
  
  private void startBackgroundTimerI() {
    if (this.backgroundTimer != null && toSendI() && this.backgroundTimer.getFireIn() <= 0L) {
      this.backgroundTimer.startIn(BACKGROUND_TIMER_INTERVAL);
      return;
    } 
  }
  
  private void startForegroundTimerI() {
    if (!isEnabledI())
      return; 
    this.foregroundTimer.start();
  }
  
  private void startI() {
    if (this.activityState != null && !this.activityState.enabled)
      return; 
    updateHandlersStatusAndSendI();
    processSessionI();
    checkAttributionStateI();
  }
  
  private void stopBackgroundTimerI() {
    if (this.backgroundTimer == null)
      return; 
    this.backgroundTimer.cancel();
  }
  
  private void stopForegroundTimerI() {
    this.foregroundTimer.suspend();
  }
  
  private void teardownActivityStateS(boolean paramBoolean) {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/ActivityState
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield activityState : Lcom/adjust/sdk/ActivityState;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/ActivityState
    //   14: monitorexit
    //   15: return
    //   16: iload_1
    //   17: ifeq -> 48
    //   20: aload_0
    //   21: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   24: ifnull -> 48
    //   27: aload_0
    //   28: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   31: getfield context : Landroid/content/Context;
    //   34: ifnull -> 48
    //   37: aload_0
    //   38: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   41: getfield context : Landroid/content/Context;
    //   44: invokestatic deleteActivityState : (Landroid/content/Context;)Z
    //   47: pop
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield activityState : Lcom/adjust/sdk/ActivityState;
    //   53: ldc_w com/adjust/sdk/ActivityState
    //   56: monitorexit
    //   57: return
    //   58: astore_2
    //   59: ldc_w com/adjust/sdk/ActivityState
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	58	finally
    //   20	48	58	finally
    //   48	57	58	finally
    //   59	63	58	finally
  }
  
  private void teardownAllSessionParametersS(boolean paramBoolean) {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/SessionParameters
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield sessionParameters : Lcom/adjust/sdk/SessionParameters;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/SessionParameters
    //   14: monitorexit
    //   15: return
    //   16: iload_1
    //   17: ifeq -> 59
    //   20: aload_0
    //   21: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   24: ifnull -> 59
    //   27: aload_0
    //   28: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   31: getfield context : Landroid/content/Context;
    //   34: ifnull -> 59
    //   37: aload_0
    //   38: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   41: getfield context : Landroid/content/Context;
    //   44: invokestatic deleteSessionCallbackParameters : (Landroid/content/Context;)Z
    //   47: pop
    //   48: aload_0
    //   49: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   52: getfield context : Landroid/content/Context;
    //   55: invokestatic deleteSessionPartnerParameters : (Landroid/content/Context;)Z
    //   58: pop
    //   59: aload_0
    //   60: aconst_null
    //   61: putfield sessionParameters : Lcom/adjust/sdk/SessionParameters;
    //   64: ldc_w com/adjust/sdk/SessionParameters
    //   67: monitorexit
    //   68: return
    //   69: astore_2
    //   70: ldc_w com/adjust/sdk/SessionParameters
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	69	finally
    //   20	59	69	finally
    //   59	68	69	finally
    //   70	74	69	finally
  }
  
  private void teardownAttributionS(boolean paramBoolean) {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/AdjustAttribution
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield attribution : Lcom/adjust/sdk/AdjustAttribution;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/AdjustAttribution
    //   14: monitorexit
    //   15: return
    //   16: iload_1
    //   17: ifeq -> 48
    //   20: aload_0
    //   21: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   24: ifnull -> 48
    //   27: aload_0
    //   28: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   31: getfield context : Landroid/content/Context;
    //   34: ifnull -> 48
    //   37: aload_0
    //   38: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   41: getfield context : Landroid/content/Context;
    //   44: invokestatic deleteAttribution : (Landroid/content/Context;)Z
    //   47: pop
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield attribution : Lcom/adjust/sdk/AdjustAttribution;
    //   53: ldc_w com/adjust/sdk/AdjustAttribution
    //   56: monitorexit
    //   57: return
    //   58: astore_2
    //   59: ldc_w com/adjust/sdk/AdjustAttribution
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	58	finally
    //   20	48	58	finally
    //   48	57	58	finally
    //   59	63	58	finally
  }
  
  private boolean toSendI() {
    return toSendI(false);
  }
  
  private boolean toSendI(boolean paramBoolean) {
    return pausedI(paramBoolean) ? false : (this.adjustConfig.sendInBackground ? true : this.internalState.isInForeground());
  }
  
  private void trackEventI(AdjustEvent paramAdjustEvent) {
    if (checkActivityStateI(this.activityState) && isEnabledI() && checkEventI(paramAdjustEvent) && checkOrderIdI(paramAdjustEvent.orderId)) {
      long l = System.currentTimeMillis();
      ActivityState activityState = this.activityState;
      activityState.eventCount++;
      updateActivityStateI(l);
      ActivityPackage activityPackage = (new avq(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, l)).a(paramAdjustEvent, this.internalState.isInDelayedStart());
      this.packageHandler.addPackage(activityPackage);
      if (this.adjustConfig.eventBufferingEnabled) {
        this.logger.info("Buffered event %s", new Object[] { activityPackage.getSuffix() });
      } else {
        this.packageHandler.sendFirstPackage();
      } 
      if (this.adjustConfig.sendInBackground && this.internalState.isInBackground())
        startBackgroundTimerI(); 
      writeActivityStateI();
      return;
    } 
  }
  
  private void trackNewSessionI(long paramLong) {
    long l = this.activityState.lastActivity;
    ActivityState activityState = this.activityState;
    activityState.sessionCount++;
    this.activityState.lastInterval = paramLong - l;
    transferSessionPackageI(paramLong);
    this.activityState.resetSessionAttributes(paramLong);
    writeActivityStateI();
  }
  
  private void transferSessionPackageI(long paramLong) {
    ActivityPackage activityPackage = (new avq(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, paramLong)).a(this.internalState.isInDelayedStart());
    this.packageHandler.addPackage(activityPackage);
    this.packageHandler.sendFirstPackage();
  }
  
  private boolean updateActivityStateI(long paramLong) {
    if (checkActivityStateI(this.activityState)) {
      long l = paramLong - this.activityState.lastActivity;
      if (l <= SESSION_INTERVAL) {
        this.activityState.lastActivity = paramLong;
        if (l < 0L) {
          this.logger.error("Time travel!", new Object[0]);
          return true;
        } 
        ActivityState activityState = this.activityState;
        activityState.sessionLength += l;
        activityState = this.activityState;
        activityState.timeSpent = l + activityState.timeSpent;
        return true;
      } 
    } 
    return false;
  }
  
  private void updateAdidI(String paramString) {
    if (paramString != null && !paramString.equals(this.activityState.adid)) {
      this.activityState.adid = paramString;
      writeActivityStateI();
      return;
    } 
  }
  
  private void updateHandlersStatusAndSendI() {
    if (!toSendI()) {
      pauseSendingI();
      return;
    } 
    resumeSendingI();
    if (this.internalState.isFirstLaunch() && this.internalState.hasSessionResponseNotBeenProcessed())
      this.packageHandler.sendFirstPackage(); 
    if (!this.adjustConfig.eventBufferingEnabled) {
      this.packageHandler.sendFirstPackage();
      return;
    } 
  }
  
  private void updatePackagesI() {
    this.packageHandler.updatePackages(this.sessionParameters);
    this.internalState.updatePackages = false;
    if (this.activityState != null) {
      this.activityState.updatePackages = false;
      writeActivityStateI();
    } 
  }
  
  private void updateStatusI(boolean paramBoolean, String paramString1, String paramString2, String paramString3) {
    if (paramBoolean) {
      this.logger.info(paramString1, new Object[0]);
    } else if (pausedI(false)) {
      if (pausedI(true)) {
        this.logger.info(paramString2, new Object[0]);
      } else {
        this.logger.info(paramString2 + ", except the Sdk Click Handler", new Object[0]);
      } 
    } else {
      this.logger.info(paramString3, new Object[0]);
    } 
    updateHandlersStatusAndSendI();
  }
  
  private void writeActivityStateI() {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/ActivityState
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield activityState : Lcom/adjust/sdk/ActivityState;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/ActivityState
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: getfield activityState : Lcom/adjust/sdk/ActivityState;
    //   20: aload_0
    //   21: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   24: getfield context : Landroid/content/Context;
    //   27: ldc_w 'AdjustIoActivityState'
    //   30: ldc 'Activity state'
    //   32: invokestatic writeObject : (Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   35: ldc_w com/adjust/sdk/ActivityState
    //   38: monitorexit
    //   39: return
    //   40: astore_1
    //   41: ldc_w com/adjust/sdk/ActivityState
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	40	finally
    //   16	39	40	finally
    //   41	45	40	finally
  }
  
  private void writeAttributionI() {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/AdjustAttribution
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield attribution : Lcom/adjust/sdk/AdjustAttribution;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/AdjustAttribution
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: getfield attribution : Lcom/adjust/sdk/AdjustAttribution;
    //   20: aload_0
    //   21: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   24: getfield context : Landroid/content/Context;
    //   27: ldc_w 'AdjustAttribution'
    //   30: ldc 'Attribution'
    //   32: invokestatic writeObject : (Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   35: ldc_w com/adjust/sdk/AdjustAttribution
    //   38: monitorexit
    //   39: return
    //   40: astore_1
    //   41: ldc_w com/adjust/sdk/AdjustAttribution
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	40	finally
    //   16	39	40	finally
    //   41	45	40	finally
  }
  
  private void writeSessionCallbackParametersI() {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/SessionParameters
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield sessionParameters : Lcom/adjust/sdk/SessionParameters;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/SessionParameters
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: getfield sessionParameters : Lcom/adjust/sdk/SessionParameters;
    //   20: getfield callbackParameters : Ljava/util/Map;
    //   23: aload_0
    //   24: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   27: getfield context : Landroid/content/Context;
    //   30: ldc_w 'AdjustSessionCallbackParameters'
    //   33: ldc 'Session Callback parameters'
    //   35: invokestatic writeObject : (Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   38: ldc_w com/adjust/sdk/SessionParameters
    //   41: monitorexit
    //   42: return
    //   43: astore_1
    //   44: ldc_w com/adjust/sdk/SessionParameters
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	43	finally
    //   16	42	43	finally
    //   44	48	43	finally
  }
  
  private void writeSessionPartnerParametersI() {
    // Byte code:
    //   0: ldc_w com/adjust/sdk/SessionParameters
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield sessionParameters : Lcom/adjust/sdk/SessionParameters;
    //   8: ifnonnull -> 16
    //   11: ldc_w com/adjust/sdk/SessionParameters
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: getfield sessionParameters : Lcom/adjust/sdk/SessionParameters;
    //   20: getfield partnerParameters : Ljava/util/Map;
    //   23: aload_0
    //   24: getfield adjustConfig : Lcom/adjust/sdk/AdjustConfig;
    //   27: getfield context : Landroid/content/Context;
    //   30: ldc_w 'AdjustSessionPartnerParameters'
    //   33: ldc 'Session Partner parameters'
    //   35: invokestatic writeObject : (Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   38: ldc_w com/adjust/sdk/SessionParameters
    //   41: monitorexit
    //   42: return
    //   43: astore_1
    //   44: ldc_w com/adjust/sdk/SessionParameters
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Exception table:
    //   from	to	target	type
    //   4	15	43	finally
    //   16	42	43	finally
    //   44	48	43	finally
  }
  
  public void addSessionCallbackParameter(String paramString1, String paramString2) {
    this.scheduledExecutor.submit((Runnable)new att(this, paramString1, paramString2));
  }
  
  public void addSessionCallbackParameterI(String paramString1, String paramString2) {
    if (Util.isValidParameter(paramString1, "key", "Session Callback") && Util.isValidParameter(paramString2, "value", "Session Callback")) {
      if (this.sessionParameters.callbackParameters == null)
        this.sessionParameters.callbackParameters = new LinkedHashMap<String, String>(); 
      String str = this.sessionParameters.callbackParameters.get(paramString1);
      if (paramString2.equals(str)) {
        this.logger.verbose("Key %s already present with the same value", new Object[] { paramString1 });
        return;
      } 
      if (str != null)
        this.logger.warn("Key %s will be overwritten", new Object[] { paramString1 }); 
      this.sessionParameters.callbackParameters.put(paramString1, paramString2);
      writeSessionCallbackParametersI();
      return;
    } 
  }
  
  public void addSessionPartnerParameter(String paramString1, String paramString2) {
    this.scheduledExecutor.submit((Runnable)new atu(this, paramString1, paramString2));
  }
  
  public void addSessionPartnerParameterI(String paramString1, String paramString2) {
    if (Util.isValidParameter(paramString1, "key", "Session Partner") && Util.isValidParameter(paramString2, "value", "Session Partner")) {
      if (this.sessionParameters.partnerParameters == null)
        this.sessionParameters.partnerParameters = new LinkedHashMap<String, String>(); 
      String str = this.sessionParameters.partnerParameters.get(paramString1);
      if (paramString2.equals(str)) {
        this.logger.verbose("Key %s already present with the same value", new Object[] { paramString1 });
        return;
      } 
      if (str != null)
        this.logger.warn("Key %s will be overwritten", new Object[] { paramString1 }); 
      this.sessionParameters.partnerParameters.put(paramString1, paramString2);
      writeSessionPartnerParametersI();
      return;
    } 
  }
  
  public void backgroundTimerFired() {
    this.scheduledExecutor.submit((Runnable)new auc(this));
  }
  
  public void finishedTrackingActivity(ResponseData paramResponseData) {
    if (paramResponseData instanceof SessionResponseData) {
      this.attributionHandler.checkSessionResponse((SessionResponseData)paramResponseData);
      return;
    } 
    if (paramResponseData instanceof SdkClickResponseData) {
      checkForInstallReferrerInfo((SdkClickResponseData)paramResponseData);
      this.attributionHandler.checkSdkClickResponse((SdkClickResponseData)paramResponseData);
      return;
    } 
    if (paramResponseData instanceof EventResponseData) {
      launchEventResponseTasks((EventResponseData)paramResponseData);
      return;
    } 
  }
  
  public void foregroundTimerFired() {
    this.scheduledExecutor.submit((Runnable)new aub(this));
  }
  
  public ActivityState getActivityState() {
    return this.activityState;
  }
  
  public String getAdid() {
    return (this.activityState == null) ? null : this.activityState.adid;
  }
  
  public AdjustConfig getAdjustConfig() {
    return this.adjustConfig;
  }
  
  public AdjustAttribution getAttribution() {
    return this.attribution;
  }
  
  public ActivityPackage getAttributionPackageI() {
    long l = System.currentTimeMillis();
    return (new avq(this.adjustConfig, this.deviceInfo, this.activityState, this.sessionParameters, l)).a();
  }
  
  public Context getContext() {
    return this.adjustConfig.context;
  }
  
  public avo getDeviceInfo() {
    return this.deviceInfo;
  }
  
  public ActivityHandler$InternalState getInternalState() {
    return this.internalState;
  }
  
  public SessionParameters getSessionParameters() {
    return this.sessionParameters;
  }
  
  public void init(AdjustConfig paramAdjustConfig) {
    this.adjustConfig = paramAdjustConfig;
  }
  
  public boolean isEnabled() {
    return isEnabledI();
  }
  
  public void launchAttributionResponseTasks(AttributionResponseData paramAttributionResponseData) {
    this.scheduledExecutor.submit((Runnable)new atr(this, paramAttributionResponseData));
  }
  
  public void launchEventResponseTasks(EventResponseData paramEventResponseData) {
    this.scheduledExecutor.submit((Runnable)new ato(this, paramEventResponseData));
  }
  
  public void launchSdkClickResponseTasks(SdkClickResponseData paramSdkClickResponseData) {
    this.scheduledExecutor.submit((Runnable)new atp(this, paramSdkClickResponseData));
  }
  
  public void launchSessionResponseTasks(SessionResponseData paramSessionResponseData) {
    this.scheduledExecutor.submit((Runnable)new atq(this, paramSessionResponseData));
  }
  
  public void onPause() {
    this.internalState.background = true;
    this.scheduledExecutor.submit((Runnable)new aui(this));
  }
  
  public void onResume() {
    this.internalState.background = false;
    this.scheduledExecutor.submit((Runnable)new atx(this));
  }
  
  public void readOpenUrl(Uri paramUri, long paramLong) {
    this.scheduledExecutor.submit((Runnable)new aur(this, paramUri, paramLong));
  }
  
  public void removeSessionCallbackParameter(String paramString) {
    this.scheduledExecutor.submit((Runnable)new atv(this, paramString));
  }
  
  public void removeSessionCallbackParameterI(String paramString) {
    if (!Util.isValidParameter(paramString, "key", "Session Callback"))
      return; 
    if (this.sessionParameters.callbackParameters == null) {
      this.logger.warn("Session Callback parameters are not set", new Object[0]);
      return;
    } 
    if ((String)this.sessionParameters.callbackParameters.remove(paramString) == null) {
      this.logger.warn("Key %s does not exist", new Object[] { paramString });
      return;
    } 
    this.logger.debug("Key %s will be removed", new Object[] { paramString });
    writeSessionCallbackParametersI();
  }
  
  public void removeSessionPartnerParameter(String paramString) {
    this.scheduledExecutor.submit((Runnable)new atw(this, paramString));
  }
  
  public void removeSessionPartnerParameterI(String paramString) {
    if (!Util.isValidParameter(paramString, "key", "Session Partner"))
      return; 
    if (this.sessionParameters.partnerParameters == null) {
      this.logger.warn("Session Partner parameters are not set", new Object[0]);
      return;
    } 
    if ((String)this.sessionParameters.partnerParameters.remove(paramString) == null) {
      this.logger.warn("Key %s does not exist", new Object[] { paramString });
      return;
    } 
    this.logger.debug("Key %s will be removed", new Object[] { paramString });
    writeSessionPartnerParametersI();
  }
  
  public void resetSessionCallbackParameters() {
    this.scheduledExecutor.submit((Runnable)new aty(this));
  }
  
  public void resetSessionCallbackParametersI() {
    if (this.sessionParameters.callbackParameters == null)
      this.logger.warn("Session Callback parameters are not set", new Object[0]); 
    this.sessionParameters.callbackParameters = null;
    writeSessionCallbackParametersI();
  }
  
  public void resetSessionPartnerParameters() {
    this.scheduledExecutor.submit((Runnable)new atz(this));
  }
  
  public void resetSessionPartnerParametersI() {
    if (this.sessionParameters.partnerParameters == null)
      this.logger.warn("Session Partner parameters are not set", new Object[0]); 
    this.sessionParameters.partnerParameters = null;
    writeSessionPartnerParametersI();
  }
  
  public void sendFirstPackages() {
    this.scheduledExecutor.submit((Runnable)new ats(this));
  }
  
  public void sendInstallReferrer(long paramLong1, long paramLong2, String paramString) {
    this.scheduledExecutor.submit((Runnable)new atn(this, paramLong1, paramLong2, paramString));
  }
  
  public void sendReftagReferrer() {
    this.scheduledExecutor.submit((Runnable)new aut(this));
  }
  
  public void setAskingAttribution(boolean paramBoolean) {
    this.scheduledExecutor.submit((Runnable)new aus(this, paramBoolean));
  }
  
  public void setEnabled(boolean paramBoolean) {
    this.scheduledExecutor.submit((Runnable)new aup(this, paramBoolean));
  }
  
  public void setOfflineMode(boolean paramBoolean) {
    this.scheduledExecutor.submit((Runnable)new auq(this, paramBoolean));
  }
  
  public void setPushToken(String paramString, boolean paramBoolean) {
    this.scheduledExecutor.submit((Runnable)new aua(this, paramBoolean, paramString));
  }
  
  public void teardown(boolean paramBoolean) {
    if (this.backgroundTimer != null)
      this.backgroundTimer.teardown(); 
    if (this.foregroundTimer != null)
      this.foregroundTimer.teardown(); 
    if (this.delayStartTimer != null)
      this.delayStartTimer.teardown(); 
    if (this.scheduledExecutor != null)
      try {
        this.scheduledExecutor.shutdownNow();
      } catch (SecurityException securityException) {} 
    if (this.packageHandler != null)
      this.packageHandler.teardown(paramBoolean); 
    if (this.attributionHandler != null)
      this.attributionHandler.teardown(); 
    if (this.sdkClickHandler != null)
      this.sdkClickHandler.teardown(); 
    if (this.sessionParameters != null) {
      if (this.sessionParameters.callbackParameters != null)
        this.sessionParameters.callbackParameters.clear(); 
      if (this.sessionParameters.partnerParameters != null)
        this.sessionParameters.partnerParameters.clear(); 
    } 
    teardownActivityStateS(paramBoolean);
    teardownAttributionS(paramBoolean);
    teardownAllSessionParametersS(paramBoolean);
    if (paramBoolean)
      (new SharedPreferencesManager(getContext())).clear(); 
    this.packageHandler = null;
    this.logger = null;
    this.foregroundTimer = null;
    this.scheduledExecutor = null;
    this.backgroundTimer = null;
    this.delayStartTimer = null;
    this.internalState = null;
    this.deviceInfo = null;
    this.adjustConfig = null;
    this.attributionHandler = null;
    this.sdkClickHandler = null;
    this.sessionParameters = null;
  }
  
  public void trackEvent(AdjustEvent paramAdjustEvent) {
    this.scheduledExecutor.submit((Runnable)new auo(this, paramAdjustEvent));
  }
  
  public boolean updateAttributionI(AdjustAttribution paramAdjustAttribution) {
    if (paramAdjustAttribution != null && !paramAdjustAttribution.equals(this.attribution)) {
      this.attribution = paramAdjustAttribution;
      writeAttributionI();
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ActivityHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */