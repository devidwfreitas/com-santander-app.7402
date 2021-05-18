package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.view.MotionEvent;
import com.ca.android.app.ScreenLoadTimeMeter;
import com.ca.integration.CaMDOCallback;
import com.ca.org.acra.ACRA;
import java.io.File;
import java.lang.ref.WeakReference;
import java.net.CookieManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CAMobileDevOps {
  public static final String CAMAA_CUSTOMER_ID = "customerId";
  
  private static final String PACKAGE = CAMobileDevOps.class.getPackage().getName();
  
  public static String TRANSACTION_SEPARATOR;
  
  public static String backendUrl;
  
  public static boolean configRead;
  
  public static CookieManager cookieManager;
  
  public static String csn;
  
  private static WeakReference<Activity> currentActivity;
  
  public static String currentSessionId;
  
  public static Map<String, JSONArray> customEvents;
  
  public static CustomerFeedback customerFeedback;
  
  private static DataManager dataManager;
  
  private static DatabaseHandler databaseService;
  
  public static Set<String> ignoredViews;
  
  private static boolean isPrivateZone;
  
  private static long lastForeGroundEventTimeStamp;
  
  public static long lastUploadAttemptTime;
  
  public static MDOLocationTracker locationTracker;
  
  private static AppDeviceData mAppDeviceData;
  
  public static String mAppID;
  
  public static String mAppKey;
  
  public static String mAppService;
  
  public static String mAppTransaction;
  
  public static long mAppTransactionStartTime;
  
  public static String mBaseUrl;
  
  public static String mCollectorUrl;
  
  public static String mCountryCode;
  
  public static String mCurrentViewName;
  
  public static boolean mCustomerFeedback;
  
  public static String mCustomerId;
  
  public static String mCustomerIdType;
  
  public static AtomicBoolean mDisabled;
  
  private static AtomicBoolean mInitialized;
  
  public static boolean mIsCustomerLocation;
  
  public static AtomicBoolean mIsFirstLaunch;
  
  public static boolean mJailBroken;
  
  private static Handler mMessageProcessingHandler;
  
  private static HandlerThread mMessageProcessingHandlerThread;
  
  public static boolean mOptOut;
  
  public static int mOrientation;
  
  public static boolean mRegisteredFeedback;
  
  public static long mStartupTime = 0L;
  
  public static String mTenantID;
  
  public static Map<String, String> mTransactions;
  
  public static Map<String, TransactionDetails> mTransactionsHolder;
  
  public static AtomicInteger mTxnId;
  
  public static String mZipCode;
  
  public static BroadcastReceiver networkChangeReceiver;
  
  public static PersistenceManager persistenceManager;
  
  private static AtomicBoolean sessionProcessed;
  
  static {
    mIsFirstLaunch = new AtomicBoolean(true);
    mOrientation = -1;
    mDisabled = new AtomicBoolean(false);
    mOptOut = false;
    mAppTransactionStartTime = -1L;
    mCustomerFeedback = false;
    mRegisteredFeedback = false;
    currentSessionId = null;
    csn = "";
    TRANSACTION_SEPARATOR = "0x039E";
    mTxnId = new AtomicInteger(0);
    backendUrl = mBaseUrl + "/write_bulk";
    lastUploadAttemptTime = 1L;
    mInitialized = new AtomicBoolean(false);
    sessionProcessed = new AtomicBoolean(false);
    isPrivateZone = false;
    configRead = false;
    ignoredViews = new HashSet<String>();
  }
  
  public static void activityMotionEvent(MotionEvent paramMotionEvent) {
    CALog.v(paramMotionEvent.getClass() + " - MDO activityMotionEvent");
    switch (paramMotionEvent.getAction()) {
      default:
        return;
      case 1:
        break;
    } 
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    String str = "Touch at x:" + (int)f1 + " y:" + (int)f2;
    try {
      jSONObject1.put("n", "touch_ended");
      jSONObject1.put("v", str);
      jSONObject1.put("ty", "view_touch_events");
      jSONObject2.put("or", AppDeviceData.getDeviceOrientationString(AppDeviceData.getDeviceOrientation()));
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    setScreenNames(jSONObject1, null, false, null);
    sendGeneralEvent(79, jSONObject1);
  }
  
  public static void activityOnRestart(Activity paramActivity) {
    CALog.v(paramActivity.getClass() + " - MDO re - start");
  }
  
  @TargetApi(8)
  public static void activityOnWindowFocusChanged(boolean paramBoolean, Activity paramActivity) {
    CALog.v(paramActivity.getClass() + " - MDO activityOnWindowFocusChanged ");
    JSONObject jSONObject = processResumeActivityDetails(paramActivity, "onResume");
    (new MDOTask(paramActivity, jSONObject, paramBoolean, null)).process();
    if ((getSessionManager()).mSessionID != null)
      sendAutoTransactions(jSONObject, null); 
  }
  
  public static void activityPause(Activity paramActivity) {
    CALog.v(paramActivity.getClass() + " - MDO activityPause ");
    try {
      if (mDisabled.get())
        return; 
      JSONObject jSONObject = new JSONObject();
      try {
        String str = getScreenName(paramActivity);
        if (!ignoredViews.contains(str)) {
          jSONObject.put("v", str);
          jSONObject.put("n", "onPause");
          jSONObject.put("ty", "view_events");
        } else {
          return;
        } 
      } catch (JSONException jSONException) {}
      setScreenNames(jSONObject, paramActivity, false, null);
      sendMessage(101, jSONObject);
      return;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return;
    } 
  }
  
  public static void activityResume(Activity paramActivity) {
    CALog.v(paramActivity.getClass() + " - MDO  activityResume");
    if (mDisabled.get());
  }
  
  public static void addCustomerFeedBack(String paramString1, String paramString2, String paramString3) {
    if (mDisabled.get())
      return; 
    if (paramString2 == null || paramString3 == null) {
      CALog.e("addCustomerFeedBack: Input Data is not valid.");
      return;
    } 
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("ty", "custom_event");
      jSONObject.put("n", paramString2);
      jSONObject.put("v", paramString3);
      jSONObject.put("t", System.currentTimeMillis());
      setScreenNames(jSONObject, null, false, null);
      sendMessage(224, jSONObject);
      CALog.d("In SDK Customer Feedback Event Logged.");
      return;
    } catch (Throwable throwable) {
      CALog.e("addCustomerFeedBack caught exception", throwable);
      return;
    } 
  }
  
  public static void addSessionEvent(String paramString1, String paramString2, String paramString3) {
    addSessionEvent(paramString1, paramString2, paramString3, null);
  }
  
  public static void addSessionEvent(String paramString1, String paramString2, String paramString3, Map<Object, Object> paramMap) {
    JSONObject jSONObject1;
    if (mDisabled.get())
      return; 
    String str = paramString1;
    if (paramString1 == null)
      str = "string"; 
    if (!dataTypeCheck(str) || paramString2 == null || paramString3 == null) {
      CALog.e("addSessionEvent: Input Data is not valid.");
      return;
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("ty", "custom");
      jSONObject2.put("n", paramString2);
      jSONObject2.put("v", paramString3);
      jSONObject2.put("t", System.currentTimeMillis());
      Map<Object, Object> map = paramMap;
      if (paramMap == null)
        map = new HashMap<Object, Object>(); 
      map.put("dty", str);
      jSONObject1 = new JSONObject();
      for (Map.Entry<Object, Object> entry : map.entrySet())
        jSONObject1.put(entry.getKey().toString(), entry.getValue().toString()); 
    } catch (Throwable throwable) {
      CALog.e("addSessionEvent caught exception", throwable);
      return;
    } 
    jSONObject2.put("attr", jSONObject1);
    setScreenNames(jSONObject2, null, false, null);
    sendGeneralEvent(79, jSONObject2);
  }
  
  public static void addToAPMHeaders(String paramString) {
    AppDeviceData.setAdditionalAPMHeaders(paramString);
  }
  
  public static void addToIngoredList(String paramString) {
    ignoredViews.add(paramString);
  }
  
  public static void addToIngoredList(HashSet<String> paramHashSet) {
    ignoredViews.addAll(paramHashSet);
  }
  
  static void appEnteredBackGroundEvent() {
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1.put("ty", "app_events");
      jSONObject1.put("n", "App Entered Background");
      jSONObject1.put("v", String.valueOf(System.currentTimeMillis() - lastForeGroundEventTimeStamp));
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    setScreenNames(jSONObject1, null, false, null);
    sendMessage(79, jSONObject1);
  }
  
  static void appEnteredForeGroundEvent() {
    lastForeGroundEventTimeStamp = System.currentTimeMillis();
  }
  
  public static boolean checkNetwork(String paramString, int paramInt, NetworkInfo paramNetworkInfo) {
    return ((Util.getSharedPreferences().getString("CONNECTION", null) == null || Util.getSharedPreferences().getString("CONNECTION", null) != paramString) && paramNetworkInfo != null && paramNetworkInfo.getType() == paramInt);
  }
  
  private static void cleanUpChildren(int paramInt) {
    ArrayList<String> arrayList = new ArrayList();
    for (String str : mTransactionsHolder.keySet()) {
      if (((TransactionDetails)mTransactionsHolder.get(str)).txnId > paramInt)
        arrayList.add(str); 
    } 
    for (String str : arrayList)
      mTransactionsHolder.remove(str); 
  }
  
  public static void clearTransactionsHolder() {
    mTransactionsHolder.clear();
    mTransactionsHolder = new ConcurrentHashMap<String, TransactionDetails>();
  }
  
  @TargetApi(8)
  protected static void crash(String paramString) {
    CALog.v("Crash - MDO crash ");
    long l = System.currentTimeMillis();
    String str = Base64.encodeToString(paramString.getBytes(), 4);
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("n", "crash");
      jSONObject.put("v", str);
      jSONObject.put("t", l);
      jSONObject.put("ty", "crash");
      str = Util.getSharedPreferences().getString(Constants.PREF_CSN, "");
      if (str != null && !str.equalsIgnoreCase(""))
        jSONObject.put("passovercsn", str); 
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    Util.getSharedPreferencesEditor().putBoolean(Constants.PREF_IS_CRASH, true).commit();
    Util.getSharedPreferencesEditor().putString(Constants.PREF_CRASH_SESSION, getCurrentSession()).commit();
    setScreenNames(jSONObject, null, false, null);
    sendGeneralEvent(3, jSONObject);
  }
  
  public static boolean dataTypeCheck(String paramString) {
    return (paramString.equalsIgnoreCase("string") || paramString.equalsIgnoreCase("double"));
  }
  
  public static boolean dataTypeCheckSession(String paramString) {
    return (paramString.equalsIgnoreCase("string") || paramString.equalsIgnoreCase("double") || paramString.equalsIgnoreCase("customerId"));
  }
  
  public static void enterPrivateZone() {
    isPrivateZone = true;
    if (getmMessageProcessingHandler() != null)
      getmMessageProcessingHandler().sendMessage(getmMessageProcessingHandler().obtainMessage(230, new Integer(0))); 
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1.put("ty", "app_events");
      jSONObject1.put("n", "private_zone_entered");
      jSONObject1.put("v", String.valueOf(System.currentTimeMillis()));
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    sendMessage(79, jSONObject1);
  }
  
  public static void exitPrivateZone() {
    isPrivateZone = false;
    int i = PolicyUtil.getPolicyManager((Context)SDK.getApp()).getLocationCheck();
    if (getmMessageProcessingHandler() != null)
      getmMessageProcessingHandler().sendMessage(getmMessageProcessingHandler().obtainMessage(230, new Integer(Integer.valueOf(i).intValue()))); 
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1.put("ty", "app_events");
      jSONObject1.put("n", "private_zone_exited");
      jSONObject1.put("v", String.valueOf(System.currentTimeMillis()));
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    sendMessage(79, jSONObject1);
  }
  
  private static void fragmentEvent(String paramString1, Activity paramActivity, String paramString2) {
    try {
      if (mDisabled.get())
        return; 
      String str = paramActivity.getClass().getSimpleName();
      if (str.length() == 0)
        str = paramActivity.getClass().getName(); 
      JSONObject jSONObject1 = new JSONObject();
      JSONObject jSONObject2 = new JSONObject();
      jSONObject2.put("activity", str);
      jSONObject2.put("csn", "" + getScreenName(paramActivity));
      jSONObject1.put("v", paramString1);
      jSONObject1.put("n", paramString2);
      jSONObject1.put("attr", jSONObject2);
      jSONObject1.put("ty", "view_events");
      setScreenNames(jSONObject1, paramActivity, false, null);
      sendMessage(79, jSONObject1);
      return;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return;
    } 
  }
  
  @TargetApi(11)
  public static void fragmentPause(Fragment paramFragment) {
    try {
      CALog.v(String.format("%s[%s] - MDO fragmentResume ", new Object[] { paramFragment.getClass(), paramFragment.getActivity().getClass() }));
      if (mDisabled.get())
        return; 
      String str = paramFragment.getClass().getSimpleName();
      if (str.length() == 0)
        str = paramFragment.getClass().getName(); 
      fragmentPause(str, paramFragment.getActivity());
      return;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return;
    } 
  }
  
  @TargetApi(11)
  public static void fragmentPause(String paramString, Activity paramActivity) {
    fragmentEvent(paramString, paramActivity, "onFragmentPause");
  }
  
  @TargetApi(11)
  public static void fragmentResume(Fragment paramFragment) {
    try {
      CALog.v(String.format("%s[%s] - MDO fragmentResume ", new Object[] { paramFragment.getClass(), paramFragment.getActivity().getClass() }));
      if (mDisabled.get())
        return; 
      String str = paramFragment.getClass().getSimpleName();
      if (str.length() == 0)
        str = paramFragment.getClass().getName(); 
      fragmentResume(str, paramFragment.getActivity());
      return;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return;
    } 
  }
  
  @TargetApi(11)
  public static void fragmentResume(String paramString, Activity paramActivity) {
    fragmentEvent(paramString, paramActivity, "onFragmentResume");
  }
  
  public static JSONObject generalEvent(String paramString1, String paramString2, String paramString3) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("v", paramString3);
      jSONObject.put("n", paramString2);
      jSONObject.put("ty", paramString1);
      return jSONObject;
    } catch (JSONException jSONException) {
      CALog.ex((Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public static String getAPMHeader() {
    String str = "";
    if (sendAPMHeader())
      str = "x-apm-bt||" + AppDeviceData.getAPMHeader(); 
    return str;
  }
  
  public static int getAndroidVersion() {
    return Integer.valueOf(Build.VERSION.SDK).intValue();
  }
  
  public static String getAppId() {
    if (mAppID != null)
      return mAppID; 
    String str = Util.getSharedPreferences().getString(Constants.PREF_APPID, "");
    if (str != null && str.equalsIgnoreCase("") && SDK.getApp() != null) {
      reloadConfig(SDK.getApp());
      return mAppID;
    } 
    mAppID = str;
    return mAppID;
  }
  
  public static String getAppKey() {
    if (mAppKey != null)
      return mAppKey; 
    String str = Util.getSharedPreferences().getString(Constants.PREF_APPKEY, "");
    if (str != null && str.equalsIgnoreCase("") && SDK.getApp() != null) {
      reloadConfig(SDK.getApp());
      return mAppKey;
    } 
    mAppKey = str;
    return mAppKey;
  }
  
  private static String getAppName() {
    String str1;
    if (mAppDeviceData == null) {
      str1 = null;
    } else {
      str1 = mAppDeviceData.getApplicationName();
    } 
    String str2 = str1;
    if (str1 == null)
      str2 = "DEFAULT"; 
    return str2;
  }
  
  private static String getAppService(boolean paramBoolean) {
    String str2 = getAppName();
    String str1 = str2;
    if (str2 == null)
      str1 = "Unknown"; 
    if (paramBoolean) {
      str2 = str1;
    } else {
      str2 = mAppService;
    } 
    String str3 = str2;
    if (str2 == null)
      str3 = str1; 
    return str3;
  }
  
  public static String getApplicationService() {
    return mAppService;
  }
  
  public static String getApplicationTransaction() {
    return mAppTransaction;
  }
  
  public static String getBackendUrl() {
    String str1 = getCollectorUrl();
    String str2 = getBaseUrl();
    if (str1 != null && !str1.equalsIgnoreCase("")) {
      CALog.d("mCollectorUrl = " + str1);
      return str1;
    } 
    CALog.d("mBaseUrl = " + str2);
    return str2 + "/write_bulk";
  }
  
  public static String getBaseUrl() {
    if (mBaseUrl != null)
      return mBaseUrl; 
    String str = Util.getSharedPreferences().getString(Constants.PREF_BASEURL, "");
    if (str != null && str.equalsIgnoreCase("") && SDK.getApp() != null) {
      reloadConfig(SDK.getApp());
      return mBaseUrl;
    } 
    mBaseUrl = str;
    return mBaseUrl;
  }
  
  static JSONObject getCVHeader(boolean paramBoolean) throws JSONException {
    JSONObject jSONObject = new JSONObject();
    Util.getSharedPreferences().getBoolean(Constants.PREF_IS_CRASH, false);
    jSONObject.put("cak", getAppKey());
    jSONObject.put("cta", getTenantID() + "#" + getAppId());
    jSONObject.put("csm", MDOSecurityManager.getInstance().isSecureMode());
    jSONObject.put("csv", "16.4.2");
    jSONObject.put("cpt", PolicyUtil.getPolicyManager((Context)SDK.getApp()).getLastUpdatedTimeStamp());
    jSONObject.put("cpi", PolicyUtil.getPolicyManager((Context)SDK.getApp()).getProfileId());
    if (MDOSecurityManager.getInstance().isSecureMode())
      jSONObject.put("ckv", MDOSecurityManager.getInstance().getPublicEncryptionKeyVersion()); 
    jSONObject.put("cic", paramBoolean);
    return jSONObject;
  }
  
  public static String getCollectorUrl() {
    if (mCollectorUrl != null)
      return mCollectorUrl; 
    String str = Util.getSharedPreferences().getString(Constants.PREF_COLLECTORURL, "");
    if (str != null && str.equalsIgnoreCase("") && SDK.getApp() != null) {
      reloadConfig(SDK.getApp());
      return mCollectorUrl;
    } 
    mCollectorUrl = str;
    return mCollectorUrl;
  }
  
  public static String getCrashedSession() {
    try {
      String str = Util.getSharedPreferences().getString(Constants.PREF_CRASH_SESSION, "unknown");
      if (str != null) {
        boolean bool = str.equalsIgnoreCase("unknown");
        if (!bool)
          return str; 
      } 
      return null;
    } catch (Exception exception) {
      CALog.ex(exception);
      return null;
    } 
  }
  
  public static Activity getCurrentActivity() {
    return (currentActivity == null) ? null : currentActivity.get();
  }
  
  private static String getCurrentConnection(Context paramContext) {
    switch (((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType()) {
      default:
        return "Unknown";
      case 1:
        return "GPRS";
      case 2:
        return "EDGE";
      case 4:
        return "CDMA";
      case 7:
        return "1xRTT";
      case 11:
        return "IDEN";
      case 3:
        return "UMTS";
      case 5:
        return "EVDO_0";
      case 6:
        return "EVDO_A";
      case 8:
        return "HSDPA";
      case 9:
        return "HSUPA";
      case 10:
        return "HSPA";
      case 12:
        return "EVDO_B";
      case 14:
        return "EHRPD";
      case 15:
        return "HSPAP";
      case 13:
        break;
    } 
    return "LTE";
  }
  
  public static String getCurrentSession() {
    try {
      null = Util.getSharedPreferences().getString(SessionManager.LAST_SESSION_ID, "unknown");
      return (null != null && !null.equalsIgnoreCase("unknown")) ? null : currentSessionId;
    } catch (Exception exception) {
      CALog.ex(exception);
      return null;
    } 
  }
  
  public static String getCurrentViewName() {
    return mCurrentViewName;
  }
  
  public static JSONArray getCustomEventsForSession(String paramString) {
    try {
      if (customEvents != null)
        return customEvents.get(paramString); 
    } catch (Exception exception) {
      CALog.ex(exception);
    } 
    return null;
  }
  
  public static String getCustomerId() {
    return mCustomerId;
  }
  
  public static DataManager getDataManager() {
    if (dataManager == null)
      dataManager = new DataManager((Context)SDK.getApp(), backendUrl); 
    return dataManager;
  }
  
  public static DatabaseHandler getDatabaseService() {
    if (databaseService == null)
      databaseService = new DatabaseHandler((Context)SDK.getApp()); 
    return databaseService;
  }
  
  public static String getDeviceID() {
    if (mAppDeviceData == null)
      return null; 
    AppDeviceData appDeviceData = mAppDeviceData;
    return AppDeviceData.getDeviceId();
  }
  
  public static Location getLocation() {
    if (!isPrivateZone && getmAppDeviceData() != null) {
      switch (PolicyUtil.getPolicyManager((Context)SDK.getApp()).getLocationCheck()) {
        case 0:
          return null;
        default:
          return null;
        case 1:
          getmAppDeviceData();
          return AppDeviceData.getLastLocation();
        case 2:
          break;
      } 
      getmAppDeviceData();
      return AppDeviceData.getCoordinates();
    } 
  }
  
  public static Network getNetworkData(String paramString, int paramInt, long paramLong1, long paramLong2, long paramLong3, CaMDOCallback paramCaMDOCallback, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3) {
    Network network = new Network();
    network.url = paramString;
    network.httpStatus = paramInt;
    network.responseTime = paramLong1;
    network.inBytes = paramLong2;
    network.outBytes = paramLong3;
    network.callback = paramCaMDOCallback;
    network.customAttributes = paramMap1;
    network.headers = paramMap2;
    network.reqParams = paramMap3;
    return network;
  }
  
  public static boolean getOptOut() {
    return mOptOut;
  }
  
  public static PersistenceManager getPersistenceManager() {
    if (persistenceManager == null)
      persistenceManager = new PersistenceManager(); 
    return persistenceManager;
  }
  
  public static int getQuality(String paramString) {
    try {
      return Integer.valueOf(paramString).intValue();
    } catch (Exception exception) {
      CALog.d("Error in decoding quality variable of screenshot api , using default value");
      return -1;
    } 
  }
  
  @TargetApi(11)
  public static String getScreenName(Activity paramActivity) {
    String str3 = getAppName();
    if (paramActivity.getTitle() != null) {
      str2 = paramActivity.getTitle().toString();
    } else {
      str2 = null;
    } 
    String str1 = str2;
    if (str3 != null) {
      str1 = str2;
      if (str2 != null) {
        str1 = str2;
        if (str3.equalsIgnoreCase(str2))
          str1 = paramActivity.getClass().getSimpleName(); 
      } 
    } 
    String str2 = str1;
    if (str1 == null) {
      str2 = str1;
      if (paramActivity.getActionBar() != null) {
        str2 = str1;
        if (paramActivity.getActionBar().getTitle() != null)
          str2 = paramActivity.getActionBar().getTitle().toString(); 
      } 
    } 
    str1 = str2;
    if (str2 == null)
      str1 = paramActivity.getClass().getSimpleName(); 
    return str1;
  }
  
  static SessionManager getSessionManager() {
    return (getPersistenceManager() != null && (getPersistenceManager()).sessionManager != null) ? (getPersistenceManager()).sessionManager : null;
  }
  
  public static boolean getSessionProcessed() {
    return sessionProcessed.get();
  }
  
  public static String getTenantID() {
    if (mTenantID != null)
      return mTenantID; 
    String str = Util.getSharedPreferences().getString(Constants.PREF_TENANTID, "");
    if (str != null && str.equalsIgnoreCase("") && SDK.getApp() != null) {
      reloadConfig(SDK.getApp());
      return mTenantID;
    } 
    mTenantID = str;
    return mTenantID;
  }
  
  public static int getTxnId() {
    mTxnId.set(mTxnId.incrementAndGet());
    return mTxnId.intValue();
  }
  
  public static AppDeviceData getmAppDeviceData() {
    return mAppDeviceData;
  }
  
  public static Handler getmMessageProcessingHandler() {
    return mMessageProcessingHandler;
  }
  
  public static void httpPerformance(Network paramNetwork) {
    JSONObject jSONObject2;
    CALog.v("httpPerformance - MDO httpPerformance ");
    if (!mInitialized.get() || mDisabled.get() || !isSessionReady()) {
      sendErrorCallback(paramNetwork.callback, new CaMDOException(CaMDOError.CAMDO_LOG_INITIALIZE_ERROR_CODE));
      return;
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("ty", "network");
      jSONObject1.put("u", paramNetwork.url);
      jSONObject1.put("r", paramNetwork.responseTime);
      if (paramNetwork.httpStatus == 0)
        paramNetwork.httpStatus = 777; 
      jSONObject1.put("s", paramNetwork.httpStatus);
      jSONObject1.put("i", paramNetwork.inBytes);
      jSONObject1.put("o", paramNetwork.outBytes);
      JSONObject jSONObject = new JSONObject();
      jSONObject2 = new JSONObject();
      if (paramNetwork.headers != null) {
        for (Map.Entry<String, String> entry : paramNetwork.headers.entrySet()) {
          jSONObject.put("name", entry.getKey());
          jSONObject.put("value", entry.getValue());
        } 
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject);
        jSONObject1.put("ha", jSONArray);
      } 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      setScreenNames(jSONObject1, null, false, null);
      sendMessage(4, jSONObject1, paramNetwork.callback);
      return;
    } 
    if (paramNetwork.reqParams != null) {
      for (Map.Entry<String, String> entry : paramNetwork.reqParams.entrySet()) {
        jSONObject2.put("name", entry.getKey());
        jSONObject2.put("value", entry.getValue());
      } 
      JSONArray jSONArray = new JSONArray();
      jSONArray.put(throwable);
      jSONObject1.put("rp", jSONArray);
    } 
    setScreenNames(jSONObject1, null, false, null);
    sendMessage(4, jSONObject1, paramNetwork.callback);
  }
  
  public static void incrementEventUploadCounter() {
    boolean bool;
    long l = Util.getSharedPreferences().getLong(Constants.PREF_EVENT_COUNTER_FOR_UPLOAD, 0L) + 1L;
    Util.getSharedPreferencesEditor().putLong(Constants.PREF_EVENT_COUNTER_FOR_UPLOAD, l).commit();
    CALog.d("GlobalCounter Incrementing:::" + l);
    if (System.currentTimeMillis() - lastUploadAttemptTime > 60000L) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool && l > PolicyUtil.getPolicyManager((Context)SDK.getApp()).getUploadEventsLimit()) {
      CALog.d("GlobalCounter Trigger Upload:::" + l);
      resetEventUploadCounter();
      sendMessage(251, null);
    } 
  }
  
  @TargetApi(9)
  public static void initialize(Application paramApplication) {
    if (!mDisabled.get() && !mInitialized.getAndSet(true)) {
      Context context = paramApplication.getApplicationContext();
      if (!MDOSecurityManager.getInstance().isSecureMode()) {
        CALog.d("-------- CA SDK Begin Initialization --------");
      } else {
        CALog.d("-------- CA SDK Begin Initialization in Secure Mode --------");
      } 
      CALog.i("SDK Version:16.4.2");
      CALog.i("v16.4.2 May 16 2017 10:23");
      mTransactions = new ConcurrentHashMap<String, String>();
      mTransactionsHolder = new ConcurrentHashMap<String, TransactionDetails>();
      customEvents = new ConcurrentHashMap<String, JSONArray>();
      Map<String, String> map = reloadConfig(paramApplication);
      MDOSecurityManager.getInstance().loadPlistConfiguration(map);
      if (mCollectorUrl != null && !mCollectorUrl.equalsIgnoreCase("")) {
        CALog.d("mCollectorUrl = " + mCollectorUrl);
        backendUrl = mCollectorUrl;
      } else {
        CALog.d("mBaseUrl = " + mBaseUrl);
        backendUrl = mBaseUrl + "/write_bulk";
      } 
      CALog.d("backendUrl = " + backendUrl);
      PolicyUtil.mProfileUrl = map.get("profileURL");
      try {
        initializeStartupTime();
        ACRA.init(paramApplication);
        locationTracker = new MDOLocationTracker();
        persistenceManager = new PersistenceManager();
        mAppDeviceData = new AppDeviceData((Context)SDK.getApp(), mTenantID);
        getDataManager();
        initializeHandlers(context);
        DevOpsReporterSender devOpsReporterSender = new DevOpsReporterSender();
        ACRA.getErrorReporter().setReportSender(devOpsReporterSender);
        AppDeviceData.registerForBatteryStatus();
        CALog.v("Database Handler Thread initialized");
        CALog.v("Successfully initialized CA Mobile Analytics");
        registerForNetworkChangeStatus();
        return;
      } catch (Throwable throwable) {
        mDisabled.set(true);
        CALog.e(throwable.getMessage(), throwable);
        return;
      } 
    } 
  }
  
  @Deprecated
  public static void initialize(Application paramApplication, String paramString) {
    CALog.e("Deprecated: MAA SDK will use encryption key provided in plist file");
  }
  
  private static void initializeHandlers(Context paramContext) {
    mMessageProcessingHandlerThread = new HandlerThread(PACKAGE + "_MessageHandlerThread", 10);
    mMessageProcessingHandlerThread.start();
    mMessageProcessingHandler = new MessageProcessingHandler(mMessageProcessingHandlerThread.getLooper(), paramContext);
    sendMessage(0, null);
    CALog.v("Message Processing Handler Thread initialized");
    MDOListener mDOListener = new MDOListener();
    AppMode.get().addListener(mDOListener);
  }
  
  private static void initializeStartupTime() {
    try {
      int i = Process.myPid();
      long l = (new File("/proc/" + i)).lastModified();
      mStartupTime = System.currentTimeMillis() - l;
      return;
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      return;
    } 
  }
  
  protected static void invokeCustomerReceiver() {
    Intent intent = new Intent("crashOccurred");
    SDK.getApp().sendBroadcast(intent);
  }
  
  public static boolean isCrossWalk() {
    try {
      Class.forName("org.crosswalk.engine.XWalkWebViewEngine");
      return true;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public static boolean isInPrivateZone() {
    return isPrivateZone;
  }
  
  public static boolean isScreenshotPolicyEnabled() {
    return PolicyUtil.getPolicyManager((Context)SDK.getApp()).isScreenshotEnabled();
  }
  
  private static boolean isSessionReady() {
    return (getPersistenceManager() != null && (getPersistenceManager()).sessionManager != null && (getPersistenceManager()).sessionManager.isSessionOpen() && (getPersistenceManager()).sessionManager.mSessionID != null);
  }
  
  public static void loadPlistConfiguration(Map<String, String> paramMap, Application paramApplication) {
    try {
      mTenantID = paramMap.get("tenantID");
      mAppID = paramMap.get("appId");
      mBaseUrl = paramMap.get("baseURL");
      mAppKey = paramMap.get("appKey");
      mCollectorUrl = paramMap.get("collectorUploadURL");
      Util.app = paramApplication;
      updatePreference(Constants.PREF_TENANTID, mTenantID);
      updatePreference(Constants.PREF_APPID, mAppID);
      updatePreference(Constants.PREF_BASEURL, mBaseUrl);
      updatePreference(Constants.PREF_APPKEY, mAppKey);
      updatePreference(Constants.PREF_COLLECTORURL, mCollectorUrl);
      return;
    } catch (Exception exception) {
      CALog.d("Exception in saving preferences of plist entries");
      return;
    } 
  }
  
  public static void logNumericMetric(String paramString, Double paramDouble, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {
    try {
      CALog.v("- MDO logNumericMetric ");
      if (mDisabled.get()) {
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_LOG_INITIALIZE_ERROR_CODE));
        return;
      } 
      if (paramString == null || paramString.trim().length() == 0 || paramDouble == null) {
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_INVALID_PARAMETER_ERROR_CODE));
        return;
      } 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      if (paramCaMDOCallback != null) {
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_LOG_NUMERICMETRIC_ERROR_CODE));
        return;
      } 
    } 
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    jSONObject2.put("dty", "double");
    if (paramMap != null)
      for (Map.Entry<String, String> entry : paramMap.entrySet())
        jSONObject2.put(entry.getKey().toString(), entry.getValue().toString());  
    jSONObject1.put("n", throwable);
    jSONObject1.put("v", paramDouble);
    jSONObject1.put("attr", jSONObject2);
    jSONObject1.put("ty", "custom");
    setScreenNames(jSONObject1, null, false, null);
    sendMessage(79, jSONObject1, paramCaMDOCallback);
  }
  
  public static void logTextMetric(String paramString1, String paramString2, Map<String, String> paramMap, CaMDOCallback paramCaMDOCallback) {
    try {
      CALog.v("- MDO logTextMetric ");
      if (mDisabled.get()) {
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_INVALID_PARAMETER_ERROR_CODE));
        return;
      } 
      if (paramString1 == null || paramString1.trim().length() == 0 || paramString2 == null || paramString2.trim().length() == 0) {
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_INVALID_PARAMETER_ERROR_CODE));
        return;
      } 
    } catch (Throwable throwable) {
      CALog.e(throwable.getMessage(), throwable);
      if (paramCaMDOCallback != null) {
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_LOG_TEXTMETRIC_ERROR_CODE));
        return;
      } 
    } 
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    jSONObject2.put("dty", "string");
    if (paramMap != null)
      for (Map.Entry<String, String> entry : paramMap.entrySet())
        jSONObject2.put(entry.getKey().toString(), entry.getValue().toString());  
    jSONObject1.put("n", throwable);
    jSONObject1.put("v", paramString2);
    jSONObject1.put("attr", jSONObject2);
    jSONObject1.put("ty", "custom");
    setScreenNames(jSONObject1, null, false, null);
    sendMessage(79, jSONObject1, paramCaMDOCallback);
  }
  
  public static JSONObject networkSwitchEvent(String paramString) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("v", paramString);
      jSONObject.put("n", "NetworkStatus");
      jSONObject.put("ty", "NetworkStatus");
      return jSONObject;
    } catch (JSONException jSONException) {
      CALog.ex((Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public static void onLowMemoryOfApplication() {
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1.put("ty", "app_events");
      jSONObject1.put("n", "MemoryWarning");
      jSONObject1.put("v", "Low Memory");
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    sendMessage(79, jSONObject1);
  }
  
  public static JSONObject processResumeActivityDetails(Activity paramActivity, String paramString) {
    long l = -1L;
    if (paramActivity instanceof com.ca.android.app.CaMDOActivity) {
      currentActivity = new WeakReference<Activity>(paramActivity);
      l = ((ScreenLoadTimeMeter)paramActivity).getLoadTime();
    } 
    return processResumeActivityEvent(paramActivity, l, paramString, null);
  }
  
  public static JSONObject processResumeActivityEvent(Activity paramActivity, long paramLong, String paramString1, String paramString2) {
    // Byte code:
    //   0: new org/json/JSONObject
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #6
    //   9: aload #4
    //   11: ifnonnull -> 129
    //   14: aload_0
    //   15: invokestatic getScreenName : (Landroid/app/Activity;)Ljava/lang/String;
    //   18: astore #5
    //   20: getstatic com/ca/mdo/CAMobileDevOps.ignoredViews : Ljava/util/Set;
    //   23: aload #5
    //   25: invokeinterface contains : (Ljava/lang/Object;)Z
    //   30: ifeq -> 35
    //   33: aconst_null
    //   34: areturn
    //   35: aload #6
    //   37: ldc 'v'
    //   39: aload #5
    //   41: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   44: pop
    //   45: aload #6
    //   47: ldc 'n'
    //   49: aload_3
    //   50: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   53: pop
    //   54: aload #6
    //   56: ldc 'ty'
    //   58: ldc_w 'view_events'
    //   61: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   64: pop
    //   65: lload_1
    //   66: ldc2_w -1
    //   69: lcmp
    //   70: ifeq -> 111
    //   73: aload #6
    //   75: ldc_w 'slt'
    //   78: lload_1
    //   79: invokestatic valueOf : (J)Ljava/lang/String;
    //   82: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   85: pop
    //   86: aload #6
    //   88: aload_0
    //   89: iconst_1
    //   90: aload #4
    //   92: invokestatic setScreenNames : (Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    //   95: aload #6
    //   97: areturn
    //   98: astore_0
    //   99: aload_0
    //   100: invokevirtual getMessage : ()Ljava/lang/String;
    //   103: aload_0
    //   104: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   107: pop
    //   108: aload #6
    //   110: areturn
    //   111: aload #6
    //   113: ldc_w 'slt'
    //   116: ldc2_w 20
    //   119: invokestatic valueOf : (J)Ljava/lang/String;
    //   122: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   125: pop
    //   126: goto -> 86
    //   129: aload #4
    //   131: astore #5
    //   133: goto -> 20
    // Exception table:
    //   from	to	target	type
    //   14	20	98	org/json/JSONException
    //   20	33	98	org/json/JSONException
    //   35	65	98	org/json/JSONException
    //   73	86	98	org/json/JSONException
    //   86	95	98	org/json/JSONException
    //   111	126	98	org/json/JSONException
  }
  
  public static void progressBarEvent(String paramString1, String paramString2, long paramLong1, long paramLong2) {
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject1.put("ty", "view_events");
      jSONObject1.put("v", "ProgressBar");
      jSONObject1.put("t", paramLong2);
      if (paramString1.equalsIgnoreCase("end")) {
        jSONObject1.put("n", "ai_end");
        jSONObject2.put("ai_st", paramLong1);
      } else if (paramString1.equalsIgnoreCase("start")) {
        jSONObject1.put("n", "ai_start");
      } 
      jSONObject2.put("ai_id", paramString2);
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    sendGeneralEvent(79, jSONObject1);
  }
  
  public static void reSetCrashedSession() {
    try {
      Util.getSharedPreferencesEditor().remove(Constants.PREF_CRASH_SESSION).commit();
      return;
    } catch (Exception exception) {
      CALog.ex(exception);
      return;
    } 
  }
  
  public static void registerAppFeedBack(BroadcastReceiver paramBroadcastReceiver) {
    mRegisteredFeedback = true;
    SDK.getApp().registerReceiver(paramBroadcastReceiver, new IntentFilter("crashOccurred"));
  }
  
  public static void registerForCallBacks(Activity paramActivity) {}
  
  protected static void registerForNetworkChangeStatus() {
    if (networkChangeReceiver != null)
      return; 
    try {
      networkChangeReceiver = new BroadcastReceiver() {
          public void onReceive(Context param1Context, Intent param1Intent) {
            NetworkInfo networkInfo = ((ConnectivityManager)param1Context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (CAMobileDevOps.checkNetwork("WIFI", 1, networkInfo)) {
              CALog.d("Connected to WIFI");
              CAMobileDevOps.sendGeneralEvent(79, CAMobileDevOps.networkSwitchEvent("WIFI"));
              Util.getSharedPreferencesEditor().putString("CONNECTION", "WIFI").commit();
            } else if (CAMobileDevOps.checkNetwork("MOBILE", 0, networkInfo)) {
              CALog.d("Connected to Mobile");
              CAMobileDevOps.sendGeneralEvent(79, CAMobileDevOps.networkSwitchEvent(CAMobileDevOps.getCurrentConnection(param1Context)));
              Util.getSharedPreferencesEditor().putString("CONNECTION", "MOBILE").commit();
            } else if (CAMobileDevOps.checkNetwork("WIMAX", 6, networkInfo)) {
              CALog.d("Connected to WIMAX");
              CAMobileDevOps.sendGeneralEvent(79, CAMobileDevOps.networkSwitchEvent("WIMAX"));
              Util.getSharedPreferencesEditor().putString("CONNECTION", "WIMAX").commit();
            } else if (CAMobileDevOps.checkNetwork("ETHERNET", 9, networkInfo)) {
              CALog.d("Connected to ETHERNET");
              CAMobileDevOps.sendGeneralEvent(79, CAMobileDevOps.networkSwitchEvent("ETHERNET"));
              Util.getSharedPreferencesEditor().putString("CONNECTION", "ETHERNET").commit();
            } else if (CAMobileDevOps.checkNetwork("BLUETOOTH", 7, networkInfo)) {
              CALog.d("Connected to BLUETOOTH");
              CAMobileDevOps.sendGeneralEvent(79, CAMobileDevOps.networkSwitchEvent("BLUETOOTH"));
              Util.getSharedPreferencesEditor().putString("CONNECTION", "BLUETOOTH").commit();
            } else if (networkInfo == null || !networkInfo.isConnected()) {
              CALog.d("Not Connected");
              CAMobileDevOps.sendGeneralEvent(79, CAMobileDevOps.networkSwitchEvent("No Connectivity"));
              Util.getSharedPreferencesEditor().putString("CONNECTION", "No Connectivity").commit();
            } 
            CAMobileDevOps.sendMessage(222, null);
          }
        };
      return;
    } catch (Throwable throwable) {
      CALog.e("registerForNetworkStatus failed", throwable);
      return;
    } 
  }
  
  public static Map<String, String> reloadConfig(Application paramApplication) {
    // Byte code:
    //   0: invokestatic getConfig : ()Ljava/util/Map;
    //   3: astore_3
    //   4: aload_3
    //   5: astore_1
    //   6: aload_3
    //   7: ifnonnull -> 22
    //   10: aload_3
    //   11: astore_2
    //   12: aload_0
    //   13: invokestatic readConfigurationFromPlistFile : (Landroid/content/Context;)V
    //   16: aload_3
    //   17: astore_2
    //   18: invokestatic getConfig : ()Ljava/util/Map;
    //   21: astore_1
    //   22: aload_1
    //   23: astore_2
    //   24: aload_1
    //   25: aload_0
    //   26: invokestatic loadPlistConfiguration : (Ljava/util/Map;Landroid/app/Application;)V
    //   29: aload_1
    //   30: astore_2
    //   31: iconst_1
    //   32: putstatic com/ca/mdo/CAMobileDevOps.configRead : Z
    //   35: aload_1
    //   36: areturn
    //   37: astore_0
    //   38: new java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial <init> : ()V
    //   45: ldc_w 'Config plist file Exception : '
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_0
    //   52: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   55: invokevirtual toString : ()Ljava/lang/String;
    //   58: invokestatic d : (Ljava/lang/String;)I
    //   61: pop
    //   62: aload_2
    //   63: areturn
    // Exception table:
    //   from	to	target	type
    //   12	16	37	java/lang/Exception
    //   18	22	37	java/lang/Exception
    //   24	29	37	java/lang/Exception
    //   31	35	37	java/lang/Exception
  }
  
  public static void removeCustomEventsForSession() {
    removeCustomEventsForSession(null);
  }
  
  public static void removeCustomEventsForSession(String paramString) {
    try {
      if (customEvents != null) {
        String str = paramString;
        if (paramString == null)
          str = getCurrentSession(); 
        if (str != null)
          customEvents.remove(str); 
      } 
      return;
    } catch (Exception exception) {
      CALog.ex(exception);
      return;
    } 
  }
  
  @TargetApi(2)
  private static void requestPermissions(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 23 && SDK.getApp().checkPermission("android.permission.ACCESS_COARSE_LOCATION", Process.myPid(), Process.myUid()) != 0 && PolicyUtil.getPolicyManager((Context)SDK.getApp()).getLocationCheck() > 0)
      try {
        paramActivity.getClass().getMethod("requestPermissions", new Class[] { String[].class, int.class }).invoke(paramActivity, new Object[] { { "android.permission.ACCESS_COARSE_LOCATION" }, Integer.valueOf(2147483637) });
        return;
      } catch (Exception exception) {
        CALog.e("Exception occurred while requesting permission " + exception.getLocalizedMessage(), exception);
        return;
      }  
  }
  
  public static void resetEventUploadCounter() {
    CALog.d("GlobalCounter Reset Counter:::");
    Util.getSharedPreferencesEditor().putLong(Constants.PREF_EVENT_COUNTER_FOR_UPLOAD, 0L).commit();
  }
  
  public static void resetIsCrashFlag() {
    Util.getSharedPreferencesEditor().putBoolean(Constants.PREF_IS_CRASH, false).commit();
  }
  
  public static JSONObject screenShotJson(String paramString1, String paramString2) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("v", paramString2);
      jSONObject.put("n", paramString1);
      jSONObject.put("ty", "view_events");
      return jSONObject;
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
      return jSONObject;
    } 
  }
  
  public static void sdkDisabledEvent() {
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    String str = "policy";
    try {
      jSONObject1.put("ty", "app_events");
      jSONObject1.put("n", "sdk_disabled");
      jSONObject1.put("v", String.valueOf(System.currentTimeMillis()));
      String str2 = Util.getSharedPreferences().getString(Constants.PREF_IS_SDK_ENABLED_BY_API, null);
      String str1 = str;
      if (str2 != null)
        if (!str2.equals("TRUE")) {
          str1 = "api";
        } else {
          CALog.e("SDK disabled event called by SDK Enabled by api");
          str1 = str;
        }  
      jSONObject2.put("m", str1);
      jSONObject1.put("attr", jSONObject2);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    sendGeneralEvent(79, jSONObject1);
  }
  
  public static boolean sendAPMHeader() {
    return PolicyManager.isAPMEnabled();
  }
  
  private static void sendAutoTransactions(JSONObject paramJSONObject, CaMDOCallback paramCaMDOCallback) {
    try {
      PolicyUtil.getPolicyManager((Context)SDK.getApp());
      if (PolicyManager.isAutoASATEnabled())
        startApplicationTransaction(paramJSONObject.getString("v"), getAppName(), true, paramCaMDOCallback); 
      return;
    } catch (Exception exception) {
      CALog.ex(exception);
      sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_UNKNOWN_ERROR_CODE));
      return;
    } 
  }
  
  public static void sendErrorCallback(CaMDOCallback paramCaMDOCallback, CaMDOException paramCaMDOException) {
    if (paramCaMDOCallback != null)
      try {
        Bundle bundle = new Bundle();
        bundle.putSerializable("camdo_exception", new Exception(paramCaMDOException.getMessage(), paramCaMDOException.getCause()));
        bundle.putInt("error_code", paramCaMDOException.getCode());
        paramCaMDOCallback.send(0, bundle);
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  static void sendGeneralEvent(int paramInt, JSONObject paramJSONObject) {
    try {
      if (mMessageProcessingHandler != null) {
        Message message;
        Handler handler = mMessageProcessingHandler;
        if (paramJSONObject != null) {
          message = mMessageProcessingHandler.obtainMessage(paramInt, paramJSONObject);
        } else {
          message = mMessageProcessingHandler.obtainMessage(paramInt);
        } 
        handler.sendMessage(message);
        return;
      } 
    } catch (Exception exception) {
      CALog.e("Error in sending message to handler - General Events ", exception);
    } 
  }
  
  public static void sendLocationMessage(int paramInt, Location paramLocation) {
    if (mMessageProcessingHandler != null)
      mMessageProcessingHandler.sendMessage(mMessageProcessingHandler.obtainMessage(paramInt, paramLocation)); 
  }
  
  public static void sendMessage(int paramInt, JSONObject paramJSONObject) {
    sendMessage(paramInt, paramJSONObject, null);
  }
  
  public static void sendMessage(int paramInt, JSONObject paramJSONObject, CaMDOCallback paramCaMDOCallback) {
    if (mMessageProcessingHandler != null) {
      Message message;
      if (paramJSONObject != null) {
        message = mMessageProcessingHandler.obtainMessage(paramInt, paramJSONObject);
      } else {
        message = mMessageProcessingHandler.obtainMessage(paramInt);
      } 
      if (paramCaMDOCallback != null) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(MessageProcessingHandler.API_CALLBACK, (Parcelable)paramCaMDOCallback);
        message.setData(bundle);
      } 
      mMessageProcessingHandler.sendMessage(message);
    } 
  }
  
  public static void sendSessionStart(int paramInt, Map<String, Object> paramMap) {
    if (mMessageProcessingHandler != null) {
      Message message;
      Handler handler = mMessageProcessingHandler;
      if (paramMap != null) {
        message = mMessageProcessingHandler.obtainMessage(paramInt, paramMap);
      } else {
        message = mMessageProcessingHandler.obtainMessage(paramInt);
      } 
      handler.sendMessage(message);
    } 
  }
  
  public static void sendSuccessCallback(CaMDOCallback paramCaMDOCallback, Map paramMap) {
    if (paramCaMDOCallback != null)
      try {
        Bundle bundle = new Bundle();
        if (paramMap != null)
          for (Map.Entry entry : paramMap.entrySet())
            bundle.putString(entry.getKey().toString(), entry.getValue().toString());  
        paramCaMDOCallback.send(1, bundle);
        return;
      } catch (Exception exception) {} 
  }
  
  public static void setCustomerFeedback(String paramString) {
    mCustomerFeedback = true;
    addCustomerFeedBack("custom_event", "User Feedback", paramString);
  }
  
  public static void setCustomerLocation(Location paramLocation) {
    if (paramLocation == null)
      return; 
    sendLocationMessage(223, paramLocation);
  }
  
  public static void setCustomerLocation(String paramString1, String paramString2) {
    mZipCode = paramString1;
    mCountryCode = paramString2;
    if (mZipCode == null || mCountryCode == null) {
      CALog.e("setCustomerLocation called with zipcode and/or country not set");
      return;
    } 
    mIsCustomerLocation = true;
    sendMessage(222, null);
  }
  
  public static void setCustomerLocation(Map<String, String> paramMap) {
    if (paramMap == null)
      return; 
    setCustomerLocation(paramMap.get("zp"), paramMap.get("cc"));
  }
  
  public static void setOptOut(boolean paramBoolean) {
    CALog.d("Opting out of data transmission.");
    mOptOut = paramBoolean;
  }
  
  public static void setSSLPinning(String paramString, byte[] paramArrayOfbyte) {
    MDOSSLPinning.setmSSLPinningMode(paramString);
    MDOSSLPinning.setCert(paramArrayOfbyte);
  }
  
  public static void setScreenNames(JSONObject paramJSONObject, Activity paramActivity, boolean paramBoolean, String paramString) {
    String str2 = paramString;
    paramString = str2;
    if (str2 == null)
      if (paramActivity != null) {
        paramString = getScreenName(paramActivity);
      } else {
        paramString = csn;
      }  
    String str1 = csn;
    if (paramJSONObject != null)
      try {
        if (!paramJSONObject.has("passovercsn"))
          paramJSONObject.put("passovercsn", paramString); 
        if (paramBoolean && !paramJSONObject.has("passoverpsn")) {
          if (str1 == null)
            str1 = ""; 
          paramJSONObject.put("passoverpsn", str1);
        } 
      } catch (JSONException jSONException) {
        CALog.ex((Throwable)jSONException);
      }  
    if (paramString != null && !paramString.equalsIgnoreCase("")) {
      csn = paramString;
      Util.getSharedPreferencesEditor().putString(Constants.PREF_CSN, csn).commit();
    } 
  }
  
  public static void setSessionAttribute(String paramString1, String paramString2, String paramString3) {
    if (!mDisabled.get()) {
      String str1 = paramString1;
      if (paramString1 == null)
        str1 = "string"; 
      try {
        if (!dataTypeCheckSession(str1) || paramString2 == null || paramString3 == null) {
          CALog.e("setSessionAttribute: Input Data is not valid.");
          return;
        } 
      } catch (Exception exception) {
        CALog.ex(exception);
        return;
      } 
      if (str1.equalsIgnoreCase("customerId")) {
        mCustomerId = paramString3;
        mCustomerIdType = "customerId";
        if (mMessageProcessingHandler != null && mCustomerId != null && mCustomerIdType != null) {
          mMessageProcessingHandler.sendMessage(mMessageProcessingHandler.obtainMessage(222));
          return;
        } 
        return;
      } 
      String str2 = getCurrentSession();
      if (str2 != null && !str2.equalsIgnoreCase("unknown")) {
        JSONArray jSONArray2 = customEvents.get(str2);
        JSONArray jSONArray1 = jSONArray2;
        if (jSONArray2 == null)
          jSONArray1 = new JSONArray(); 
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("n", paramString2);
        jSONObject.put("v", paramString3);
        jSONObject.put("dty", str1);
        jSONArray1.put(jSONObject);
        customEvents.put(str2, jSONArray1);
        mMessageProcessingHandler.sendMessage(mMessageProcessingHandler.obtainMessage(222));
        return;
      } 
    } 
  }
  
  public static void setSessionProcessed(boolean paramBoolean) {
    sessionProcessed.set(paramBoolean);
  }
  
  public static void startApplicationTransaction(String paramString, CaMDOCallback paramCaMDOCallback) {
    startApplicationTransaction(paramString, null, false, paramCaMDOCallback);
  }
  
  public static void startApplicationTransaction(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {
    startApplicationTransaction(paramString1, paramString2, false, paramCaMDOCallback);
  }
  
  public static boolean startApplicationTransaction(String paramString) {
    return startApplicationTransaction(paramString, null, false, null);
  }
  
  public static boolean startApplicationTransaction(String paramString1, String paramString2) {
    return startApplicationTransaction(paramString1, paramString2, false, null);
  }
  
  protected static boolean startApplicationTransaction(String paramString1, String paramString2, boolean paramBoolean, CaMDOCallback paramCaMDOCallback) {
    // Byte code:
    //   0: getstatic com/ca/mdo/CAMobileDevOps.mDisabled : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   3: invokevirtual get : ()Z
    //   6: ifne -> 15
    //   9: invokestatic isSessionReady : ()Z
    //   12: ifne -> 31
    //   15: aload_3
    //   16: new com/ca/mdo/CaMDOException
    //   19: dup
    //   20: getstatic com/ca/mdo/CaMDOError.CAMDO_LOG_INITIALIZE_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   23: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   26: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   29: iconst_0
    //   30: ireturn
    //   31: iload_2
    //   32: invokestatic getAppService : (Z)Ljava/lang/String;
    //   35: astore #8
    //   37: aload_0
    //   38: ifnull -> 52
    //   41: aload_0
    //   42: astore_1
    //   43: aload_0
    //   44: ldc ''
    //   46: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   49: ifeq -> 56
    //   52: ldc_w 'unknown'
    //   55: astore_1
    //   56: new java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial <init> : ()V
    //   63: aload_1
    //   64: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: getstatic com/ca/mdo/CAMobileDevOps.TRANSACTION_SEPARATOR : Ljava/lang/String;
    //   70: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload #8
    //   75: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual toString : ()Ljava/lang/String;
    //   81: astore #9
    //   83: getstatic com/ca/mdo/CAMobileDevOps.mTransactionsHolder : Ljava/util/Map;
    //   86: aload #9
    //   88: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   93: checkcast com/ca/mdo/TransactionDetails
    //   96: astore #7
    //   98: iconst_0
    //   99: istore #4
    //   101: aload #7
    //   103: ifnonnull -> 148
    //   106: new com/ca/mdo/TransactionDetails
    //   109: dup
    //   110: invokespecial <init> : ()V
    //   113: astore #7
    //   115: invokestatic getApp : ()Landroid/app/Application;
    //   118: invokestatic getPolicyManager : (Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;
    //   121: pop
    //   122: invokestatic isAutoASATEnabled : ()Z
    //   125: ifne -> 154
    //   128: iload_2
    //   129: ifeq -> 154
    //   132: aload_3
    //   133: new com/ca/mdo/CaMDOException
    //   136: dup
    //   137: getstatic com/ca/mdo/CaMDOError.CAMDO_POLICY_NOT_APPLIED_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   140: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   143: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   146: iconst_0
    //   147: ireturn
    //   148: iconst_1
    //   149: istore #4
    //   151: goto -> 115
    //   154: invokestatic currentTimeMillis : ()J
    //   157: lstore #5
    //   159: iload #4
    //   161: ifne -> 452
    //   164: aconst_null
    //   165: astore_0
    //   166: getstatic com/ca/mdo/CAMobileDevOps.mAppTransaction : Ljava/lang/String;
    //   169: astore #10
    //   171: getstatic com/ca/mdo/CAMobileDevOps.mAppService : Ljava/lang/String;
    //   174: astore #11
    //   176: getstatic com/ca/mdo/CAMobileDevOps.mAppTransactionStartTime : J
    //   179: invokestatic toString : (J)Ljava/lang/String;
    //   182: astore #12
    //   184: aload #10
    //   186: ifnull -> 232
    //   189: aload #11
    //   191: ifnull -> 397
    //   194: new java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial <init> : ()V
    //   201: aload #11
    //   203: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: sipush #926
    //   209: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   212: aload #10
    //   214: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: sipush #926
    //   220: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   223: aload #12
    //   225: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: invokevirtual toString : ()Ljava/lang/String;
    //   231: astore_0
    //   232: new org/json/JSONObject
    //   235: dup
    //   236: invokespecial <init> : ()V
    //   239: astore #13
    //   241: aload #13
    //   243: aconst_null
    //   244: iconst_0
    //   245: aconst_null
    //   246: invokestatic setScreenNames : (Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    //   249: ldc_w 'apptxn_start'
    //   252: aload #8
    //   254: aload_1
    //   255: lload #5
    //   257: invokestatic currentTimeMillis : ()J
    //   260: aload #11
    //   262: aload #10
    //   264: aload #12
    //   266: aconst_null
    //   267: iload_2
    //   268: aload #13
    //   270: invokestatic buildEvtTypeActivityTxn : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lorg/json/JSONObject;
    //   273: astore #10
    //   275: aload #10
    //   277: ifnull -> 459
    //   280: new java/lang/StringBuilder
    //   283: dup
    //   284: invokespecial <init> : ()V
    //   287: ldc_w 'Starting transaction with txn: '
    //   290: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: aload_1
    //   294: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: ldc_w ' service: '
    //   300: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: aload #8
    //   305: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: invokevirtual toString : ()Ljava/lang/String;
    //   311: invokestatic d : (Ljava/lang/String;)I
    //   314: pop
    //   315: aload #10
    //   317: aconst_null
    //   318: iconst_0
    //   319: aconst_null
    //   320: invokestatic setScreenNames : (Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    //   323: aload #7
    //   325: aload_1
    //   326: putfield mAppTransaction : Ljava/lang/String;
    //   329: aload #7
    //   331: aload #8
    //   333: putfield mAppService : Ljava/lang/String;
    //   336: aload #7
    //   338: lload #5
    //   340: putfield mAppTransactionTime : J
    //   343: aload #7
    //   345: aload_0
    //   346: putfield parentString : Ljava/lang/String;
    //   349: aload #7
    //   351: invokestatic getTxnId : ()I
    //   354: putfield txnId : I
    //   357: aload_1
    //   358: putstatic com/ca/mdo/CAMobileDevOps.mAppTransaction : Ljava/lang/String;
    //   361: aload #8
    //   363: putstatic com/ca/mdo/CAMobileDevOps.mAppService : Ljava/lang/String;
    //   366: aload #7
    //   368: getfield mAppTransactionTime : J
    //   371: putstatic com/ca/mdo/CAMobileDevOps.mAppTransactionStartTime : J
    //   374: bipush #7
    //   376: aload #10
    //   378: aload_3
    //   379: invokestatic sendMessage : (ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    //   382: getstatic com/ca/mdo/CAMobileDevOps.mTransactionsHolder : Ljava/util/Map;
    //   385: aload #9
    //   387: aload #7
    //   389: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   394: pop
    //   395: iconst_1
    //   396: ireturn
    //   397: new java/lang/StringBuilder
    //   400: dup
    //   401: invokespecial <init> : ()V
    //   404: aload #10
    //   406: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: sipush #926
    //   412: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   415: aload #12
    //   417: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: invokevirtual toString : ()Ljava/lang/String;
    //   423: astore_0
    //   424: goto -> 232
    //   427: astore_0
    //   428: ldc_w 'JSON Exception'
    //   431: aload_0
    //   432: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   435: pop
    //   436: aload_3
    //   437: new com/ca/mdo/CaMDOException
    //   440: dup
    //   441: getstatic com/ca/mdo/CaMDOError.CAMDO_JSON_PARSE_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   444: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   447: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   450: iconst_0
    //   451: ireturn
    //   452: aload_3
    //   453: aconst_null
    //   454: invokestatic sendSuccessCallback : (Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V
    //   457: iconst_1
    //   458: ireturn
    //   459: iconst_0
    //   460: ireturn
    // Exception table:
    //   from	to	target	type
    //   232	275	427	org/json/JSONException
    //   280	395	427	org/json/JSONException
  }
  
  public static void startNewSession() {
    sendMessage(254, null);
  }
  
  public static void stopApplicationTransaction(String paramString, CaMDOCallback paramCaMDOCallback) {
    stopApplicationTransaction(paramString, null, false, paramCaMDOCallback);
  }
  
  public static void stopApplicationTransaction(String paramString1, String paramString2, CaMDOCallback paramCaMDOCallback) {
    stopApplicationTransaction(paramString1, paramString2, false, paramCaMDOCallback);
  }
  
  protected static boolean stopApplicationTransaction(String paramString1, String paramString2, boolean paramBoolean, CaMDOCallback paramCaMDOCallback) {
    // Byte code:
    //   0: getstatic com/ca/mdo/CAMobileDevOps.mDisabled : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   3: invokevirtual get : ()Z
    //   6: ifne -> 15
    //   9: invokestatic isSessionReady : ()Z
    //   12: ifne -> 31
    //   15: aload_3
    //   16: new com/ca/mdo/CaMDOException
    //   19: dup
    //   20: getstatic com/ca/mdo/CaMDOError.CAMDO_LOG_INITIALIZE_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   23: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   26: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   29: iconst_0
    //   30: ireturn
    //   31: iload_2
    //   32: invokestatic getAppService : (Z)Ljava/lang/String;
    //   35: astore #12
    //   37: aload_0
    //   38: ifnull -> 53
    //   41: aload_0
    //   42: astore #7
    //   44: aload_0
    //   45: ldc ''
    //   47: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   50: ifeq -> 58
    //   53: ldc_w 'Unknown'
    //   56: astore #7
    //   58: new java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial <init> : ()V
    //   65: aload #7
    //   67: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: getstatic com/ca/mdo/CAMobileDevOps.TRANSACTION_SEPARATOR : Ljava/lang/String;
    //   73: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: aload #12
    //   78: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual toString : ()Ljava/lang/String;
    //   84: astore #13
    //   86: getstatic com/ca/mdo/CAMobileDevOps.mTransactionsHolder : Ljava/util/Map;
    //   89: aload #13
    //   91: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   96: checkcast com/ca/mdo/TransactionDetails
    //   99: astore #14
    //   101: aload #14
    //   103: ifnonnull -> 122
    //   106: aload_3
    //   107: new com/ca/mdo/CaMDOException
    //   110: dup
    //   111: getstatic com/ca/mdo/CaMDOError.CAMDO_TRANSACTION_NOT_PRESENT_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   114: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   117: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   120: iconst_0
    //   121: ireturn
    //   122: new java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial <init> : ()V
    //   129: ldc_w 'Stopping transaction with txn: '
    //   132: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: aload #7
    //   137: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc_w ' service: '
    //   143: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload #12
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual toString : ()Ljava/lang/String;
    //   154: invokestatic d : (Ljava/lang/String;)I
    //   157: pop
    //   158: aload #7
    //   160: ifnonnull -> 179
    //   163: aload_3
    //   164: new com/ca/mdo/CaMDOException
    //   167: dup
    //   168: getstatic com/ca/mdo/CaMDOError.CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   171: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   174: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   177: iconst_0
    //   178: ireturn
    //   179: aload #14
    //   181: getfield parentString : Ljava/lang/String;
    //   184: astore #15
    //   186: aconst_null
    //   187: astore #9
    //   189: aconst_null
    //   190: astore #10
    //   192: aconst_null
    //   193: astore #11
    //   195: aload #10
    //   197: astore_0
    //   198: aload #9
    //   200: astore #6
    //   202: aload #11
    //   204: astore #8
    //   206: aload #15
    //   208: ifnull -> 256
    //   211: aload #15
    //   213: ldc_w '926'
    //   216: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   219: astore #15
    //   221: aload #10
    //   223: astore_0
    //   224: aload #9
    //   226: astore #6
    //   228: aload #11
    //   230: astore #8
    //   232: aload #15
    //   234: arraylength
    //   235: iconst_3
    //   236: if_icmpne -> 256
    //   239: aload #15
    //   241: iconst_0
    //   242: aaload
    //   243: astore_0
    //   244: aload #15
    //   246: iconst_1
    //   247: aaload
    //   248: astore #6
    //   250: aload #15
    //   252: iconst_2
    //   253: aaload
    //   254: astore #8
    //   256: invokestatic getApp : ()Landroid/app/Application;
    //   259: invokestatic getPolicyManager : (Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;
    //   262: pop
    //   263: invokestatic isAutoASATEnabled : ()Z
    //   266: ifne -> 289
    //   269: iload_2
    //   270: ifeq -> 289
    //   273: aload_3
    //   274: new com/ca/mdo/CaMDOException
    //   277: dup
    //   278: getstatic com/ca/mdo/CaMDOError.CAMDO_POLICY_NOT_APPLIED_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   281: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   284: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   287: iconst_0
    //   288: ireturn
    //   289: new org/json/JSONObject
    //   292: dup
    //   293: invokespecial <init> : ()V
    //   296: astore #10
    //   298: aload #10
    //   300: aconst_null
    //   301: iconst_0
    //   302: aconst_null
    //   303: invokestatic setScreenNames : (Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    //   306: aload_1
    //   307: ifnonnull -> 462
    //   310: ldc_w 'apptxn_end'
    //   313: astore #9
    //   315: aload #9
    //   317: aload #14
    //   319: getfield mAppService : Ljava/lang/String;
    //   322: aload #14
    //   324: getfield mAppTransaction : Ljava/lang/String;
    //   327: aload #14
    //   329: getfield mAppTransactionTime : J
    //   332: invokestatic currentTimeMillis : ()J
    //   335: aload_0
    //   336: aload #6
    //   338: aload #8
    //   340: aload_1
    //   341: iload_2
    //   342: aload #10
    //   344: invokestatic buildEvtTypeActivityTxn : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lorg/json/JSONObject;
    //   347: astore_1
    //   348: aload_1
    //   349: ifnull -> 514
    //   352: new java/lang/StringBuilder
    //   355: dup
    //   356: invokespecial <init> : ()V
    //   359: ldc_w 'Stopping transaction with txn: '
    //   362: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: aload #7
    //   367: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: ldc_w ' service: '
    //   373: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: aload #12
    //   378: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: invokevirtual toString : ()Ljava/lang/String;
    //   384: invokestatic d : (Ljava/lang/String;)I
    //   387: pop
    //   388: aload_1
    //   389: aconst_null
    //   390: iconst_0
    //   391: aconst_null
    //   392: invokestatic setScreenNames : (Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    //   395: bipush #8
    //   397: aload_1
    //   398: aload_3
    //   399: invokestatic sendMessage : (ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    //   402: getstatic com/ca/mdo/CAMobileDevOps.mTransactionsHolder : Ljava/util/Map;
    //   405: aload #13
    //   407: invokeinterface remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   412: pop
    //   413: aload #14
    //   415: getfield txnId : I
    //   418: invokestatic cleanUpChildren : (I)V
    //   421: aload #8
    //   423: ifnull -> 470
    //   426: aload #8
    //   428: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Long;
    //   431: invokevirtual longValue : ()J
    //   434: lstore #4
    //   436: lload #4
    //   438: putstatic com/ca/mdo/CAMobileDevOps.mAppTransactionStartTime : J
    //   441: aload #6
    //   443: ifnull -> 478
    //   446: aload #6
    //   448: putstatic com/ca/mdo/CAMobileDevOps.mAppTransaction : Ljava/lang/String;
    //   451: aload_0
    //   452: ifnull -> 484
    //   455: aload_0
    //   456: putstatic com/ca/mdo/CAMobileDevOps.mAppService : Ljava/lang/String;
    //   459: goto -> 514
    //   462: ldc_w 'apptxn_fail'
    //   465: astore #9
    //   467: goto -> 315
    //   470: ldc2_w -1
    //   473: lstore #4
    //   475: goto -> 436
    //   478: aconst_null
    //   479: astore #6
    //   481: goto -> 446
    //   484: aconst_null
    //   485: astore_0
    //   486: goto -> 455
    //   489: astore_0
    //   490: ldc_w 'JSON Exception'
    //   493: aload_0
    //   494: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   497: pop
    //   498: aload_3
    //   499: new com/ca/mdo/CaMDOException
    //   502: dup
    //   503: getstatic com/ca/mdo/CaMDOError.CAMDO_JSON_PARSE_ERROR_CODE : Lcom/ca/mdo/CaMDOError;
    //   506: invokespecial <init> : (Lcom/ca/mdo/CaMDOError;)V
    //   509: invokestatic sendErrorCallback : (Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    //   512: iconst_0
    //   513: ireturn
    //   514: iconst_1
    //   515: ireturn
    // Exception table:
    //   from	to	target	type
    //   289	306	489	org/json/JSONException
    //   315	348	489	org/json/JSONException
    //   352	421	489	org/json/JSONException
    //   426	436	489	org/json/JSONException
    //   436	441	489	org/json/JSONException
    //   446	451	489	org/json/JSONException
    //   455	459	489	org/json/JSONException
  }
  
  public static void stopCurrentAndStartNewSession() {
    sendMessage(252, null);
  }
  
  public static void stopCurrentSession() {
    sendMessage(253, null);
  }
  
  static boolean takeScreenshotOfCurrentActivity(String paramString, int paramInt) {
    return takeScreenshotOfCurrentActivity(paramString, paramInt, null, null);
  }
  
  static boolean takeScreenshotOfCurrentActivity(String paramString, int paramInt, CaMDOCallback paramCaMDOCallback, Bitmap paramBitmap) {
    Activity activity = getCurrentActivity();
    boolean bool = false;
    if (isPrivateZone)
      return false; 
    if (activity != null) {
      String str = paramString;
      if (paramString == null) {
        str = getScreenName(activity);
        if (str == null)
          str = "ScreenShot".toLowerCase(); 
      } 
      JSONObject jSONObject1 = screenShotJson("ScreenShot", str);
      Util.Screenshot screenshot = Util.takeScreenshot(activity, paramInt, null);
      bool = true;
      JSONObject jSONObject2 = new JSONObject();
      try {
        jSONObject2.put("or", AppDeviceData.getDeviceOrientationString(AppDeviceData.getDeviceOrientation()));
        if (screenshot != null) {
          jSONObject2.put("ss", screenshot.encodedValue);
          jSONObject2.put("w", screenshot.screenShotWidth);
          jSONObject2.put("h", screenshot.screenShotHeight);
          jSONObject2.put("tt", str);
        } else {
          sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE));
        } 
        jSONObject1.put("attr", jSONObject2);
        sendMessage(79, jSONObject1, paramCaMDOCallback);
        return bool;
      } catch (JSONException jSONException) {
        CALog.e(jSONException.getMessage(), (Throwable)jSONException);
        sendErrorCallback(paramCaMDOCallback, new CaMDOException(CaMDOError.CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE));
        return false;
      } 
    } 
    return bool;
  }
  
  public static void updateLocationChangesToHeader(Location paramLocation) {
    sendLocationMessage(223, paramLocation);
  }
  
  public static void updatePreference(String paramString1, String paramString2) {
    if (paramString2 != null && !paramString2.equalsIgnoreCase(""))
      Util.getSharedPreferencesEditor().putString(paramString1, paramString2).commit(); 
  }
  
  public static void viewLoaded(String paramString, long paramLong) {
    if (ignoredViews.contains(paramString))
      return; 
    viewLoaded(paramString, paramLong, null);
  }
  
  public static void viewLoaded(String paramString, long paramLong, CaMDOCallback paramCaMDOCallback) {
    JSONObject jSONObject = processResumeActivityEvent(null, paramLong, "onResume", paramString);
    if (jSONObject != null) {
      sendAutoTransactions(jSONObject, paramCaMDOCallback);
      (new MDOTask(getCurrentActivity(), jSONObject, true, null)).process();
      sendSuccessCallback(paramCaMDOCallback, null);
    } 
  }
  
  public static void viewLoaded(String paramString, long paramLong, CaMDOCallback paramCaMDOCallback, Bitmap paramBitmap) {
    JSONObject jSONObject = processResumeActivityEvent(null, paramLong, "onResume", paramString);
    if (jSONObject != null) {
      sendAutoTransactions(jSONObject, paramCaMDOCallback);
      (new MDOTask(getCurrentActivity(), jSONObject, true, paramBitmap)).process();
      sendSuccessCallback(paramCaMDOCallback, null);
    } 
  }
  
  public static void webViewOnPageEvent(String paramString1, String paramString2) {
    if (mDisabled.get())
      return; 
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("n", paramString2);
      jSONObject.put("v", paramString1);
      jSONObject.put("ty", "view_events");
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    if ("page_start".equals(paramString2)) {
      setScreenNames(jSONObject, null, false, paramString1);
    } else {
      setScreenNames(jSONObject, null, false, null);
    } 
    sendMessage(79, jSONObject);
  }
  
  public static class CustomerFeedback {
    public long sessionEnd = 0L;
    
    public String sessionIdentifier = null;
    
    public long sessionStart = 0L;
    
    public CustomerFeedback(long param1Long1, long param1Long2, String param1String) {
      this.sessionEnd = param1Long2;
      this.sessionStart = param1Long1;
      this.sessionIdentifier = param1String;
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CAMobileDevOps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */