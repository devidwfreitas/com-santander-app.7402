package com.ca.org.acra;

import android.content.Context;
import android.util.Log;
import com.ca.org.acra.collector.CrashReportData;
import com.ca.org.acra.sender.ReportSender;
import com.ca.org.acra.sender.ReportSenderException;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class SendWorker extends Thread {
  private final boolean approvePendingReports;
  
  private final Context context;
  
  private final CrashReportFileNameParser fileNameParser = new CrashReportFileNameParser();
  
  private final List<ReportSender> reportSenders;
  
  private final boolean sendOnlySilentReports;
  
  public SendWorker(Context paramContext, List<ReportSender> paramList, boolean paramBoolean1, boolean paramBoolean2) {
    this.context = paramContext;
    this.reportSenders = paramList;
    this.sendOnlySilentReports = paramBoolean1;
    this.approvePendingReports = paramBoolean2;
  }
  
  private void approvePendingReports() {
    Log.d(ACRA.LOG_TAG, "Mark all pending reports as approved.");
    for (String str : (new CrashReportFinder(this.context)).getCrashReportFiles()) {
      if (!this.fileNameParser.isApproved(str)) {
        File file1 = new File(this.context.getFilesDir(), str);
        str = str.replace(".stacktrace", "-approved.stacktrace");
        File file2 = new File(this.context.getFilesDir(), str);
        if (!file1.renameTo(file2))
          Log.e(ACRA.LOG_TAG, "Could not rename approved report from " + file1 + " to " + file2); 
      } 
    } 
  }
  
  private void checkAndSendReports(Context paramContext, boolean paramBoolean) {
    Log.d(ACRA.LOG_TAG, "#checkAndSendReports - start");
    String[] arrayOfString = (new CrashReportFinder(paramContext)).getCrashReportFiles();
    Arrays.sort((Object[])arrayOfString);
    int j = 0;
    int k = arrayOfString.length;
    for (int i = 0;; i++) {
      if (i < k) {
        String str = arrayOfString[i];
        if (paramBoolean && !this.fileNameParser.isSilent(str))
          continue; 
        if (j < 5) {
          Log.i(ACRA.LOG_TAG, "Sending file " + str);
          try {
            sendCrashReport((new CrashReportPersister(paramContext)).load(str));
            deleteFile(paramContext, str);
            j++;
            continue;
          } catch (RuntimeException runtimeException) {
            Log.e(ACRA.LOG_TAG, "Failed to send crash reports for " + str, runtimeException);
            deleteFile(paramContext, str);
          } catch (IOException iOException) {
            Log.e(ACRA.LOG_TAG, "Failed to load crash report for " + str, iOException);
            deleteFile(paramContext, str);
          } catch (ReportSenderException reportSenderException) {
            Log.e(ACRA.LOG_TAG, "Failed to send crash report for " + str, (Throwable)reportSenderException);
          } 
        } 
      } 
      Log.d(ACRA.LOG_TAG, "#checkAndSendReports - finish");
      return;
    } 
  }
  
  private void deleteFile(Context paramContext, String paramString) {
    if (!paramContext.deleteFile(paramString))
      Log.w(ACRA.LOG_TAG, "Could not delete error report : " + paramString); 
  }
  
  private void sendCrashReport(CrashReportData paramCrashReportData) throws ReportSenderException {
    if (!ACRA.isDebuggable() || ACRA.getConfig().sendReportsInDevMode()) {
      boolean bool = false;
      for (ReportSender reportSender : this.reportSenders) {
        try {
          reportSender.send(paramCrashReportData);
          bool = true;
        } catch (ReportSenderException reportSenderException) {
          if (!bool)
            throw reportSenderException; 
          Log.w(ACRA.LOG_TAG, "ReportSender of class " + reportSender.getClass().getName() + " failed but other senders completed their task. ACRA will not send this report again.");
        } 
      } 
    } 
  }
  
  public void run() {
    if (this.approvePendingReports)
      approvePendingReports(); 
    checkAndSendReports(this.context, this.sendOnlySilentReports);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\SendWorker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */