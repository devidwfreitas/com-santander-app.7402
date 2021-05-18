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

public class HttpPostSender implements ReportSender {
  private final Uri mFormUri;
  
  private final Map<ReportField, String> mMapping;
  
  public HttpPostSender(String paramString, Map<ReportField, String> paramMap) {
    this.mFormUri = Uri.parse(paramString);
    this.mMapping = paramMap;
  }
  
  public HttpPostSender(Map<ReportField, String> paramMap) {
    this.mFormUri = null;
    this.mMapping = paramMap;
  }
  
  private static boolean isNull(String paramString) {
    return (paramString == null || "ACRA-NULL-STRING".equals(paramString));
  }
  
  private Map<String, String> remap(Map<ReportField, String> paramMap) {
    ReportField[] arrayOfReportField2 = ACRA.getConfig().customReportContent();
    ReportField[] arrayOfReportField1 = arrayOfReportField2;
    if (arrayOfReportField2.length == 0)
      arrayOfReportField1 = ACRA.DEFAULT_REPORT_FIELDS; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>(paramMap.size());
    int j = arrayOfReportField1.length;
    for (int i = 0; i < j; i++) {
      ReportField reportField = arrayOfReportField1[i];
      if (this.mMapping == null || this.mMapping.get(reportField) == null) {
        hashMap.put(reportField.toString(), paramMap.get(reportField));
      } else {
        hashMap.put(this.mMapping.get(reportField), paramMap.get(reportField));
      } 
    } 
    return (Map)hashMap;
  }
  
  public void send(CrashReportData paramCrashReportData) throws ReportSenderException {
    String str = null;
    try {
      URL uRL;
      String str1;
      Map<String, String> map = remap((Map<ReportField, String>)paramCrashReportData);
      if (this.mFormUri == null) {
        uRL = new URL(ACRA.getConfig().formUri());
      } else {
        uRL = new URL(this.mFormUri.toString());
      } 
      Log.d(ACRA.LOG_TAG, "Connect to " + uRL.toString());
      if (isNull(ACRA.getConfig().formUriBasicAuthLogin())) {
        str1 = null;
      } else {
        str1 = ACRA.getConfig().formUriBasicAuthLogin();
      } 
      if (!isNull(ACRA.getConfig().formUriBasicAuthPassword()))
        str = ACRA.getConfig().formUriBasicAuthPassword(); 
      HttpRequest httpRequest = new HttpRequest();
      httpRequest.setConnectionTimeOut(ACRA.getConfig().connectionTimeout());
      httpRequest.setSocketTimeOut(ACRA.getConfig().socketTimeout());
      httpRequest.setMaxNrRetries(ACRA.getConfig().maxNumberOfRequestRetries());
      httpRequest.setLogin(str1);
      httpRequest.setPassword(str);
      httpRequest.sendPost(uRL, map);
      return;
    } catch (IOException iOException) {
      throw new ReportSenderException("Error while sending report to Http Post Form.", iOException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\sender\HttpPostSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */