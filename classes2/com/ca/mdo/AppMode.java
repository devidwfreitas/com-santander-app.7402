package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.ca.android.app.ScreenLoadTimeMeter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@TargetApi(14)
class AppMode implements Application.ActivityLifecycleCallbacks {
  public static final long CHECK_DELAY = 500L;
  
  public static boolean initialized = false;
  
  private static AppMode instance;
  
  private Runnable check;
  
  protected boolean foreground = false;
  
  private Handler handler = new Handler(Looper.getMainLooper());
  
  protected List<Listener> listeners = new CopyOnWriteArrayList<Listener>();
  
  protected boolean paused = true;
  
  public static AppMode get() {
    return instance;
  }
  
  public static AppMode get(Application paramApplication) {
    if (instance == null)
      init(paramApplication); 
    return instance;
  }
  
  public static AppMode get(Context paramContext) {
    if (instance == null) {
      paramContext = paramContext.getApplicationContext();
      if (paramContext instanceof Application)
        init((Application)paramContext); 
    } 
    return instance;
  }
  
  @TargetApi(14)
  public static AppMode init(Application paramApplication) {
    if (instance == null) {
      instance = new AppMode();
      paramApplication.registerActivityLifecycleCallbacks(instance);
      initialized = true;
    } 
    return instance;
  }
  
  public void addListener(Listener paramListener) {
    this.listeners.add(paramListener);
  }
  
  public boolean isBackground() {
    return !this.foreground;
  }
  
  public boolean isForeground() {
    return this.foreground;
  }
  
  public void mdoSync(Activity paramActivity) {
    if (paramActivity instanceof ScreenLoadTimeMeter)
      ((ScreenLoadTimeMeter)paramActivity).setEndTime(System.currentTimeMillis()); 
    if (!CAMobileDevOps.getSessionProcessed()) {
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      hashMap.put("jsonObj", CAMobileDevOps.processResumeActivityDetails(paramActivity, "onResume"));
      hashMap.put("currentTimeStamp", Long.valueOf(System.currentTimeMillis()));
      CAMobileDevOps.sendSessionStart(1, (Map)hashMap);
    } 
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {
    this.paused = true;
    if (this.check != null)
      this.handler.removeCallbacks(this.check); 
    this.check = new AppModeActivityStateCheck(this, paramActivity.getApplicationContext());
    this.handler.postDelayed(this.check, 500L);
  }
  
  public void onActivityResumed(Activity paramActivity) {
    boolean bool = false;
    this.paused = false;
    if (!this.foreground)
      bool = true; 
    this.foreground = true;
    if (this.check != null)
      this.handler.removeCallbacks(this.check); 
    if (bool) {
      CALog.v("went foreground");
      CAMobileDevOps.appEnteredForeGroundEvent();
      mdoSync(paramActivity);
      for (Listener listener : this.listeners) {
        try {
          listener.onBecameForeground(paramActivity.getApplicationContext());
        } catch (Exception exception) {
          CALog.e("Listener threw exception!", exception);
        } 
      } 
    } else {
      CALog.v("still foreground");
    } 
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
  
  public void removeListener(Listener paramListener) {
    this.listeners.remove(paramListener);
  }
  
  public static interface Listener {
    void onBecameBackground(Context param1Context);
    
    void onBecameForeground(Context param1Context);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\AppMode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */