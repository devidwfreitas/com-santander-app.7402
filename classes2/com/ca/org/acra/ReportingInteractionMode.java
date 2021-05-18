package com.ca.org.acra;

public enum ReportingInteractionMode {
  DIALOG, NOTIFICATION, SILENT, TOAST;
  
  static {
    NOTIFICATION = new ReportingInteractionMode("NOTIFICATION", 1);
    TOAST = new ReportingInteractionMode("TOAST", 2);
    DIALOG = new ReportingInteractionMode("DIALOG", 3);
    $VALUES = new ReportingInteractionMode[] { SILENT, NOTIFICATION, TOAST, DIALOG };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\ReportingInteractionMode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */