package com.ca.mdo;

import com.ca.org.acra.ReportField;
import com.ca.org.acra.collector.CrashReportData;
import com.ca.org.acra.sender.ReportSender;
import com.ca.org.acra.sender.ReportSenderException;

public class DevOpsReporterSender implements ReportSender {
  public void send(CrashReportData paramCrashReportData) throws ReportSenderException {
    if (PolicyManager.isCrashEnabled()) {
      String str2 = paramCrashReportData.getProperty(ReportField.STACK_TRACE);
      String str3 = paramCrashReportData.getProperty(ReportField.APP_VERSION_NAME);
      String str4 = paramCrashReportData.getProperty(ReportField.USER_CRASH_DATE);
      String str5 = paramCrashReportData.getProperty(ReportField.EXCEPTION_CAUSE);
      String str6 = paramCrashReportData.getProperty(ReportField.EXCEPTION_CLASSNAME);
      String str7 = paramCrashReportData.getProperty(ReportField.EXCEPTION_METHODNAME);
      String str8 = paramCrashReportData.getProperty(ReportField.EXCEPTION_LINENUMBER);
      String str1 = paramCrashReportData.getProperty(ReportField.BUILD);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("USER_CRASH_DATE=" + str4 + "\n");
      stringBuilder.append("APP_VERSION_NAME=" + str3 + "\n");
      stringBuilder.append("EXCEPTION_CAUSE=" + str5 + "\n");
      stringBuilder.append("EXCEPTION_CLASSNAME=" + str6 + "\n");
      stringBuilder.append("EXCEPTION_METHODNAME=" + str7 + "\n");
      stringBuilder.append("EXCEPTION_LINENUMBER=" + str8 + "\n");
      stringBuilder.append("MEM=" + AppDeviceData.getMemoryUsage() + "\n");
      stringBuilder.append("DISK=" + AppDeviceData.getDiskUsage() + "\n");
      stringBuilder.append("CPU=" + AppDeviceData.getCPUUsage() + "\n");
      stringBuilder.append("BUILD_FINGERPRINT=49b85022-2f19-416e-a06d-9854673246d7\n");
      stringBuilder.append("PROCESS_ID=" + AppDeviceData.getPid() + "\n");
      if (CAMobileDevOps.getSessionManager() != null)
        stringBuilder.append("CA_MAA_SESSION_ID=" + (CAMobileDevOps.getSessionManager()).mSessionID + "\n"); 
      stringBuilder.append(str1 + "\n");
      stringBuilder.append(str2);
      CAMobileDevOps.crash(stringBuilder.toString());
      return;
    } 
    CALog.d("Crash CALogging disabled");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DevOpsReporterSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */