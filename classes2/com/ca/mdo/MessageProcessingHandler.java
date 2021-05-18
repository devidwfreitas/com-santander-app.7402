package com.ca.mdo;

import android.annotation.TargetApi;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.ca.integration.CaMDOCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class MessageProcessingHandler extends Handler {
  public static String API_CALLBACK = "api_callback";
  
  private boolean initSuccess = false;
  
  private AppDeviceData mAppDeviceData;
  
  private PersistenceManager persistenceManager;
  
  private SessionManager sessionManager;
  
  public MessageProcessingHandler(Looper paramLooper, Context paramContext) {
    super(paramLooper);
    this.sessionManager = new SessionManager(paramContext);
    this.persistenceManager = CAMobileDevOps.getPersistenceManager();
    this.persistenceManager.sessionManager = this.sessionManager;
  }
  
  @TargetApi(8)
  private void crash(JSONObject paramJSONObject) {
    this.sessionManager.setCrashed(true);
    this.persistenceManager.persistEvent(this.sessionManager.getLastSessionID(), this.persistenceManager.buildEvent(paramJSONObject), 3, "evt");
    this.sessionManager.putLastSessionTime(System.currentTimeMillis());
  }
  
  private void customEvent(JSONObject paramJSONObject) {
    if (this.initSuccess && (this.sessionManager.mIsSessionOpen || !this.sessionManager.getLastSessionID().equals("unknown"))) {
      try {
        JSONObject jSONObject1 = paramJSONObject.getJSONObject("p");
        JSONObject jSONObject2 = new JSONObject();
        CAMobileDevOps.setScreenNames(jSONObject2, null, false, null);
        this.persistenceManager.buildEvtTypeCustom(paramJSONObject.getString("e"), jSONObject1, System.currentTimeMillis(), jSONObject2);
      } catch (JSONException jSONException) {
        CALog.e("JSON exception:" + jSONException);
      } 
      this.persistenceManager.persistEvent(this.sessionManager.mSessionID, paramJSONObject, 0, "evt");
      return;
    } 
  }
  
  private void customerFeedback(JSONObject paramJSONObject) {
    if (!this.initSuccess)
      return; 
    String str = CAMobileDevOps.getCrashedSession();
    if (str != null)
      this.persistenceManager.persistEvent(str, this.persistenceManager.buildEvent(paramJSONObject), 0, "evt"); 
    CAMobileDevOps.reSetCrashedSession();
  }
  
  private void endCurrentSession() {
    this.sessionManager.endSession();
  }
  
  private void generalEvents(JSONObject paramJSONObject) {
    try {
      if (!this.initSuccess)
        return; 
      if (this.sessionManager.mIsSessionOpen || !this.sessionManager.getLastSessionID().equals("unknown")) {
        this.persistenceManager.persistEvent(this.sessionManager.mSessionID, this.persistenceManager.buildEvent(paramJSONObject), 0, "evt");
        if (paramJSONObject != null && paramJSONObject.has("n") && "sdk_disabled".equals(paramJSONObject.get("n"))) {
          onSDKDisabledEventPersistence();
          return;
        } 
      } 
    } catch (JSONException jSONException) {
      CALog.e("Exception while checking if even is SDK_DISABLED" + jSONException, (Throwable)jSONException);
    } 
  }
  
  private void httpPerformance(JSONObject paramJSONObject) {
    if (!this.initSuccess)
      return; 
    if (PolicyUtil.getPolicyManager((Context)SDK.getApp()).isNetworkStatsEnabled()) {
      this.persistenceManager.persistEvent(this.sessionManager.mSessionID, this.persistenceManager.buildEvent(paramJSONObject), 0, "evt");
      return;
    } 
    throw new CaMDOException(CaMDOError.CAMDO_LOG_NETWORKMETRIC_ERROR_CODE);
  }
  
  private void init() {
    String str;
    this.mAppDeviceData = CAMobileDevOps.getmAppDeviceData();
    if (this.mAppDeviceData == null) {
      str = "AppDeviceDate is not initialized , please check";
    } else {
      str = this.mAppDeviceData.toString();
    } 
    CALog.d(str);
    CALog.v("Application and Device data initialized");
    CAMobileDevOps.mJailBroken = Util.isJailBroken();
    this.initSuccess = true;
    CALog.d("init completed");
  }
  
  private boolean isAnyUploadSuccessful(ArrayList<SessionUploadInfo> paramArrayList) {
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramArrayList != null) {
      Iterator<SessionUploadInfo> iterator = paramArrayList.iterator();
      while (true) {
        bool2 = bool1;
        if (iterator.hasNext()) {
          SessionUploadInfo sessionUploadInfo = iterator.next();
          if (!bool1) {
            if (sessionUploadInfo.getStatusCode() < 300 && sessionUploadInfo.getStatusCode() > 0) {
              bool1 = true;
              continue;
            } 
            bool1 = false;
          } 
          continue;
        } 
        break;
      } 
    } 
    return bool2;
  }
  
  private void onPause(JSONObject paramJSONObject) {
    if (this.initSuccess) {
      long l = System.currentTimeMillis();
      CALog.v("LastSessionTime" + l);
      this.sessionManager.putLastSessionTime(l);
      try {
        System.currentTimeMillis();
        this.persistenceManager.persistEvent(this.sessionManager.mSessionID, this.persistenceManager.buildEvent(paramJSONObject), 0, "evt");
        PolicyUtil.getPolicyManager((Context)SDK.getApp());
        if (PolicyManager.isAutoASATEnabled()) {
          CAMobileDevOps.stopApplicationTransaction(paramJSONObject.getString("v"), null, true, null);
          return;
        } 
        return;
      } catch (JSONException jSONException) {
        CALog.e(jSONException.toString(), (Throwable)jSONException);
        return;
      } 
    } 
  }
  
  private void onSDKDisabledEventPersistence() {
    endCurrentSession();
    uploadData(null);
  }
  
  private void process(Map<String, Object> paramMap) {
    JSONObject jSONObject = null;
    Long long_3 = null;
    if (paramMap != null) {
      jSONObject = (JSONObject)paramMap.get("jsonObj");
      long_3 = (Long)paramMap.get("currentTimeStamp");
    } 
    Long long_2 = long_3;
    if (long_3 == null)
      long_2 = Long.valueOf(System.currentTimeMillis()); 
    CAMobileDevOps.setSessionProcessed(true);
    if (!this.initSuccess)
      return; 
    try {
      uploadData(null);
    } catch (CaMDOException caMDOException) {
    
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return;
    } 
    boolean bool2 = false;
    boolean bool = SDK.firstLaunch;
    long l1 = this.sessionManager.getLastSessionTime();
    long l2 = PolicyUtil.getPolicyManager((Context)SDK.getApp()).getSessionTimeout();
    CALog.v("SessionStartTime=" + throwable + "lastSessionTime = " + l1 + "Difference" + (throwable.longValue() - l1) + "Session Timeout" + l2);
    boolean bool3 = false;
    if (throwable.longValue() - l1 < l2)
      bool3 = true; 
    CALog.v("Reopen" + bool3);
    boolean bool1 = bool2;
    if (jSONObject != null) {
      bool1 = bool2;
      if (jSONObject.has("SDK_GOT_ENABLED"))
        bool1 = true; 
    } 
    if (this.sessionManager.mIsCrashed) {
      bool3 = false;
      CALog.d("crashed, setting reopen session to false");
      this.sessionManager.reportSessionCrashAsCustomerFeedback(l1);
    } 
    if (bool3 && !bool) {
      this.sessionManager.reOpenSession();
    } else {
      CALog.v("LastSessionTime" + l1);
      if (!this.sessionManager.mIsCrashed && l1 != -1L && !bool1)
        this.sessionManager.endSession(); 
      if (this.sessionManager.mIsCrashed)
        this.sessionManager.setCrashed(false); 
      CALog.d("Starting a new session");
      this.sessionManager.startSession(throwable.longValue());
      SDK.firstLaunch = false;
    } 
    this.sessionManager.mIsSessionOpen = true;
    long_3 = Long.valueOf(sendStartupTime(throwable.longValue()));
    Long long_1 = long_3;
    if (jSONObject != null) {
      long_1 = long_3;
      if (!bool1)
        long_1 = Long.valueOf(long_3.longValue() + 1L); 
    } 
    sendOrientationData(long_1.longValue());
    CAMobileDevOps.currentSessionId = this.sessionManager.mSessionID;
    CALog.d("Persisting session with ID:" + this.sessionManager.mSessionID);
    sendAppIcon();
  }
  
  private void processLocationChanges(int paramInt) {
    boolean bool = false;
    try {
      if (SDK.getApp().checkPermission("android.permission.ACCESS_COARSE_LOCATION", Process.myPid(), Process.myUid()) == 0)
        bool = true; 
      if (CAMobileDevOps.locationTracker != null && bool) {
        if ((paramInt <= 1 && CAMobileDevOps.locationTracker.trackingLocation) || CAMobileDevOps.isInPrivateZone())
          CAMobileDevOps.locationTracker.stopTrackingUpdates(); 
        if (paramInt > 1 && !CAMobileDevOps.locationTracker.trackingLocation && !CAMobileDevOps.isInPrivateZone())
          CAMobileDevOps.locationTracker.startTrackingUpdates(paramInt); 
      } 
      return;
    } catch (Exception exception) {
      CALog.e("unable to track location changes");
      return;
    } 
  }
  
  private void sendAppIcon() {
    if (!Util.getSharedPreferences().getBoolean(Constants.PREF_APPICON, false)) {
      JSONObject jSONObject = new JSONObject();
      CAMobileDevOps.setScreenNames(jSONObject, null, false, null);
      String str = AppDeviceData.getAppIcon();
      long l = System.currentTimeMillis();
      if (str != null) {
        jSONObject = this.persistenceManager.buildEvent("app_icon", str, l, "app_events", jSONObject);
        this.persistenceManager.persistEvent(this.sessionManager.mSessionID, jSONObject, 0, "evt");
        Util.getSharedPreferencesEditor().putBoolean(Constants.PREF_APPICON, true).commit();
      } 
    } 
  }
  
  private long sendCurrentView(JSONObject paramJSONObject, long paramLong) throws JSONException {
    CAMobileDevOps.mCurrentViewName = paramJSONObject.getString("v");
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("passovercsn", paramJSONObject.get("passovercsn"));
      jSONObject.put("passoverpsn", paramJSONObject.get("passoverpsn"));
      jSONObject.put("slt", paramJSONObject.get("slt"));
    } catch (Exception exception) {}
    paramJSONObject = this.persistenceManager.buildEvent(paramJSONObject.getString("n"), CAMobileDevOps.mCurrentViewName, paramLong, "view_events", jSONObject);
    this.persistenceManager.persistEvent(this.sessionManager.mSessionID, paramJSONObject, 0, "evt");
    return paramLong + 1L;
  }
  
  private void sendOrientationData(long paramLong) {
    AppDeviceData appDeviceData = this.mAppDeviceData;
    int i = AppDeviceData.getDeviceOrientation();
    if (i != CAMobileDevOps.mOrientation) {
      JSONObject jSONObject = new JSONObject();
      CAMobileDevOps.setScreenNames(jSONObject, null, false, null);
      PersistenceManager persistenceManager = this.persistenceManager;
      AppDeviceData appDeviceData1 = this.mAppDeviceData;
      jSONObject = persistenceManager.buildEvent("or", AppDeviceData.getDeviceOrientationString(i), paramLong, "app_events", jSONObject);
      this.persistenceManager.persistEvent(this.sessionManager.mSessionID, jSONObject, 0, "evt");
      CAMobileDevOps.mOrientation = i;
    } 
  }
  
  private long sendStartupTime(long paramLong) {
    long l = paramLong;
    if (CAMobileDevOps.mIsFirstLaunch.getAndSet(false)) {
      JSONObject jSONObject = new JSONObject();
      CAMobileDevOps.setScreenNames(jSONObject, null, false, null);
      PersistenceManager persistenceManager = this.persistenceManager;
      String str = Long.toString(CAMobileDevOps.mStartupTime);
      long l1 = paramLong + 1L;
      jSONObject = persistenceManager.buildEvent("app_start", str, paramLong, "app_events", jSONObject);
      this.persistenceManager.persistEvent(this.sessionManager.mSessionID, jSONObject, 0, "evt");
      jSONObject = new JSONObject();
      CAMobileDevOps.setScreenNames(jSONObject, null, false, null);
      persistenceManager = this.persistenceManager;
      boolean bool = CAMobileDevOps.mJailBroken;
      l = l1 + 1L;
      jSONObject = persistenceManager.buildEvent("jailbroken", String.valueOf(bool), l1, "app_events", jSONObject);
      this.persistenceManager.persistEvent(this.sessionManager.mSessionID, jSONObject, 0, "evt");
    } 
    return l;
  }
  
  private void startNewSession() {
    if (this.sessionManager != null)
      this.sessionManager.startSession(System.currentTimeMillis()); 
  }
  
  private void stopCurrentAndStartNewSession() {
    if (this.sessionManager != null) {
      this.sessionManager.endSession();
      this.sessionManager.startSession(System.currentTimeMillis());
    } 
  }
  
  private void stopCurrentSession() {
    if (this.sessionManager != null) {
      this.sessionManager.endSession();
      this.sessionManager.mSessionID = null;
    } 
  }
  
  private void transactionStart(JSONObject paramJSONObject) {
    if (!this.initSuccess)
      return; 
    if (!this.sessionManager.mIsSessionOpen && this.sessionManager.getLastSessionID().equals("unknown"))
      throw new CaMDOException(CaMDOError.CAMDO_START_TRANSACTION_FAILED_ERROR_CODE); 
    this.persistenceManager.persistEvent(this.sessionManager.mSessionID, paramJSONObject, 7, "evt");
  }
  
  private void transactionStop(JSONObject paramJSONObject) {
    if (!this.initSuccess)
      return; 
    if (!this.sessionManager.mIsSessionOpen && this.sessionManager.getLastSessionID().equals("unknown"))
      throw new CaMDOException(CaMDOError.CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE); 
    this.persistenceManager.persistEvent(this.sessionManager.mSessionID, paramJSONObject, 8, "evt");
  }
  
  private void updateCustomerHeader() {
    try {
      if (this.sessionManager != null && this.sessionManager.mSessionID != null) {
        if (this.sessionManager.mSessionID.trim().equalsIgnoreCase(""))
          return; 
        JSONObject jSONObject = new JSONObject();
        Location location = CAMobileDevOps.getLocation();
        this.sessionManager.setHeader(this.sessionManager.mSessionID, jSONObject, 0L, 23, location);
        CAMobileDevOps.getDatabaseService().updateEvent(jSONObject);
        return;
      } 
    } catch (Exception exception) {
      CALog.e(exception.getMessage());
    } 
  }
  
  private void updateCustomerLocation(Location paramLocation) {
    try {
      if (this.sessionManager != null && this.sessionManager.mSessionID != null) {
        if (this.sessionManager.mSessionID.trim().equalsIgnoreCase(""))
          return; 
        JSONObject jSONObject = new JSONObject();
        this.sessionManager.setHeader(this.sessionManager.mSessionID, jSONObject, 0L, 23, paramLocation);
        CAMobileDevOps.getDatabaseService().updateEvent(jSONObject);
        return;
      } 
    } catch (Exception exception) {
      CALog.e(exception.getMessage());
    } 
  }
  
  private void uploadData(CaMDOCallback paramCaMDOCallback) {
    boolean bool1 = PolicyUtil.getPolicyManager((Context)SDK.getApp()).isUploadOnWifiEnabled();
    boolean bool2 = Util.isConnectedToWIFI((Context)SDK.getApp());
    ArrayList<SessionUploadInfo> arrayList = null;
    if ((bool1 && bool2) || !bool1) {
      try {
        arrayList = CAMobileDevOps.getDataManager().processUploads();
        CAMobileDevOps.sendSuccessCallback(paramCaMDOCallback, uploadReturnVals(arrayList));
        if (!isAnyUploadSuccessful(arrayList))
          throw new CaMDOException(CaMDOError.CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE); 
      } catch (Exception exception) {
        throw new CaMDOException(CaMDOError.CAMDO_UPLOAD_ERROR_CODE, exception);
      } 
      CAMobileDevOps.resetEventUploadCounter();
      CAMobileDevOps.lastUploadAttemptTime = System.currentTimeMillis();
      return;
    } 
    if (!isAnyUploadSuccessful(arrayList))
      throw new CaMDOException(CaMDOError.CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE); 
  }
  
  private HashMap<String, String> uploadReturnVals(ArrayList<SessionUploadInfo> paramArrayList) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (SessionUploadInfo sessionUploadInfo : paramArrayList)
      hashMap.put(sessionUploadInfo.getSessionId(), String.valueOf(sessionUploadInfo.getEventCounts())); 
    return (HashMap)hashMap;
  }
  
  @TargetApi(3)
  public void handleMessage(Message paramMessage) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aconst_null
    //   4: astore_3
    //   5: iconst_1
    //   6: istore_2
    //   7: aload #5
    //   9: astore #4
    //   11: aload_0
    //   12: aload_1
    //   13: invokespecial handleMessage : (Landroid/os/Message;)V
    //   16: aload #5
    //   18: astore #4
    //   20: aload_1
    //   21: invokevirtual getData : ()Landroid/os/Bundle;
    //   24: ifnull -> 45
    //   27: aload #5
    //   29: astore #4
    //   31: aload_1
    //   32: invokevirtual getData : ()Landroid/os/Bundle;
    //   35: getstatic com/ca/mdo/MessageProcessingHandler.API_CALLBACK : Ljava/lang/String;
    //   38: invokevirtual getParcelable : (Ljava/lang/String;)Landroid/os/Parcelable;
    //   41: checkcast com/ca/integration/CaMDOCallback
    //   44: astore_3
    //   45: aload_3
    //   46: astore #4
    //   48: aload_1
    //   49: getfield what : I
    //   52: lookupswitch default -> 562, 0 -> 272, 1 -> 302, 2 -> 292, 3 -> 336, 4 -> 353, 6 -> 397, 7 -> 431, 8 -> 448, 79 -> 465, 101 -> 319, 222 -> 370, 223 -> 380, 224 -> 414, 230 -> 482, 251 -> 502, 252 -> 535, 253 -> 515, 254 -> 525
    //   208: aload_3
    //   209: astore #4
    //   211: new com/ca/mdo/CaMDOException
    //   214: dup
    //   215: getstatic com/ca/mdo/CaMDOError.CAMDO_UNKNOWN_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   218: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   221: athrow
    //   222: astore_3
    //   223: new java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial <init> : ()V
    //   230: ldc_w 'Exception thrown in handling Message Operation : '
    //   233: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: aload_1
    //   237: getfield what : I
    //   240: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   243: invokevirtual toString : ()Ljava/lang/String;
    //   246: invokestatic e : (Ljava/lang/String;)I
    //   249: pop
    //   250: aload_3
    //   251: invokestatic ex : (Ljava/lang/Throwable;)I
    //   254: pop
    //   255: aload_3
    //   256: instanceof com/ca/mdo/CaMDOException
    //   259: ifeq -> 545
    //   262: aload #4
    //   264: aload_3
    //   265: checkcast com/ca/mdo/CaMDOException
    //   268: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   271: return
    //   272: aload_3
    //   273: astore #4
    //   275: aload_0
    //   276: invokespecial init : ()V
    //   279: iload_2
    //   280: ifeq -> 271
    //   283: aload_3
    //   284: astore #4
    //   286: aload_3
    //   287: aconst_null
    //   288: invokestatic sendSuccessCallback : (Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V
    //   291: return
    //   292: aload_3
    //   293: astore #4
    //   295: aload_0
    //   296: invokespecial endCurrentSession : ()V
    //   299: goto -> 279
    //   302: aload_3
    //   303: astore #4
    //   305: aload_0
    //   306: aload_1
    //   307: getfield obj : Ljava/lang/Object;
    //   310: checkcast java/util/Map
    //   313: invokespecial process : (Ljava/util/Map;)V
    //   316: goto -> 279
    //   319: aload_3
    //   320: astore #4
    //   322: aload_0
    //   323: aload_1
    //   324: getfield obj : Ljava/lang/Object;
    //   327: checkcast org/json/JSONObject
    //   330: invokespecial onPause : (Lorg/json/JSONObject;)V
    //   333: goto -> 279
    //   336: aload_3
    //   337: astore #4
    //   339: aload_0
    //   340: aload_1
    //   341: getfield obj : Ljava/lang/Object;
    //   344: checkcast org/json/JSONObject
    //   347: invokespecial crash : (Lorg/json/JSONObject;)V
    //   350: goto -> 279
    //   353: aload_3
    //   354: astore #4
    //   356: aload_0
    //   357: aload_1
    //   358: getfield obj : Ljava/lang/Object;
    //   361: checkcast org/json/JSONObject
    //   364: invokespecial httpPerformance : (Lorg/json/JSONObject;)V
    //   367: goto -> 279
    //   370: aload_3
    //   371: astore #4
    //   373: aload_0
    //   374: invokespecial updateCustomerHeader : ()V
    //   377: goto -> 279
    //   380: aload_3
    //   381: astore #4
    //   383: aload_0
    //   384: aload_1
    //   385: getfield obj : Ljava/lang/Object;
    //   388: checkcast android/location/Location
    //   391: invokespecial updateCustomerLocation : (Landroid/location/Location;)V
    //   394: goto -> 279
    //   397: aload_3
    //   398: astore #4
    //   400: aload_0
    //   401: aload_1
    //   402: getfield obj : Ljava/lang/Object;
    //   405: checkcast org/json/JSONObject
    //   408: invokespecial customEvent : (Lorg/json/JSONObject;)V
    //   411: goto -> 279
    //   414: aload_3
    //   415: astore #4
    //   417: aload_0
    //   418: aload_1
    //   419: getfield obj : Ljava/lang/Object;
    //   422: checkcast org/json/JSONObject
    //   425: invokespecial customerFeedback : (Lorg/json/JSONObject;)V
    //   428: goto -> 279
    //   431: aload_3
    //   432: astore #4
    //   434: aload_0
    //   435: aload_1
    //   436: getfield obj : Ljava/lang/Object;
    //   439: checkcast org/json/JSONObject
    //   442: invokespecial transactionStart : (Lorg/json/JSONObject;)V
    //   445: goto -> 279
    //   448: aload_3
    //   449: astore #4
    //   451: aload_0
    //   452: aload_1
    //   453: getfield obj : Ljava/lang/Object;
    //   456: checkcast org/json/JSONObject
    //   459: invokespecial transactionStop : (Lorg/json/JSONObject;)V
    //   462: goto -> 279
    //   465: aload_3
    //   466: astore #4
    //   468: aload_0
    //   469: aload_1
    //   470: getfield obj : Ljava/lang/Object;
    //   473: checkcast org/json/JSONObject
    //   476: invokespecial generalEvents : (Lorg/json/JSONObject;)V
    //   479: goto -> 279
    //   482: aload_3
    //   483: astore #4
    //   485: aload_0
    //   486: aload_1
    //   487: getfield obj : Ljava/lang/Object;
    //   490: checkcast java/lang/Integer
    //   493: invokevirtual intValue : ()I
    //   496: invokespecial processLocationChanges : (I)V
    //   499: goto -> 279
    //   502: iconst_0
    //   503: istore_2
    //   504: aload_3
    //   505: astore #4
    //   507: aload_0
    //   508: aload_3
    //   509: invokespecial uploadData : (Lcom/ca/integration/CaMDOCallback;)V
    //   512: goto -> 279
    //   515: aload_3
    //   516: astore #4
    //   518: aload_0
    //   519: invokespecial stopCurrentSession : ()V
    //   522: goto -> 279
    //   525: aload_3
    //   526: astore #4
    //   528: aload_0
    //   529: invokespecial startNewSession : ()V
    //   532: goto -> 279
    //   535: aload_3
    //   536: astore #4
    //   538: aload_0
    //   539: invokespecial stopCurrentAndStartNewSession : ()V
    //   542: goto -> 279
    //   545: aload #4
    //   547: new com/ca/mdo/CaMDOException
    //   550: dup
    //   551: getstatic com/ca/mdo/CaMDOError.CAMDO_UNKNOWN_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   554: aload_3
    //   555: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;Ljava/lang/Throwable;)V
    //   558: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   561: return
    //   562: goto -> 208
    // Exception table:
    //   from	to	target	type
    //   11	16	222	java/lang/Throwable
    //   20	27	222	java/lang/Throwable
    //   31	45	222	java/lang/Throwable
    //   48	208	222	java/lang/Throwable
    //   211	222	222	java/lang/Throwable
    //   275	279	222	java/lang/Throwable
    //   286	291	222	java/lang/Throwable
    //   295	299	222	java/lang/Throwable
    //   305	316	222	java/lang/Throwable
    //   322	333	222	java/lang/Throwable
    //   339	350	222	java/lang/Throwable
    //   356	367	222	java/lang/Throwable
    //   373	377	222	java/lang/Throwable
    //   383	394	222	java/lang/Throwable
    //   400	411	222	java/lang/Throwable
    //   417	428	222	java/lang/Throwable
    //   434	445	222	java/lang/Throwable
    //   451	462	222	java/lang/Throwable
    //   468	479	222	java/lang/Throwable
    //   485	499	222	java/lang/Throwable
    //   507	512	222	java/lang/Throwable
    //   518	522	222	java/lang/Throwable
    //   528	532	222	java/lang/Throwable
    //   538	542	222	java/lang/Throwable
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MessageProcessingHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */