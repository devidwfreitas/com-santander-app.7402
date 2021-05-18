package com.ca.org.acra.sender;

import android.net.Uri;
import android.util.Log;
import com.ca.org.acra.ACRA;
import com.ca.org.acra.ReportField;
import com.ca.org.acra.collector.CrashReportData;
import com.ca.org.acra.util.HttpRequest;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public class GoogleFormSender implements ReportSender {
  private final Uri mFormUri = null;
  
  public GoogleFormSender() {}
  
  public GoogleFormSender(String paramString) {}
  
  private Map<String, String> remap(Map<ReportField, String> paramMap) {
    ReportField[] arrayOfReportField2 = ACRA.getConfig().customReportContent();
    ReportField[] arrayOfReportField1 = arrayOfReportField2;
    if (arrayOfReportField2.length == 0)
      arrayOfReportField1 = ACRA.DEFAULT_REPORT_FIELDS; 
    int j = 0;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    int k = arrayOfReportField1.length;
    int i = 0;
    while (i < k) {
      ReportField reportField = arrayOfReportField1[i];
      switch (reportField) {
        case APP_VERSION_NAME:
          hashMap.put("entry." + j + ".single", "'" + (String)paramMap.get(reportField));
          j++;
          i++;
          break;
        case ANDROID_VERSION:
          hashMap.put("entry." + j + ".single", "'" + (String)paramMap.get(reportField));
          j++;
          i++;
          break;
      } 
    } 
    return (Map)hashMap;
  }
  
  public void send(CrashReportData paramCrashReportData) throws ReportSenderException {
    Uri uri;
    if (this.mFormUri == null) {
      uri = Uri.parse(String.format(ACRA.getConfig().googleFormUrlFormat(), new Object[] { ACRA.getConfig().formKey() }));
    } else {
      uri = this.mFormUri;
    } 
    Map<String, String> map = remap((Map<ReportField, String>)paramCrashReportData);
    map.put("pageNumber", "0");
    map.put("backupCache", "");
    map.put("submit", "Envoyer");
    try {
      URL uRL = new URL(uri.toString());
      Log.d(ACRA.LOG_TAG, "Sending report " + (String)paramCrashReportData.get(ReportField.REPORT_ID));
      Log.d(ACRA.LOG_TAG, "Connect to " + uRL);
      HttpRequest httpRequest = new HttpRequest();
      httpRequest.setConnectionTimeOut(ACRA.getConfig().connectionTimeout());
      httpRequest.setSocketTimeOut(ACRA.getConfig().socketTimeout());
      httpRequest.setMaxNrRetries(ACRA.getConfig().maxNumberOfRequestRetries());
      httpRequest.sendPost(uRL, map);
      return;
    } catch (IOException iOException) {
      throw new ReportSenderException("Error while sending report to Google Form.", iOException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\sender\GoogleFormSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */