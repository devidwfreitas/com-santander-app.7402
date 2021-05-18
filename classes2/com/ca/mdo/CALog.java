package com.ca.mdo;

import android.util.Log;

public class CALog {
  public static final String LOG_TAG = "[CA MAA]";
  
  private static int NOT_LOGGED = -1;
  
  public static int d(String paramString) {
    return (paramString != null) ? Log.d("[CA MAA]", paramString) : NOT_LOGGED;
  }
  
  public static int e(String paramString) {
    return (paramString != null) ? Log.e("[CA MAA]", prependFingerPrintInfo(paramString)) : NOT_LOGGED;
  }
  
  public static int e(String paramString, Throwable paramThrowable) {
    return (paramString != null) ? Log.e("[CA MAA]", prependFingerPrintInfo(paramString), paramThrowable) : NOT_LOGGED;
  }
  
  public static int ex(Throwable paramThrowable) {
    if (paramThrowable != null) {
      logFingerPrintInfo();
      return Log.e("[CA MAA]", "", paramThrowable);
    } 
    return NOT_LOGGED;
  }
  
  public static int f(String paramString) {
    return (paramString != null) ? printBig("[CA MAA]", paramString) : NOT_LOGGED;
  }
  
  public static int i(String paramString) {
    return (paramString != null) ? Log.i("[CA MAA]", paramString) : NOT_LOGGED;
  }
  
  private static void logFingerPrintInfo() {
    e(prependFingerPrintInfo(""));
  }
  
  private static String prependFingerPrintInfo(String paramString) {
    return "Fingerprint:49b85022-2f19-416e-a06d-9854673246d7\n" + paramString;
  }
  
  private static int printBig(String paramString1, String paramString2) {
    if (paramString2.length() > 4000) {
      int i = 0 + Log.v(paramString1, "Printing Big Log Start --------------------------- " + paramString2.length());
      int k = paramString2.length() / 4000;
      for (int j = 0; j <= k; j++) {
        int m = (j + 1) * 4000;
        if (m >= paramString2.length()) {
          i += Log.v(paramString1, "Log (" + j + ") " + paramString2.substring(j * 4000));
        } else {
          i += Log.v(paramString1, "Log (" + j + ") " + paramString2.substring(j * 4000, m));
        } 
      } 
      return i + Log.v(paramString1, "Printing Big Log End  --------------------------- " + paramString2.length());
    } 
    return 0 + Log.v(paramString1, paramString2.toString());
  }
  
  public static int v(String paramString) {
    return Log.v("[CA MAA]", paramString);
  }
  
  public static int w(String paramString) {
    return (paramString != null) ? Log.w("[CA MAA]", paramString) : NOT_LOGGED;
  }
  
  public static int w(String paramString, Throwable paramThrowable) {
    return (paramString != null) ? Log.w("[CA MAA]", paramString, paramThrowable) : NOT_LOGGED;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CALog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */