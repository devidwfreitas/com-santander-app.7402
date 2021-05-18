package com.ca.org.acra;

final class CrashReportFileNameParser {
  public boolean isApproved(String paramString) {
    return (isSilent(paramString) || paramString.contains("-approved"));
  }
  
  public boolean isSilent(String paramString) {
    return paramString.contains(ACRAConstants.SILENT_SUFFIX);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\CrashReportFileNameParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */