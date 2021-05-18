package com.ca.mdo;

import android.content.Context;
import android.os.Handler;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class PolicyManager {
  private static final String APM = "APM";
  
  private static final String ASAT_AUTO = "ASAT_AUTO";
  
  private static final String COLLECT_LOCATION = "COLLECT_LOCATION";
  
  private static final String COLLECT_PERFORMANCE_FREQUENCY = "COLLECT_PERFORMANCE_FREQUENCY";
  
  private static final String CPU = "CPU";
  
  private static final String CRASH = "CRASH";
  
  private static final String DISK = "DISK";
  
  private static final String FPS = "FPS";
  
  private static final String MAX_DB_SIZE_IN_BYTES = "MAX_DB_SIZE_IN_BYTES";
  
  private static final String MEM = "MEM";
  
  private static final String SCREEN_CAPTURE = "SCREEN_CAPTURE";
  
  private static final String SDK_ENABLED = "SDK_ENABLED";
  
  private static final String SESSION_TIMEOUT = "SESSION_TIMEOUT";
  
  private static final String UPLOAD_EVENTS_LIMIT = "UPLOAD_EVENTS_LIMIT";
  
  private static final String UPLOAD_ONLY_ON_WIFI = "UPLOAD_WIFI";
  
  private static final String URL = "URL";
  
  private static final String cacheFileName = "policyData.txt";
  
  private static boolean mAPMEnabled;
  
  private static boolean mAutoASATEnabled;
  
  private static boolean mCrashEnabled = true;
  
  private int locationCheck = 0;
  
  private boolean mBatteryEnabled = true;
  
  private int mCollectPerfFrequency = 50;
  
  private Context mContext;
  
  private boolean mCpuEnabled = true;
  
  private boolean mDiskEnabled = true;
  
  private boolean mFpsEnabled = true;
  
  private long mLastUpdated = -1L;
  
  private long mMaxDBSizeInBytes = 104857600L;
  
  private boolean mMemEnabled = true;
  
  private boolean mNetworkStatsEnabled = true;
  
  private String mPolicyUrl;
  
  private boolean mSDKEnabled = true;
  
  private boolean mScreenshotEnabled = false;
  
  private int mSessionTimeout = 30000;
  
  private int mUploadEventsLimit = 1000;
  
  private boolean mUploadOnWifi = false;
  
  static {
    mAPMEnabled = false;
    mAutoASATEnabled = false;
  }
  
  protected PolicyManager(Context paramContext, String paramString) {
    this.mContext = paramContext;
    this.mPolicyUrl = paramString;
    init();
  }
  
  private int getCpi() {
    int i = -1;
    try {
      int j = Util.getSharedPreferences().getInt(Constants.PREF_CPI, -1);
      if (j > 0)
        return j; 
      i = j;
      String str = getPolicyJsonFromFile();
      i = j;
      if (str != null) {
        i = j;
        j = (new JSONObject(str)).getInt("profileId");
        i = j;
      } 
    } catch (Exception exception) {
      CALog.e("Exception in reading policy Id ", exception);
    } 
    return i;
  }
  
  private long getCpt() {
    long l;
    try {
      long l1 = Util.getSharedPreferences().getLong(Constants.PREF_CPT, 1L);
      if (l1 > 0L)
        return l1; 
      String str = getPolicyJsonFromFile();
      if (str != null)
        l1 = (new JSONObject(str)).getLong("lastUpdated"); 
      l = l1;
      if (l1 <= 0L)
        l = 1L; 
    } catch (Exception exception) {
      CALog.e("Exception in reading policy data ", exception);
      l = 1L;
    } 
    return l;
  }
  
  private String getPolicyJsonFromFile() {
    CALog.d("checking for policy cache");
    try {
      FileInputStream fileInputStream = this.mContext.openFileInput("policyData.txt");
      if (fileInputStream != null) {
        CALog.d("-----------> Loading existing policy cache <------------");
        StringBuilder stringBuilder = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        String str;
        for (str = bufferedReader.readLine(); str != null; str = bufferedReader.readLine())
          stringBuilder.append(str); 
        str = stringBuilder.toString();
        bufferedReader.close();
        inputStreamReader.close();
        fileInputStream.close();
        return str;
      } 
    } catch (FileNotFoundException fileNotFoundException) {
      CALog.d("PolicyManager: policy cache not present");
    } catch (Exception exception) {
      CALog.e(exception.getMessage(), exception);
    } 
    return null;
  }
  
  public static boolean getSDKEnabledFlagPrefVal(Context paramContext) {
    return paramContext.getSharedPreferences(Constants.PREF_NAME, 0).getBoolean(Constants.PREF_SDK_ENABLED, true);
  }
  
  protected static boolean isAPMEnabled() {
    return mAPMEnabled;
  }
  
  protected static boolean isAutoASATEnabled() {
    return mAutoASATEnabled;
  }
  
  protected static boolean isCrashEnabled() {
    return mCrashEnabled;
  }
  
  private boolean loadPolicyFromCache() {
    String str = getPolicyJsonFromFile();
    if (str != null) {
      processData(str);
      return true;
    } 
    return false;
  }
  
  private boolean processData(String paramString) {
    boolean bool = getSDKEnabledFlagPrefVal(this.mContext);
    try {
      resetValues();
      if (!MDOSecurityManager.getInstance().isSecureMode()) {
        CALog.d("PolicyManager: " + paramString);
      } else {
        CALog.d("PolicyManager: Obtained data sucessfully. Data size:" + paramString.length());
      } 
      JSONObject jSONObject = new JSONObject(paramString);
      int i = jSONObject.getInt("profileId");
      String str = jSONObject.getString("profileName");
      jSONObject.getLong("created");
      this.mLastUpdated = jSONObject.getLong("lastUpdated");
      Util.getSharedPreferencesEditor().putLong(Constants.PREF_CPT, this.mLastUpdated).commit();
      Util.getSharedPreferencesEditor().putInt(Constants.PREF_CPI, i).commit();
      CALog.d("profId:" + i + " profName:" + str);
      JSONArray jSONArray = jSONObject.getJSONArray("attributes");
      int j = jSONArray.length();
      for (i = 0;; i++) {
        if (i < j) {
          JSONObject jSONObject1 = jSONArray.getJSONObject(i);
          jSONObject1.getInt("attributeId");
          String str1 = jSONObject1.getString("attributeName");
          if (str1.equals("UPLOAD_EVENTS_LIMIT"))
            this.mUploadEventsLimit = jSONObject1.getInt("value"); 
          if (str1.equals("MAX_DB_SIZE_IN_BYTES"))
            this.mMaxDBSizeInBytes = jSONObject1.getLong("value"); 
          if (str1.equals("SESSION_TIMEOUT"))
            this.mSessionTimeout = jSONObject1.getInt("value"); 
          if (str1.equals("CPU")) {
            this.mCpuEnabled = true;
            CALog.d("PolicyManager: CPU enabled ...");
          } 
          if (str1.equals("DISK")) {
            this.mDiskEnabled = true;
            CALog.d("PolicyManager: DISK enabled ...");
          } 
          if (str1.equals("MEM")) {
            this.mMemEnabled = true;
            CALog.d("PolicyManager: MEM enabled ...");
          } 
          if (str1.equals("SDK_ENABLED")) {
            if (jSONObject1.getInt("value") == 0) {
              this.mSDKEnabled = true;
              CALog.d("PolicyManager: SDK enabled ...");
            } else {
              this.mSDKEnabled = false;
              CALog.d("PolicyManager: SDK disabled ...");
            } 
            saveSDKEnabledFlagPref(this.mContext, this.mSDKEnabled);
            processSDKEnablementChange(bool, this.mSDKEnabled);
          } 
          if (str1.equals("FPS")) {
            this.mFpsEnabled = true;
            CALog.d("PolicyManager: FPS enabled ...");
          } 
          if (str1.equals("CRASH")) {
            mCrashEnabled = true;
            CALog.d("PolicyManager: CRASH enabled ...");
          } 
          if (str1.equals("COLLECT_PERFORMANCE_FREQUENCY")) {
            this.mCollectPerfFrequency = jSONObject1.getInt("value");
            if (this.mCollectPerfFrequency <= 0)
              this.mCollectPerfFrequency = 50; 
          } 
          if (str1.equals("COLLECT_LOCATION")) {
            this.locationCheck = jSONObject1.getInt("value");
            CALog.d("PolicyManager: LOCATION CHECK MODE IS  ..." + this.locationCheck);
          } 
          if (str1.equals("ASAT_AUTO")) {
            int k = jSONObject1.getInt("value");
            if (k == 0) {
              mAutoASATEnabled = false;
              CALog.d("PolicyManager: ASAT_AUTO NOT enabled ...");
            } else if (k == 1) {
              mAutoASATEnabled = true;
              CALog.d("PolicyManager: ASAT_AUTO enabled ...");
            } 
          } 
          if (str1.equals("APM")) {
            int k = jSONObject1.getInt("value");
            if (k == 0) {
              mAPMEnabled = false;
            } else if (k == 1) {
              mAPMEnabled = true;
              CALog.d("PolicyManager: APM enabled ...");
            } 
          } 
          if (str1.equals("URL")) {
            this.mNetworkStatsEnabled = true;
            CALog.d("PolicyManager: NetworkStats enabled ...");
          } 
          if (str1.equals("SCREEN_CAPTURE")) {
            int k = jSONObject1.getInt("value");
            if (k == 0) {
              this.mScreenshotEnabled = false;
            } else if (k == 1) {
              this.mScreenshotEnabled = true;
              CALog.d("PolicyManager: Screenshots enabled");
            } 
          } 
          if (str1.equals("UPLOAD_WIFI")) {
            int k = jSONObject1.getInt("value");
            if (k == 0) {
              this.mUploadOnWifi = false;
            } else if (k == 1) {
              this.mUploadOnWifi = true;
              CALog.d("PolicyManager: upload on wifi enabled");
            } 
          } 
        } else {
          if (CAMobileDevOps.getmMessageProcessingHandler() != null)
            CAMobileDevOps.getmMessageProcessingHandler().sendMessage(CAMobileDevOps.getmMessageProcessingHandler().obtainMessage(230, new Integer(this.locationCheck))); 
          return true;
        } 
      } 
    } catch (JSONException jSONException) {
      if (jSONException.getMessage().equals("No  for policies") || jSONException.getMessage().equals("No  for name")) {
        CALog.d("Policy not set for this application");
        return false;
      } 
    } 
    return true;
  }
  
  private void processSDKEnablementChange(boolean paramBoolean1, final boolean nowSDKEnabled) {
    CALog.d("Before Refresh SDK Enabled=" + paramBoolean1);
    CALog.d("After Refresh SDK Enabled=" + nowSDKEnabled);
    if (SDK.getSDKEnabledByAPI() == null && paramBoolean1 != nowSDKEnabled) {
      (new Handler(this.mContext.getMainLooper())).post(new Runnable() {
            public void run() {
              if (nowSDKEnabled) {
                SDK.onSDKEnabled();
                return;
              } 
              SDK.onSDKDisabled();
            }
          });
      return;
    } 
  }
  
  private void resetValues() {
    this.mCpuEnabled = false;
    this.mDiskEnabled = false;
    this.mMemEnabled = false;
    this.mFpsEnabled = false;
    mCrashEnabled = false;
  }
  
  private static void saveSDKEnabledFlagPref(Context paramContext, boolean paramBoolean) {
    paramContext.getSharedPreferences(Constants.PREF_NAME, 0).edit().putBoolean(Constants.PREF_SDK_ENABLED, paramBoolean).commit();
  }
  
  private void store(String paramString) throws IOException {
    if (this.mContext.deleteFile("policyData.txt")) {
      CALog.d("policyData.txt successfully deleted.");
    } else {
      CALog.w("policyData.txt could not be deleted or not present.");
    } 
    CALog.d("PolicyManager: Writing policy to cache");
    FileOutputStream fileOutputStream = this.mContext.openFileOutput("policyData.txt", 0);
    try {
      OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, "ISO8859_1");
      outputStreamWriter.write(paramString);
      outputStreamWriter.flush();
      return;
    } finally {
      fileOutputStream.close();
    } 
  }
  
  protected long getLastUpdatedTimeStamp() {
    return getCpt();
  }
  
  protected int getLocationCheck() {
    return this.locationCheck;
  }
  
  public long getMaxDBSizeInBytes() {
    return this.mMaxDBSizeInBytes;
  }
  
  public int getPerfCollectFrequency() {
    return this.mCollectPerfFrequency;
  }
  
  protected int getProfileId() {
    return getCpi();
  }
  
  public int getSessionTimeout() {
    CALog.d("PolicyManager: Setting session timeout from policy: " + this.mSessionTimeout);
    return this.mSessionTimeout;
  }
  
  public int getUploadEventsLimit() {
    return this.mUploadEventsLimit;
  }
  
  protected void init() {
    (new Thread(new Runnable() {
          public void run() {
            boolean bool = false;
            try {
              DefaultHttpClient defaultHttpClient;
              String str1;
              BasicHttpParams basicHttpParams = new BasicHttpParams();
              HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 60000);
              HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 60000);
              if (SDK.isSslMode) {
                CALog.d("MDOSSLPinningMode is set" + MDOSSLPinning.getmSSLPinningMode());
                CALog.d("Cert Byte[]" + MDOSSLPinning.getCert().toString());
                defaultHttpClient = MDOSSLPinning.getHTTPClient();
              } else {
                defaultHttpClient = new DefaultHttpClient();
              } 
              if (CAMobileDevOps.getmAppDeviceData() != null) {
                str2 = CAMobileDevOps.getmAppDeviceData().getAppVersion();
              } else {
                str2 = Util.getAppVersion(PolicyManager.this.mContext);
              } 
              PolicyManager.this.mPolicyUrl;
              String str4 = "?";
              String str3 = str4;
              if (PolicyManager.this.mPolicyUrl != null) {
                str3 = str4;
                if (PolicyManager.this.mPolicyUrl.contains("?"))
                  str3 = "&"; 
              } 
              String str2 = URLDecoder.decode(PolicyManager.this.mPolicyUrl + str3 + "app_version_id=" + str2, "UTF-8");
              URL uRL = new URL(str2);
              HttpGet httpGet = new HttpGet((new URI(uRL.getProtocol(), uRL.getUserInfo(), uRL.getHost(), uRL.getPort(), uRL.getPath(), uRL.getQuery(), uRL.getRef())).toURL().toString());
              CALog.d("Getting data from: " + str2);
              HttpResponse httpResponse = defaultHttpClient.execute((HttpUriRequest)httpGet);
              if (httpResponse.getStatusLine().getStatusCode() == 200) {
                CALog.d("Successfully obtained policy");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                httpResponse.getEntity().writeTo(byteArrayOutputStream);
                str1 = byteArrayOutputStream.toString();
                if (str1 != null && PolicyManager.this.processData(str1))
                  PolicyManager.this.store(str1); 
                byteArrayOutputStream.close();
              } else {
                bool = true;
                CALog.w("Not able to get policy, " + str1.getStatusLine());
              } 
            } catch (Throwable throwable) {
              bool = true;
              CALog.e(throwable.getMessage(), throwable);
            } 
            if (bool)
              PolicyManager.this.loadPolicyFromCache(); 
            PolicyUtil.refreshPolicy = false;
          }
        })).start();
  }
  
  protected boolean isBatteryEnabled() {
    return this.mBatteryEnabled;
  }
  
  protected boolean isCpuEnabled() {
    return this.mCpuEnabled;
  }
  
  protected boolean isDiskEnabled() {
    return this.mDiskEnabled;
  }
  
  protected boolean isFpsEnabled() {
    return this.mFpsEnabled;
  }
  
  protected boolean isMemEnabled() {
    return this.mMemEnabled;
  }
  
  protected boolean isNetworkStatsEnabled() {
    return this.mNetworkStatsEnabled;
  }
  
  protected boolean isSDKEnabled() {
    return this.mSDKEnabled;
  }
  
  protected boolean isScreenshotEnabled() {
    return this.mScreenshotEnabled;
  }
  
  protected boolean isUploadOnWifiEnabled() {
    return this.mUploadOnWifi;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\PolicyManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */