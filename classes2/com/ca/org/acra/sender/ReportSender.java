package com.ca.org.acra.sender;

import com.ca.org.acra.collector.CrashReportData;

public interface ReportSender {
  void send(CrashReportData paramCrashReportData) throws ReportSenderException;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\sender\ReportSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */