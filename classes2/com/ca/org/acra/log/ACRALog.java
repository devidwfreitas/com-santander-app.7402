package com.ca.org.acra.log;

public interface ACRALog {
  int d(String paramString1, String paramString2);
  
  int d(String paramString1, String paramString2, Throwable paramThrowable);
  
  int e(String paramString1, String paramString2);
  
  int e(String paramString1, String paramString2, Throwable paramThrowable);
  
  String getStackTraceString(Throwable paramThrowable);
  
  int i(String paramString1, String paramString2);
  
  int i(String paramString1, String paramString2, Throwable paramThrowable);
  
  int v(String paramString1, String paramString2);
  
  int v(String paramString1, String paramString2, Throwable paramThrowable);
  
  int w(String paramString1, String paramString2);
  
  int w(String paramString1, String paramString2, Throwable paramThrowable);
  
  int w(String paramString, Throwable paramThrowable);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\log\ACRALog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */