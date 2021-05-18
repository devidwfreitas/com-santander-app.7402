package com.ca.org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Environment;
import android.text.format.Time;
import android.util.Log;
import com.ca.org.acra.ACRA;
import com.ca.org.acra.ACRAConfiguration;
import com.ca.org.acra.ReportField;
import com.ca.org.acra.util.Installation;
import com.ca.org.acra.util.PackageManagerWrapper;
import com.ca.org.acra.util.ReportUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class CrashReportDataFactory {
  private final Time appStartDate;
  
  private final Context context;
  
  private final List<ReportField> crashReportFields;
  
  private final Map<String, String> customParameters = new HashMap<String, String>();
  
  private final String initialConfiguration;
  
  private final SharedPreferences prefs;
  
  public CrashReportDataFactory(Context paramContext, SharedPreferences paramSharedPreferences, Time paramTime, String paramString) {
    this.context = paramContext;
    this.prefs = paramSharedPreferences;
    this.appStartDate = paramTime;
    this.initialConfiguration = paramString;
    ACRAConfiguration aCRAConfiguration = ACRA.getConfig();
    ReportField[] arrayOfReportField = aCRAConfiguration.customReportContent();
    if (arrayOfReportField.length != 0) {
      Log.d(ACRA.LOG_TAG, "Using custom Report Fields");
    } else if (aCRAConfiguration.mailTo() == null || "".equals(aCRAConfiguration.mailTo())) {
      Log.d(ACRA.LOG_TAG, "Using default Report Fields");
      arrayOfReportField = ACRA.DEFAULT_REPORT_FIELDS;
    } else {
      Log.d(ACRA.LOG_TAG, "Using default Mail Report Fields");
      arrayOfReportField = ACRA.DEFAULT_MAIL_REPORT_FIELDS;
    } 
    this.crashReportFields = Arrays.asList(arrayOfReportField);
  }
  
  private String createCustomInfoString() {
    StringBuilder stringBuilder = new StringBuilder();
    for (String str1 : this.customParameters.keySet()) {
      String str2 = this.customParameters.get(str1);
      stringBuilder.append(str1);
      stringBuilder.append(" = ");
      stringBuilder.append(str2);
      stringBuilder.append("\n");
    } 
    return stringBuilder.toString();
  }
  
  private String getStackTrace(Throwable paramThrowable) {
    StringWriter stringWriter = new StringWriter();
    PrintWriter printWriter = new PrintWriter(stringWriter);
    while (paramThrowable != null) {
      paramThrowable.printStackTrace(printWriter);
      paramThrowable = paramThrowable.getCause();
    } 
    String str = stringWriter.toString();
    printWriter.close();
    return str;
  }
  
  public CrashReportData createCrashData(Throwable paramThrowable, boolean paramBoolean, Thread paramThread) {
    CrashReportData crashReportData = new CrashReportData();
    try {
      crashReportData.put(ReportField.STACK_TRACE, getStackTrace(paramThrowable));
      Throwable throwable2 = null;
      Throwable throwable1 = paramThrowable;
      while (true) {
        if (throwable1 != null) {
          throwable2 = throwable1;
          try {
            throwable1 = throwable1.getCause();
            continue;
          } catch (Throwable throwable) {}
        } else {
          String str1 = throwable2.getClass().getName();
          StackTraceElement stackTraceElement = throwable2.getStackTrace()[0];
          String str2 = stackTraceElement.getClassName();
          String str3 = stackTraceElement.getMethodName();
          int i = stackTraceElement.getLineNumber();
          crashReportData.put(ReportField.EXCEPTION_CAUSE, str1);
          crashReportData.put(ReportField.EXCEPTION_CLASSNAME, str2);
          crashReportData.put(ReportField.EXCEPTION_METHODNAME, str3);
          crashReportData.put(ReportField.EXCEPTION_LINENUMBER, i + "");
        } 
        crashReportData.put(ReportField.USER_APP_START_DATE, this.appStartDate.format3339(false));
        if (paramBoolean)
          crashReportData.put(ReportField.IS_SILENT, "true"); 
        if (this.crashReportFields.contains(ReportField.REPORT_ID))
          crashReportData.put(ReportField.REPORT_ID, UUID.randomUUID().toString()); 
        if (this.crashReportFields.contains(ReportField.INSTALLATION_ID))
          crashReportData.put(ReportField.INSTALLATION_ID, Installation.id(this.context)); 
        if (this.crashReportFields.contains(ReportField.INITIAL_CONFIGURATION))
          crashReportData.put(ReportField.INITIAL_CONFIGURATION, this.initialConfiguration); 
        if (this.crashReportFields.contains(ReportField.CRASH_CONFIGURATION))
          crashReportData.put(ReportField.CRASH_CONFIGURATION, ConfigurationCollector.collectConfiguration(this.context)); 
        if (!(paramThrowable instanceof OutOfMemoryError) && this.crashReportFields.contains(ReportField.DUMPSYS_MEMINFO))
          crashReportData.put(ReportField.DUMPSYS_MEMINFO, DumpSysCollector.collectMemInfo()); 
        if (this.crashReportFields.contains(ReportField.PACKAGE_NAME))
          crashReportData.put(ReportField.PACKAGE_NAME, this.context.getPackageName()); 
        if (this.crashReportFields.contains(ReportField.BUILD))
          crashReportData.put(ReportField.BUILD, ReflectionCollector.collectConstants(Build.class)); 
        if (this.crashReportFields.contains(ReportField.PHONE_MODEL))
          crashReportData.put(ReportField.PHONE_MODEL, Build.MODEL); 
        if (this.crashReportFields.contains(ReportField.ANDROID_VERSION))
          crashReportData.put(ReportField.ANDROID_VERSION, Build.VERSION.RELEASE); 
        if (this.crashReportFields.contains(ReportField.BRAND))
          crashReportData.put(ReportField.BRAND, Build.BRAND); 
        if (this.crashReportFields.contains(ReportField.PRODUCT))
          crashReportData.put(ReportField.PRODUCT, Build.PRODUCT); 
        if (this.crashReportFields.contains(ReportField.TOTAL_MEM_SIZE))
          crashReportData.put(ReportField.TOTAL_MEM_SIZE, Long.toString(ReportUtils.getTotalInternalMemorySize())); 
        if (this.crashReportFields.contains(ReportField.AVAILABLE_MEM_SIZE))
          crashReportData.put(ReportField.AVAILABLE_MEM_SIZE, Long.toString(ReportUtils.getAvailableInternalMemorySize())); 
        if (this.crashReportFields.contains(ReportField.FILE_PATH))
          crashReportData.put(ReportField.FILE_PATH, ReportUtils.getApplicationFilePath(this.context)); 
        if (this.crashReportFields.contains(ReportField.DISPLAY))
          crashReportData.put(ReportField.DISPLAY, ReportUtils.getDisplayDetails(this.context)); 
        if (this.crashReportFields.contains(ReportField.USER_CRASH_DATE)) {
          Time time = new Time();
          time.setToNow();
          crashReportData.put(ReportField.USER_CRASH_DATE, time.format3339(false));
        } 
        if (this.crashReportFields.contains(ReportField.CUSTOM_DATA))
          crashReportData.put(ReportField.CUSTOM_DATA, createCustomInfoString()); 
        if (this.crashReportFields.contains(ReportField.USER_EMAIL))
          crashReportData.put(ReportField.USER_EMAIL, this.prefs.getString("acra.user.email", "N/A")); 
        if (this.crashReportFields.contains(ReportField.DEVICE_FEATURES))
          crashReportData.put(ReportField.DEVICE_FEATURES, DeviceFeaturesCollector.getFeatures(this.context)); 
        if (this.crashReportFields.contains(ReportField.ENVIRONMENT))
          crashReportData.put(ReportField.ENVIRONMENT, ReflectionCollector.collectStaticGettersResults(Environment.class)); 
        if (this.crashReportFields.contains(ReportField.SETTINGS_SYSTEM))
          crashReportData.put(ReportField.SETTINGS_SYSTEM, SettingsCollector.collectSystemSettings(this.context)); 
        if (this.crashReportFields.contains(ReportField.SETTINGS_SECURE))
          crashReportData.put(ReportField.SETTINGS_SECURE, SettingsCollector.collectSecureSettings(this.context)); 
        if (this.crashReportFields.contains(ReportField.SHARED_PREFERENCES))
          crashReportData.put(ReportField.SHARED_PREFERENCES, SharedPreferencesCollector.collect(this.context)); 
        PackageManagerWrapper packageManagerWrapper = new PackageManagerWrapper(this.context);
        PackageInfo packageInfo = packageManagerWrapper.getPackageInfo();
        if (packageInfo != null) {
          if (this.crashReportFields.contains(ReportField.APP_VERSION_CODE))
            crashReportData.put(ReportField.APP_VERSION_CODE, Integer.toString(packageInfo.versionCode)); 
          if (this.crashReportFields.contains(ReportField.APP_VERSION_NAME)) {
            String str;
            ReportField reportField = ReportField.APP_VERSION_NAME;
            if (packageInfo.versionName != null) {
              str = packageInfo.versionName;
            } else {
              str = "not set";
            } 
            crashReportData.put(reportField, str);
          } 
        } else {
          crashReportData.put(ReportField.APP_VERSION_NAME, "Package info unavailable");
        } 
        if (this.crashReportFields.contains(ReportField.DEVICE_ID) && this.prefs.getBoolean("acra.deviceid.enable", true) && packageManagerWrapper.hasPermission("android.permission.READ_PHONE_STATE")) {
          String str = ReportUtils.getDeviceId(this.context);
          if (str != null)
            crashReportData.put(ReportField.DEVICE_ID, str); 
        } 
        if ((this.prefs.getBoolean("acra.syslog.enable", true) && packageManagerWrapper.hasPermission("android.permission.READ_LOGS")) || Compatibility.getAPILevel() >= 16) {
          Log.i(ACRA.LOG_TAG, "READ_LOGS granted! ACRA can include LogCat and DropBox data.");
          if (this.crashReportFields.contains(ReportField.LOGCAT))
            crashReportData.put(ReportField.LOGCAT, LogCatCollector.collectLogCat(null)); 
          if (this.crashReportFields.contains(ReportField.EVENTSLOG))
            crashReportData.put(ReportField.EVENTSLOG, LogCatCollector.collectLogCat("events")); 
          if (this.crashReportFields.contains(ReportField.RADIOLOG))
            crashReportData.put(ReportField.RADIOLOG, LogCatCollector.collectLogCat("radio")); 
          if (this.crashReportFields.contains(ReportField.DROPBOX))
            crashReportData.put(ReportField.DROPBOX, DropBoxCollector.read(this.context, ACRA.getConfig().additionalDropBoxTags())); 
        } else {
          Log.i(ACRA.LOG_TAG, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data.");
        } 
        if (this.crashReportFields.contains(ReportField.APPLICATION_LOG))
          crashReportData.put(ReportField.APPLICATION_LOG, LogFileCollector.collectLogFile(this.context, ACRA.getConfig().applicationLogFile(), ACRA.getConfig().applicationLogFileLines())); 
        if (this.crashReportFields.contains(ReportField.MEDIA_CODEC_LIST))
          crashReportData.put(ReportField.MEDIA_CODEC_LIST, MediaCodecListCollector.collecMediaCodecList()); 
        if (this.crashReportFields.contains(ReportField.THREAD_DETAILS)) {
          crashReportData.put(ReportField.THREAD_DETAILS, ThreadCollector.collect(paramThread));
          return crashReportData;
        } 
        break;
      } 
    } catch (RuntimeException runtimeException) {
      Log.e(ACRA.LOG_TAG, "Error while retrieving crash data", runtimeException);
      return crashReportData;
    } catch (FileNotFoundException fileNotFoundException) {
      Log.e(ACRA.LOG_TAG, "Error : application log file " + ACRA.getConfig().applicationLogFile() + " not found.", fileNotFoundException);
      return crashReportData;
    } catch (IOException iOException) {
      Log.e(ACRA.LOG_TAG, "Error while reading application log file " + ACRA.getConfig().applicationLogFile() + ".", iOException);
    } 
    return crashReportData;
  }
  
  public String getCustomData(String paramString) {
    return this.customParameters.get(paramString);
  }
  
  public String putCustomData(String paramString1, String paramString2) {
    return this.customParameters.put(paramString1, paramString2);
  }
  
  public String removeCustomData(String paramString) {
    return this.customParameters.remove(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\CrashReportDataFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */