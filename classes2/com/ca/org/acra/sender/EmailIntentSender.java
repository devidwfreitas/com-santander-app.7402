package com.ca.org.acra.sender;

import android.content.Context;
import android.content.Intent;
import com.ca.org.acra.ACRA;
import com.ca.org.acra.ReportField;
import com.ca.org.acra.collector.CrashReportData;

public class EmailIntentSender implements ReportSender {
  private final Context mContext;
  
  public EmailIntentSender(Context paramContext) {
    this.mContext = paramContext;
  }
  
  private String buildBody(CrashReportData paramCrashReportData) {
    ReportField[] arrayOfReportField2 = ACRA.getConfig().customReportContent();
    ReportField[] arrayOfReportField1 = arrayOfReportField2;
    if (arrayOfReportField2.length == 0)
      arrayOfReportField1 = ACRA.DEFAULT_MAIL_REPORT_FIELDS; 
    StringBuilder stringBuilder = new StringBuilder();
    int j = arrayOfReportField1.length;
    for (int i = 0; i < j; i++) {
      ReportField reportField = arrayOfReportField1[i];
      stringBuilder.append(reportField.toString()).append("=");
      stringBuilder.append((String)paramCrashReportData.get(reportField));
      stringBuilder.append('\n');
    } 
    return stringBuilder.toString();
  }
  
  public void send(CrashReportData paramCrashReportData) throws ReportSenderException {
    String str2 = this.mContext.getPackageName() + " Crash Report";
    String str1 = buildBody(paramCrashReportData);
    Intent intent = new Intent("android.intent.action.SEND");
    intent.addFlags(268435456);
    intent.setType("text/plain");
    intent.putExtra("android.intent.extra.SUBJECT", str2);
    intent.putExtra("android.intent.extra.TEXT", str1);
    intent.putExtra("android.intent.extra.EMAIL", new String[] { ACRA.getConfig().mailTo() });
    this.mContext.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\sender\EmailIntentSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */