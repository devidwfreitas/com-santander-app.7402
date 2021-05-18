package com.ca.mdo;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class SessionManager {
  private static final String CRASHED;
  
  private static final String EVENT_ID;
  
  private static final String LAST_SESSION_END_TIME;
  
  public static final String LAST_SESSION_ID;
  
  private static final String LAST_SESSION_TIME;
  
  private static final String SESSION_START_TIME = Constants.PACKAGE_NAME + ".sessionStart";
  
  private static SessionManager mInstance;
  
  private Context mContext;
  
  private SharedPreferences.Editor mEditor;
  
  protected AtomicInteger mEventId;
  
  protected boolean mIsCrashed = false;
  
  protected boolean mIsSessionOpen = false;
  
  private SharedPreferences mPref;
  
  protected String mSessionID;
  
  public PersistenceManager persistenceManager;
  
  static {
    LAST_SESSION_TIME = Constants.PACKAGE_NAME + ".lastSession";
    LAST_SESSION_END_TIME = Constants.PACKAGE_NAME + ".lastSessionEnd";
    LAST_SESSION_ID = Constants.PACKAGE_NAME + ".lastSessionID";
    CRASHED = Constants.PACKAGE_NAME + ".crashed";
    EVENT_ID = Constants.PACKAGE_NAME + ".eventID";
    mInstance = null;
  }
  
  public SessionManager(Context paramContext) {
    initialize(paramContext);
  }
  
  public static SessionManager getInstance(Context paramContext) {
    if (mInstance == null)
      mInstance = new SessionManager(paramContext); 
    return mInstance;
  }
  
  public void endSession() {
    try {
      Thread.currentThread();
      Thread.sleep(100L);
      long l2 = getLastSessionTime();
      if (l2 == -1L)
        return; 
      JSONObject jSONObject1 = new JSONObject();
      CAMobileDevOps.setScreenNames(jSONObject1, null, false, null);
      long l1 = Util.getSharedPreferences().getLong("lastloggedevent", -1L);
      PersistenceManager persistenceManager = this.persistenceManager;
      String str = l2 + "";
      if (l1 != -1L) {
        l1 = 1L + l1;
      } else {
        l1 = 1L + l2;
      } 
      jSONObject1 = persistenceManager.buildEvent("session_end", str, l1, "app_events", jSONObject1);
      if (!MDOSecurityManager.getInstance().isSecureMode())
        CALog.d("----------- Session END event: " + jSONObject1.toString() + "," + this.mSessionID); 
      JSONObject jSONObject2 = new JSONObject();
      Location location = CAMobileDevOps.getLocation();
      setHeader(this.mSessionID, jSONObject2, l2, 2, location);
      this.persistenceManager.mergeEvent(this.mSessionID, jSONObject2, 2, "hdr");
      this.persistenceManager.persistEvent(this.mSessionID, jSONObject1, 2, "evt");
      CAMobileDevOps.removeCustomEventsForSession(this.mSessionID);
      return;
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage());
      return;
    } catch (InterruptedException interruptedException) {
      CALog.e(interruptedException.getMessage());
      return;
    } 
  }
  
  public String generateSessionId() {
    return UUID.randomUUID().toString();
  }
  
  protected String getLastSessionID() {
    return this.mPref.getString(LAST_SESSION_ID, "unknown");
  }
  
  public long getLastSessionTime() {
    return this.mPref.getLong(LAST_SESSION_TIME, -1L);
  }
  
  protected int getNewEventID() {
    this.mEventId.set(this.mPref.getInt(EVENT_ID, 0));
    if (this.mEventId.intValue() >= 2147483646)
      resetEventID(); 
    this.mEventId.set(this.mEventId.incrementAndGet());
    this.mEditor.putInt(EVENT_ID, this.mEventId.intValue()).commit();
    return this.mEventId.intValue();
  }
  
  protected int getPresentEventID() {
    return this.mPref.getInt(EVENT_ID, 0);
  }
  
  public long getSessionStartTime() {
    return this.mPref.getLong(SESSION_START_TIME, 0L);
  }
  
  public void initialize(Context paramContext) {
    this.mContext = paramContext;
    this.mPref = this.mContext.getSharedPreferences(Constants.PREF_NAME, 0);
    this.mEditor = this.mPref.edit();
    this.mSessionID = getLastSessionID();
    this.mIsCrashed = isCrashed();
    this.mEventId = new AtomicInteger(0);
    this.persistenceManager = CAMobileDevOps.getPersistenceManager();
  }
  
  protected boolean isCrashed() {
    return this.mPref.getBoolean(CRASHED, false);
  }
  
  public boolean isSessionOpen() {
    return this.mIsSessionOpen;
  }
  
  protected void putCurrentSessionID(String paramString) {
    this.mEditor.putString(LAST_SESSION_ID, paramString).commit();
  }
  
  protected void putLastSessionTime(long paramLong) {
    this.mEditor.putLong(LAST_SESSION_TIME, paramLong).commit();
  }
  
  public void putSessionStartTime(long paramLong) {
    this.mEditor.putLong(SESSION_START_TIME, paramLong).commit();
  }
  
  public void reOpenSession() {
    try {
      CALog.d("Reopening Session with ID:" + this.mSessionID);
      JSONObject jSONObject = new JSONObject();
      Location location = CAMobileDevOps.getLocation();
      setHeader(this.mSessionID, jSONObject, 0L, 23, location);
      CAMobileDevOps.persistenceManager.mergeEvent(this.mSessionID, jSONObject, 23, "hdr");
      this.mSessionID = getLastSessionID();
      return;
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage());
      return;
    } 
  }
  
  public void reportSessionCrashAsCustomerFeedback(long paramLong) {
    if (getSessionStartTime() != 0L && getLastSessionID() != null && paramLong != 0L)
      CAMobileDevOps.customerFeedback = new CAMobileDevOps.CustomerFeedback(getSessionStartTime(), paramLong, getLastSessionID()); 
    if (CAMobileDevOps.mRegisteredFeedback)
      CAMobileDevOps.invokeCustomerReceiver(); 
  }
  
  protected long resetEventID() {
    this.mEventId.set(0);
    this.mEditor.putInt(EVENT_ID, this.mEventId.intValue());
    return this.mEventId.intValue();
  }
  
  protected void setCrashed(boolean paramBoolean) {
    this.mIsCrashed = paramBoolean;
    this.mEditor.putBoolean(CRASHED, paramBoolean).commit();
  }
  
  public void setHeader(String paramString, JSONObject paramJSONObject, long paramLong, int paramInt, Location paramLocation) throws JSONException {
    String str;
    if (!CAMobileDevOps.configRead)
      CAMobileDevOps.reloadConfig(SDK.getApp()); 
    AppDeviceData appDeviceData = CAMobileDevOps.getmAppDeviceData();
    long l = getSessionStartTime();
    JSONArray jSONArray = new JSONArray();
    JSONObject jSONObject = new JSONObject();
    paramJSONObject.put("ak", CAMobileDevOps.getAppKey());
    if (appDeviceData != null) {
      paramJSONObject.put("an", appDeviceData.getApplicationName());
      jSONObject.put("di", AppDeviceData.getDeviceId());
      jSONObject.put("dt", AppDeviceData.getDeviceIdType());
      jSONObject.put("pf", "Android");
      jSONObject.put("pv", appDeviceData.getVersion());
      jSONObject.put("vn", appDeviceData.getManufactorer());
      jSONObject.put("dm", appDeviceData.getModel());
      jSONObject.put("av", appDeviceData.getAppVersion());
      if (!CAMobileDevOps.isInPrivateZone())
        paramJSONObject.put("ip", appDeviceData.getIpAddress()); 
      appDeviceData.setNetworkDetails();
    } 
    if (appDeviceData.getNetworkOperatorName() != null) {
      str = appDeviceData.getNetworkOperatorName().toUpperCase();
    } else {
      str = "";
    } 
    paramJSONObject.put("ai", CAMobileDevOps.getAppId());
    paramJSONObject.put("ti", CAMobileDevOps.getTenantID());
    if (CAMobileDevOps.mCustomerId != null)
      paramJSONObject.put("cid", CAMobileDevOps.mCustomerId); 
    jSONObject.put("sc_w", (Util.getScreenResolution(this.mContext)).screenSizeWidth);
    jSONObject.put("sc_h", (Util.getScreenResolution(this.mContext)).screenSizeHeight);
    jSONArray.put(jSONObject);
    paramJSONObject.put("dv", jSONArray);
    if (paramLocation != null && !CAMobileDevOps.isInPrivateZone()) {
      paramJSONObject.put("la", paramLocation.getLatitude());
      paramJSONObject.put("lo", paramLocation.getLongitude());
    } 
    paramJSONObject.put("ca", str);
    if (CAMobileDevOps.mCustomerFeedback) {
      CAMobileDevOps.mCustomerFeedback = false;
      if (CAMobileDevOps.customerFeedback != null && CAMobileDevOps.customerFeedback.sessionIdentifier != null && CAMobileDevOps.customerFeedback.sessionStart != 0L && CAMobileDevOps.customerFeedback.sessionEnd != 0L) {
        paramJSONObject.put("si", CAMobileDevOps.customerFeedback.sessionIdentifier);
        paramJSONObject.put("ss", CAMobileDevOps.customerFeedback.sessionStart);
        paramJSONObject.put("se", CAMobileDevOps.customerFeedback.sessionEnd);
      } 
    } else {
      paramJSONObject.put("si", paramString);
      paramJSONObject.put("ss", l);
      paramJSONObject.put("se", paramLong);
    } 
    paramJSONObject.put("ln", Locale.getDefault().getLanguage());
    if (CAMobileDevOps.mIsCustomerLocation) {
      paramJSONObject.put("zp", CAMobileDevOps.mZipCode);
      paramJSONObject.put("cc", CAMobileDevOps.mCountryCode);
    } 
    paramJSONObject.put("cpt", l);
    paramJSONObject.put("attr", CAMobileDevOps.getCustomEventsForSession(paramString));
    if (MDOSecurityManager.getInstance().isSecureMode())
      paramJSONObject.put("ckv", MDOSecurityManager.getInstance().getPublicEncryptionKeyVersion()); 
  }
  
  public void startSession(long paramLong) {
    try {
      String str1 = generateSessionId();
      MDOSecurityManager.getInstance().replaceSecurityKeyWithNewKey();
      resetEventID();
      putCurrentSessionID(str1);
      putSessionStartTime(paramLong);
      CALog.d("New Session created with ID:" + str1);
      long l = getSessionStartTime();
      JSONObject jSONObject = new JSONObject();
      setHeader(str1, jSONObject, 0L, 1, CAMobileDevOps.getLocation());
      this.persistenceManager.persistEvent(str1, jSONObject, 1, "hdr");
      jSONObject = new JSONObject();
      CAMobileDevOps.setScreenNames(jSONObject, null, false, null);
      PersistenceManager persistenceManager = this.persistenceManager;
      String str2 = l + "";
      try {
        jSONObject = persistenceManager.buildEvent("session_start", str2, paramLong, "app_events", jSONObject);
        JSONObject jSONObject1 = jSONObject.getJSONObject("attr");
        if (jSONObject1 != null)
          jSONObject1.put("pid", AppDeviceData.getPid()); 
        this.persistenceManager.persistEvent(str1, jSONObject, 1, "evt");
        if (!MDOSecurityManager.getInstance().isSecureMode())
          CALog.d("-----------  event: " + jSONObject.toString() + "," + str1); 
        CAMobileDevOps.csn = "";
        this.mSessionID = str1;
        Util.getSharedPreferencesEditor().remove("lastloggedevent");
        putLastSessionTime(-1L);
        return;
      } catch (JSONException null) {}
    } catch (JSONException jSONException) {}
    CALog.e(jSONException.getMessage());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\SessionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */