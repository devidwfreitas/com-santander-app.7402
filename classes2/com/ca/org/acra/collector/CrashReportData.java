package com.ca.org.acra.collector;

import com.ca.org.acra.ReportField;
import java.util.EnumMap;

public final class CrashReportData extends EnumMap<ReportField, String> {
  private static final long serialVersionUID = 4112578634029874840L;
  
  public CrashReportData() {
    super(ReportField.class);
  }
  
  public String getProperty(ReportField paramReportField) {
    return (String)get(paramReportField);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\CrashReportData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */