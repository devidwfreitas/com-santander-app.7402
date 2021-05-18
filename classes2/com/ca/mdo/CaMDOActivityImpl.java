package com.ca.mdo;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import com.ca.android.app.ScreenLoadTimeMeter;

public class CaMDOActivityImpl {
  static void dispatchTouchEvent(MotionEvent paramMotionEvent) {
    CAMobileDevOps.activityMotionEvent(paramMotionEvent);
  }
  
  static long getInterval(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    long l1 = paramScreenLoadTimeMeter.geStartTime();
    long l2 = paramScreenLoadTimeMeter.getEndTime();
    return (l1 > 0L && l2 > 0L && l1 < l2) ? (l2 - l1) : -1L;
  }
  
  static void onCreate(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    paramScreenLoadTimeMeter.setStartTime(System.currentTimeMillis());
    AppMode.get((Context)paramActivity);
  }
  
  static void onPause(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    CAMobileDevOps.activityPause(paramActivity);
    paramScreenLoadTimeMeter.setStartTime(0L);
  }
  
  static void onRestart(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    if (paramScreenLoadTimeMeter.geStartTime() == 0L)
      paramScreenLoadTimeMeter.setStartTime(System.currentTimeMillis()); 
    CAMobileDevOps.activityOnRestart(paramActivity);
  }
  
  static void onResume(ScreenLoadTimeMeter paramScreenLoadTimeMeter, Activity paramActivity) {
    paramScreenLoadTimeMeter.setEndTime(System.currentTimeMillis());
    CAMobileDevOps.activityResume(paramActivity);
  }
  
  static void onStart(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    if (paramScreenLoadTimeMeter.geStartTime() == 0L)
      paramScreenLoadTimeMeter.setStartTime(System.currentTimeMillis()); 
  }
  
  static void onStop(ScreenLoadTimeMeter paramScreenLoadTimeMeter) {
    paramScreenLoadTimeMeter.setStartTime(0L);
  }
  
  static void onWindowFocusChanged(Activity paramActivity, boolean paramBoolean) {
    CAMobileDevOps.activityOnWindowFocusChanged(paramBoolean, paramActivity);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOActivityImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */