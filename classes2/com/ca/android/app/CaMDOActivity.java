package com.ca.android.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.MotionEvent;
import com.ca.mdo.SDK;

public abstract class CaMDOActivity extends Activity implements ScreenLoadTimeMeter {
  private long mdoEndTime = 0L;
  
  private long mdoStartTime = 0L;
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent) {
    SDK.getAgent(getApplication()).dispatchTouchEventOfActivity(paramMotionEvent);
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public long geStartTime() {
    return this.mdoStartTime;
  }
  
  public long getEndTime() {
    return this.mdoEndTime;
  }
  
  public long getLoadTime() {
    return SDK.getAgent(getApplication()).getIntervalOnActivity(this);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    SDK.getAgent(getApplication()).onCreateOfActivity(this, this);
  }
  
  protected void onPause() {
    SDK.getAgent(getApplication()).onPauseOfActivity(this, this);
    super.onPause();
  }
  
  protected void onRestart() {
    SDK.getAgent(getApplication()).onRestartOfActivity(this, this);
    super.onRestart();
  }
  
  protected void onResume() {
    super.onResume();
    SDK.getAgent(getApplication()).onResumeOfActivity(this, this);
  }
  
  protected void onStart() {
    super.onStart();
    SDK.getAgent(getApplication()).onStartOfActivity(this);
  }
  
  protected void onStop() {
    SDK.getAgent(getApplication()).onStopOfActivity(this);
    super.onStop();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean) {
    SDK.getAgent(getApplication()).onWindowFocusChangedOfActivity(this, paramBoolean);
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void setEndTime(long paramLong) {
    this.mdoEndTime = paramLong;
  }
  
  public void setStartTime(long paramLong) {
    this.mdoStartTime = paramLong;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */