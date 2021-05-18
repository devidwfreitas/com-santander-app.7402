package com.ca.org.acra;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;

final class CrashReportFinder {
  private final Context context;
  
  public CrashReportFinder(Context paramContext) {
    this.context = paramContext;
  }
  
  public String[] getCrashReportFiles() {
    if (this.context == null) {
      Log.e(ACRA.LOG_TAG, "Trying to get ACRA reports but ACRA is not initialized.");
      return new String[0];
    } 
    File file = this.context.getFilesDir();
    if (file == null) {
      Log.w(ACRA.LOG_TAG, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling.");
      return new String[0];
    } 
    Log.d(ACRA.LOG_TAG, "Looking for error files in " + file.getAbsolutePath());
    String[] arrayOfString2 = file.list(new FilenameFilter() {
          public boolean accept(File param1File, String param1String) {
            return param1String.endsWith(".stacktrace");
          }
        });
    String[] arrayOfString1 = arrayOfString2;
    return (arrayOfString2 == null) ? new String[0] : arrayOfString1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\CrashReportFinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */