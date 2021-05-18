package com.ca.org.acra;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Looper;
import android.os.Process;
import android.text.format.Time;
import android.util.Log;
import com.ca.org.acra.collector.ConfigurationCollector;
import com.ca.org.acra.collector.CrashReportData;
import com.ca.org.acra.collector.CrashReportDataFactory;
import com.ca.org.acra.sender.EmailIntentSender;
import com.ca.org.acra.sender.GoogleFormSender;
import com.ca.org.acra.sender.HttpPostSender;
import com.ca.org.acra.sender.ReportSender;
import com.ca.org.acra.util.PackageManagerWrapper;
import com.ca.org.acra.util.ToastSender;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ErrorReporter implements Thread.UncaughtExceptionHandler {
  private static boolean toastWaitEnded = true;
  
  private Thread brokenThread;
  
  private final CrashReportDataFactory crashReportDataFactory;
  
  private boolean enabled = false;
  
  private final CrashReportFileNameParser fileNameParser = new CrashReportFileNameParser();
  
  private final Context mContext;
  
  private final Thread.UncaughtExceptionHandler mDfltExceptionHandler;
  
  private final List<ReportSender> mReportSenders = new ArrayList<ReportSender>();
  
  private final SharedPreferences prefs;
  
  private Throwable unhandledThrowable;
  
  ErrorReporter(Context paramContext, SharedPreferences paramSharedPreferences, boolean paramBoolean) {
    this.mContext = paramContext;
    this.prefs = paramSharedPreferences;
    this.enabled = paramBoolean;
    String str = ConfigurationCollector.collectConfiguration(this.mContext);
    Time time = new Time();
    time.setToNow();
    this.crashReportDataFactory = new CrashReportDataFactory(this.mContext, paramSharedPreferences, time, str);
    this.mDfltExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
    checkReportsOnApplicationStart();
  }
  
  private boolean containsOnlySilentOrApprovedReports(String[] paramArrayOfString) {
    int j = paramArrayOfString.length;
    for (int i = 0; i < j; i++) {
      String str = paramArrayOfString[i];
      if (!this.fileNameParser.isApproved(str))
        return false; 
    } 
    return true;
  }
  
  private void deletePendingReports(boolean paramBoolean1, boolean paramBoolean2, int paramInt) {
    String[] arrayOfString = (new CrashReportFinder(this.mContext)).getCrashReportFiles();
    Arrays.sort((Object[])arrayOfString);
    if (arrayOfString != null) {
      int i;
      for (i = 0; i < arrayOfString.length - paramInt; i++) {
        String str = arrayOfString[i];
        boolean bool = this.fileNameParser.isApproved(str);
        if ((bool && paramBoolean1) || (!bool && paramBoolean2)) {
          File file = new File(this.mContext.getFilesDir(), str);
          if (!file.delete())
            Log.e(ACRA.LOG_TAG, "Could not delete report : " + file); 
        } 
      } 
    } 
  }
  
  private void endApplication() {
    if (ACRA.getConfig().mode() == ReportingInteractionMode.SILENT || (ACRA.getConfig().mode() == ReportingInteractionMode.TOAST && ACRA.getConfig().forceCloseDialogAfterToast())) {
      this.mDfltExceptionHandler.uncaughtException(this.brokenThread, this.unhandledThrowable);
      return;
    } 
    Log.e(ACRA.LOG_TAG, this.mContext.getPackageName() + " fatal error : " + this.unhandledThrowable.getMessage(), this.unhandledThrowable);
    Process.killProcess(Process.myPid());
    System.exit(10);
  }
  
  public static ErrorReporter getInstance() {
    return ACRA.getErrorReporter();
  }
  
  private String getLatestNonSilentReport(String[] paramArrayOfString) {
    if (paramArrayOfString != null && paramArrayOfString.length > 0) {
      for (int i = paramArrayOfString.length - 1; i >= 0; i--) {
        if (!this.fileNameParser.isSilent(paramArrayOfString[i]))
          return paramArrayOfString[i]; 
      } 
      return paramArrayOfString[paramArrayOfString.length - 1];
    } 
    return null;
  }
  
  private String getReportFileName(CrashReportData paramCrashReportData) {
    Time time = new Time();
    time.setToNow();
    long l = time.toMillis(false);
    String str = paramCrashReportData.getProperty(ReportField.IS_SILENT);
    StringBuilder stringBuilder = (new StringBuilder()).append("").append(l);
    if (str != null) {
      str = ACRAConstants.SILENT_SUFFIX;
      return stringBuilder.append(str).append(".stacktrace").toString();
    } 
    str = "";
    return stringBuilder.append(str).append(".stacktrace").toString();
  }
  
  private void handleException(Throwable paramThrowable, ReportingInteractionMode paramReportingInteractionMode, final boolean showDirectDialog, final boolean endApplication) {
    final Throwable worker;
    boolean bool1;
    boolean bool2;
    ReportingInteractionMode reportingInteractionMode;
    boolean bool3 = true;
    if (!this.enabled)
      return; 
    boolean bool4 = false;
    if (paramReportingInteractionMode == null) {
      reportingInteractionMode = ACRA.getConfig().mode();
      bool2 = bool4;
    } else {
      bool2 = bool4;
      reportingInteractionMode = paramReportingInteractionMode;
      if (paramReportingInteractionMode == ReportingInteractionMode.SILENT) {
        bool2 = bool4;
        reportingInteractionMode = paramReportingInteractionMode;
        if (ACRA.getConfig().mode() != ReportingInteractionMode.SILENT) {
          bool2 = true;
          reportingInteractionMode = paramReportingInteractionMode;
        } 
      } 
    } 
    Throwable throwable2 = paramThrowable;
    if (paramThrowable == null)
      throwable2 = new Exception("Report requested by developer"); 
    if (reportingInteractionMode == ReportingInteractionMode.TOAST || (ACRA.getConfig().resToastText() != 0 && (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION || reportingInteractionMode == ReportingInteractionMode.DIALOG))) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (bool1)
      (new Thread() {
          public void run() {
            Looper.prepare();
            ToastSender.sendToast(ErrorReporter.this.mContext, ACRA.getConfig().resToastText(), 1);
            Looper.loop();
          }
        }).start(); 
    CrashReportData crashReportData = this.crashReportDataFactory.createCrashData(throwable2, showDirectDialog, this.brokenThread);
    final String reportFileName = getReportFileName(crashReportData);
    saveCrashReportFile(str, crashReportData);
    throwable2 = null;
    if (reportingInteractionMode == ReportingInteractionMode.SILENT || reportingInteractionMode == ReportingInteractionMode.TOAST || this.prefs.getBoolean("acra.alwaysaccept", false)) {
      Log.d(ACRA.LOG_TAG, "About to start ReportSenderWorker from #handleException");
      SendWorker sendWorker = startSendingReports(bool2, true);
    } else {
      throwable1 = throwable2;
      if (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION) {
        Log.d(ACRA.LOG_TAG, "About to send status bar notification from #handleException");
        notifySendReport(str);
        throwable1 = throwable2;
      } 
    } 
    if (bool1) {
      toastWaitEnded = false;
      (new Thread() {
          public void run() {
            Time time2 = new Time();
            Time time1 = new Time();
            time2.setToNow();
            long l2 = time2.toMillis(false);
            for (long l1 = 0L; l1 < 3000L; l1 = time1.toMillis(false) - l2) {
              try {
                Thread.sleep(3000L);
              } catch (InterruptedException interruptedException) {
                Log.d(ACRA.LOG_TAG, "Interrupted while waiting for Toast to end.", interruptedException);
              } 
              time1.setToNow();
            } 
            ErrorReporter.access$102(true);
          }
        }).start();
    } 
    if (reportingInteractionMode == ReportingInteractionMode.DIALOG && !this.prefs.getBoolean("acra.alwaysaccept", false)) {
      showDirectDialog = bool3;
    } else {
      showDirectDialog = false;
    } 
    (new Thread() {
        public void run() {
          Log.d(ACRA.LOG_TAG, "Waiting for Toast + worker...");
          while (!ErrorReporter.toastWaitEnded || (worker != null && worker.isAlive())) {
            try {
              Thread.sleep(100L);
            } catch (InterruptedException interruptedException) {
              Log.e(ACRA.LOG_TAG, "Error : ", interruptedException);
            } 
          } 
          if (showDirectDialog) {
            Log.d(ACRA.LOG_TAG, "About to create DIALOG from #handleException");
            ErrorReporter.this.notifyDialog(reportFileName);
          } 
          Log.d(ACRA.LOG_TAG, "Wait for Toast + worker ended. Kill Application ? " + endApplication);
          if (endApplication)
            ErrorReporter.this.endApplication(); 
        }
      }).start();
  }
  
  private void notifySendReport(String paramString) {
    NotificationManager notificationManager = (NotificationManager)this.mContext.getSystemService("notification");
    ACRAConfiguration aCRAConfiguration = ACRA.getConfig();
    Notification notification = new Notification(aCRAConfiguration.resNotifIcon(), this.mContext.getText(aCRAConfiguration.resNotifTickerText()), System.currentTimeMillis());
    CharSequence charSequence1 = this.mContext.getText(aCRAConfiguration.resNotifTitle());
    CharSequence charSequence2 = this.mContext.getText(aCRAConfiguration.resNotifText());
    Intent intent = new Intent(this.mContext, CrashReportDialog.class);
    Log.d(ACRA.LOG_TAG, "Creating Notification for " + paramString);
    intent.putExtra("REPORT_FILE_NAME", paramString);
    PendingIntent pendingIntent = PendingIntent.getActivity(this.mContext, 0, intent, 134217728);
    notification.setLatestEventInfo(this.mContext, charSequence1, charSequence2, pendingIntent);
    notificationManager.cancelAll();
    notificationManager.notify(666, notification);
  }
  
  private void saveCrashReportFile(String paramString, CrashReportData paramCrashReportData) {
    try {
      Log.d(ACRA.LOG_TAG, "Writing crash report file " + paramString + ".");
      (new CrashReportPersister(this.mContext)).store(paramCrashReportData, paramString);
      return;
    } catch (Exception exception) {
      Log.e(ACRA.LOG_TAG, "An error occurred while writing the report file...", exception);
      return;
    } 
  }
  
  @Deprecated
  public void addCustomData(String paramString1, String paramString2) {
    this.crashReportDataFactory.putCustomData(paramString1, paramString2);
  }
  
  public void addReportSender(ReportSender paramReportSender) {
    this.mReportSenders.add(paramReportSender);
  }
  
  public void checkReportsOnApplicationStart() {
    boolean bool;
    String[] arrayOfString1;
    long l = this.prefs.getInt("acra.lastVersionNr", 0);
    PackageInfo packageInfo = (new PackageManagerWrapper(this.mContext)).getPackageInfo();
    if (packageInfo != null && packageInfo.versionCode > l) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      if (ACRA.getConfig().deleteOldUnsentReportsOnApplicationStart())
        deletePendingReports(); 
      SharedPreferences.Editor editor = this.prefs.edit();
      editor.putInt("acra.lastVersionNr", packageInfo.versionCode);
      editor.commit();
    } 
    if ((ACRA.getConfig().mode() == ReportingInteractionMode.NOTIFICATION || ACRA.getConfig().mode() == ReportingInteractionMode.DIALOG) && ACRA.getConfig().deleteUnapprovedReportsOnApplicationStart())
      deletePendingNonApprovedReports(true); 
    CrashReportFinder crashReportFinder = new CrashReportFinder(this.mContext);
    String[] arrayOfString2 = crashReportFinder.getCrashReportFiles();
    if (arrayOfString2 != null && arrayOfString2.length > 0) {
      ReportingInteractionMode reportingInteractionMode = ACRA.getConfig().mode();
      arrayOfString1 = crashReportFinder.getCrashReportFiles();
      boolean bool1 = containsOnlySilentOrApprovedReports(arrayOfString1);
      if (reportingInteractionMode == ReportingInteractionMode.SILENT || reportingInteractionMode == ReportingInteractionMode.TOAST || (bool1 && (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION || reportingInteractionMode == ReportingInteractionMode.DIALOG))) {
        if (reportingInteractionMode == ReportingInteractionMode.TOAST && !bool1)
          ToastSender.sendToast(this.mContext, ACRA.getConfig().resToastText(), 1); 
        Log.v(ACRA.LOG_TAG, "About to start ReportSenderWorker from #checkReportOnApplicationStart");
        startSendingReports(false, false);
        return;
      } 
    } else {
      return;
    } 
    if (ACRA.getConfig().mode() == ReportingInteractionMode.NOTIFICATION) {
      notifySendReport(getLatestNonSilentReport(arrayOfString1));
      return;
    } 
    if (ACRA.getConfig().mode() == ReportingInteractionMode.DIALOG) {
      notifyDialog(getLatestNonSilentReport(arrayOfString1));
      return;
    } 
  }
  
  void deletePendingNonApprovedReports(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    deletePendingReports(false, true, bool);
  }
  
  void deletePendingReports() {
    deletePendingReports(true, true, 0);
  }
  
  public String getCustomData(String paramString) {
    return this.crashReportDataFactory.getCustomData(paramString);
  }
  
  public void handleException(Throwable paramThrowable) {
    handleException(paramThrowable, ACRA.getConfig().mode(), false, false);
  }
  
  public void handleException(Throwable paramThrowable, boolean paramBoolean) {
    handleException(paramThrowable, ACRA.getConfig().mode(), false, paramBoolean);
  }
  
  public void handleSilentException(Throwable paramThrowable) {
    if (this.enabled) {
      handleException(paramThrowable, ReportingInteractionMode.SILENT, true, false);
      Log.d(ACRA.LOG_TAG, "ACRA sent Silent report.");
      return;
    } 
    Log.d(ACRA.LOG_TAG, "ACRA is disabled. Silent report not sent.");
  }
  
  void notifyDialog(String paramString) {
    Log.d(ACRA.LOG_TAG, "Creating Dialog for " + paramString);
    Intent intent = new Intent(this.mContext, CrashReportDialog.class);
    intent.putExtra("REPORT_FILE_NAME", paramString);
    intent.setFlags(268435456);
    this.mContext.startActivity(intent);
  }
  
  public String putCustomData(String paramString1, String paramString2) {
    return this.crashReportDataFactory.putCustomData(paramString1, paramString2);
  }
  
  public void removeAllReportSenders() {
    this.mReportSenders.clear();
  }
  
  public String removeCustomData(String paramString) {
    return this.crashReportDataFactory.removeCustomData(paramString);
  }
  
  public void removeReportSender(ReportSender paramReportSender) {
    this.mReportSenders.remove(paramReportSender);
  }
  
  public void removeReportSenders(Class<?> paramClass) {
    if (ReportSender.class.isAssignableFrom(paramClass))
      for (ReportSender reportSender : this.mReportSenders) {
        if (paramClass.isInstance(reportSender))
          this.mReportSenders.remove(reportSender); 
      }  
  }
  
  public void setDefaultReportSenders() {
    ACRAConfiguration aCRAConfiguration = ACRA.getConfig();
    Application application = ACRA.getApplication();
    removeAllReportSenders();
    if (!"".equals(aCRAConfiguration.mailTo())) {
      Log.w(ACRA.LOG_TAG, application.getPackageName() + " reports will be sent by email (if accepted by user).");
      setReportSender((ReportSender)new EmailIntentSender((Context)application));
      return;
    } 
    if (!(new PackageManagerWrapper((Context)application)).hasPermission("android.permission.INTERNET")) {
      Log.e(ACRA.LOG_TAG, application.getPackageName() + " should be granted permission " + "android.permission.INTERNET" + " if you want your crash reports to be sent. If you don't want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\"");
      return;
    } 
    if (aCRAConfiguration.formUri() != null && !"".equals(aCRAConfiguration.formUri())) {
      setReportSender((ReportSender)new HttpPostSender(null));
      return;
    } 
    if (aCRAConfiguration.formKey() != null && !"".equals(aCRAConfiguration.formKey().trim())) {
      addReportSender((ReportSender)new GoogleFormSender());
      return;
    } 
  }
  
  public void setEnabled(boolean paramBoolean) {
    String str1;
    String str2 = ACRA.LOG_TAG;
    StringBuilder stringBuilder = (new StringBuilder()).append("ACRA is ");
    if (paramBoolean) {
      str1 = "enabled";
    } else {
      str1 = "disabled";
    } 
    Log.i(str2, stringBuilder.append(str1).append(" for ").append(this.mContext.getPackageName()).toString());
    this.enabled = paramBoolean;
  }
  
  public void setReportSender(ReportSender paramReportSender) {
    removeAllReportSenders();
    addReportSender(paramReportSender);
  }
  
  SendWorker startSendingReports(boolean paramBoolean1, boolean paramBoolean2) {
    SendWorker sendWorker = new SendWorker(this.mContext, this.mReportSenders, paramBoolean1, paramBoolean2);
    sendWorker.start();
    return sendWorker;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable) {
    try {
      if (!this.enabled) {
        if (this.mDfltExceptionHandler != null) {
          Log.e(ACRA.LOG_TAG, "ACRA is disabled for " + this.mContext.getPackageName() + " - forwarding uncaught Exception on to default ExceptionHandler");
          this.mDfltExceptionHandler.uncaughtException(paramThread, paramThrowable);
          return;
        } 
        Log.e(ACRA.LOG_TAG, "ACRA is disabled for " + this.mContext.getPackageName() + " - no default ExceptionHandler");
        return;
      } 
    } catch (Throwable throwable) {
      if (this.mDfltExceptionHandler != null) {
        this.mDfltExceptionHandler.uncaughtException(paramThread, paramThrowable);
        return;
      } 
    } 
    this.brokenThread = paramThread;
    this.unhandledThrowable = paramThrowable;
    Log.e(ACRA.LOG_TAG, "ACRA caught a " + paramThrowable.getClass().getSimpleName() + " exception for " + this.mContext.getPackageName() + ". Building report.");
    handleException(paramThrowable, ACRA.getConfig().mode(), false, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\ErrorReporter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */