package com.ca.org.acra;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import com.ca.org.acra.annotation.ReportsCrashes;
import com.ca.org.acra.log.ACRALog;
import com.ca.org.acra.log.AndroidLogDelegate;

public class ACRA {
  public static final ReportField[] DEFAULT_MAIL_REPORT_FIELDS;
  
  public static final ReportField[] DEFAULT_REPORT_FIELDS;
  
  public static final boolean DEV_LOGGING = false;
  
  public static final String LOG_TAG = ACRA.class.getSimpleName();
  
  public static final String PREF_ALWAYS_ACCEPT = "acra.alwaysaccept";
  
  public static final String PREF_DISABLE_ACRA = "acra.disable";
  
  public static final String PREF_ENABLE_ACRA = "acra.enable";
  
  public static final String PREF_ENABLE_DEVICE_ID = "acra.deviceid.enable";
  
  public static final String PREF_ENABLE_SYSTEM_LOGS = "acra.syslog.enable";
  
  public static final String PREF_LAST_VERSION_NR = "acra.lastVersionNr";
  
  public static final String PREF_USER_EMAIL_ADDRESS = "acra.user.email";
  
  private static ACRAConfiguration configProxy;
  
  private static ErrorReporter errorReporterSingleton;
  
  public static ACRALog log = (ACRALog)new AndroidLogDelegate();
  
  private static Application mApplication;
  
  private static SharedPreferences.OnSharedPreferenceChangeListener mPrefListener;
  
  private static ReportsCrashes mReportsCrashes;
  
  static {
    DEFAULT_MAIL_REPORT_FIELDS = new ReportField[] { ReportField.USER_COMMENT, ReportField.ANDROID_VERSION, ReportField.APP_VERSION_NAME, ReportField.BRAND, ReportField.PHONE_MODEL, ReportField.CUSTOM_DATA, ReportField.STACK_TRACE };
    DEFAULT_REPORT_FIELDS = new ReportField[] { 
        ReportField.REPORT_ID, ReportField.APP_VERSION_CODE, ReportField.APP_VERSION_NAME, ReportField.PACKAGE_NAME, ReportField.FILE_PATH, ReportField.PHONE_MODEL, ReportField.BRAND, ReportField.PRODUCT, ReportField.ANDROID_VERSION, ReportField.BUILD, 
        ReportField.TOTAL_MEM_SIZE, ReportField.AVAILABLE_MEM_SIZE, ReportField.CUSTOM_DATA, ReportField.IS_SILENT, ReportField.STACK_TRACE, ReportField.INITIAL_CONFIGURATION, ReportField.CRASH_CONFIGURATION, ReportField.DISPLAY, ReportField.USER_COMMENT, ReportField.USER_EMAIL, 
        ReportField.USER_APP_START_DATE, ReportField.USER_CRASH_DATE, ReportField.DUMPSYS_MEMINFO, ReportField.LOGCAT, ReportField.INSTALLATION_ID, ReportField.DEVICE_FEATURES, ReportField.ENVIRONMENT, ReportField.SHARED_PREFERENCES, ReportField.SETTINGS_SYSTEM, ReportField.SETTINGS_SECURE };
  }
  
  static void checkCrashResources() throws ACRAConfigurationException {
    ACRAConfiguration aCRAConfiguration = getConfig();
    switch (aCRAConfiguration.mode()) {
      default:
        return;
      case TOAST:
        if (aCRAConfiguration.resToastText() == 0)
          throw new ACRAConfigurationException("TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."); 
      case NOTIFICATION:
        if (aCRAConfiguration.resNotifTickerText() == 0 || aCRAConfiguration.resNotifTitle() == 0 || aCRAConfiguration.resNotifText() == 0 || aCRAConfiguration.resDialogText() == 0)
          throw new ACRAConfigurationException("NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."); 
      case DIALOG:
        break;
    } 
    if (aCRAConfiguration.resDialogText() == 0)
      throw new ACRAConfigurationException("DIALOG mode: you have to define at least the resDialogText parameters in your application @ReportsCrashes() annotation."); 
  }
  
  public static SharedPreferences getACRASharedPreferences() {
    ACRAConfiguration aCRAConfiguration = getConfig();
    return !"".equals(aCRAConfiguration.sharedPreferencesName()) ? mApplication.getSharedPreferences(aCRAConfiguration.sharedPreferencesName(), aCRAConfiguration.sharedPreferencesMode()) : PreferenceManager.getDefaultSharedPreferences((Context)mApplication);
  }
  
  static Application getApplication() {
    return mApplication;
  }
  
  public static ACRAConfiguration getConfig() {
    if (configProxy == null) {
      if (mApplication == null)
        log.w(LOG_TAG, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation."); 
      configProxy = getNewDefaultConfig(mApplication);
    } 
    return configProxy;
  }
  
  public static ErrorReporter getErrorReporter() {
    if (errorReporterSingleton == null)
      throw new IllegalStateException("Cannot access ErrorReporter before ACRA#init"); 
    return errorReporterSingleton;
  }
  
  public static ACRAConfiguration getNewDefaultConfig(Application paramApplication) {
    return (paramApplication != null) ? new ACRAConfiguration(paramApplication.getClass().<ReportsCrashes>getAnnotation(ReportsCrashes.class)) : new ACRAConfiguration(null);
  }
  
  public static void init(Application paramApplication) {
    if (mApplication != null);
    mApplication = paramApplication;
    SharedPreferences sharedPreferences = getACRASharedPreferences();
    try {
      boolean bool;
      checkCrashResources();
      log.d(LOG_TAG, "ACRA is enabled for " + mApplication.getPackageName() + ", intializing...");
      if (!shouldDisableACRA(sharedPreferences)) {
        bool = true;
      } else {
        bool = false;
      } 
      ErrorReporter errorReporter = new ErrorReporter(mApplication.getApplicationContext(), sharedPreferences, bool);
      errorReporter.setDefaultReportSenders();
      errorReporterSingleton = errorReporter;
    } catch (ACRAConfigurationException aCRAConfigurationException) {
      log.w(LOG_TAG, "Error : ", aCRAConfigurationException);
    } 
    mPrefListener = new SharedPreferences.OnSharedPreferenceChangeListener() {
        public void onSharedPreferenceChanged(SharedPreferences param1SharedPreferences, String param1String) {
          if ("acra.disable".equals(param1String) || "acra.enable".equals(param1String)) {
            boolean bool;
            if (!ACRA.shouldDisableACRA(param1SharedPreferences)) {
              bool = true;
            } else {
              bool = false;
            } 
            ACRA.getErrorReporter().setEnabled(bool);
          } 
        }
      };
    sharedPreferences.registerOnSharedPreferenceChangeListener(mPrefListener);
  }
  
  static boolean isDebuggable() {
    boolean bool = false;
    PackageManager packageManager = mApplication.getPackageManager();
    try {
      int i = (packageManager.getApplicationInfo(mApplication.getPackageName(), 0)).flags;
      if ((i & 0x2) > 0)
        bool = true; 
      return bool;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return false;
    } 
  }
  
  public static void setConfig(ACRAConfiguration paramACRAConfiguration) {
    configProxy = paramACRAConfiguration;
  }
  
  public static void setLog(ACRALog paramACRALog) {
    log = paramACRALog;
  }
  
  private static boolean shouldDisableACRA(SharedPreferences paramSharedPreferences) {
    boolean bool = true;
    try {
      if (paramSharedPreferences.getBoolean("acra.enable", true))
        bool = false; 
      return paramSharedPreferences.getBoolean("acra.disable", bool);
    } catch (Exception exception) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\ACRA.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */