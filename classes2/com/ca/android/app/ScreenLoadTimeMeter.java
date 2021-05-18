package com.ca.android.app;

public interface ScreenLoadTimeMeter {
  long geStartTime();
  
  long getEndTime();
  
  long getLoadTime();
  
  void setEndTime(long paramLong);
  
  void setStartTime(long paramLong);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\ScreenLoadTimeMeter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */