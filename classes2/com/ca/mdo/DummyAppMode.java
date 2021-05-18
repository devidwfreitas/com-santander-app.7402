package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@TargetApi(14)
public class DummyAppMode implements Application.ActivityLifecycleCallbacks {
  public static final long CHECK_DELAY = 500L;
  
  public static boolean initialized = false;
  
  private static DummyAppMode instance;
  
  private Runnable check;
  
  private boolean foreground = false;
  
  private Handler handler = new Handler(Looper.getMainLooper());
  
  private List<Listener> listeners = new CopyOnWriteArrayList<Listener>();
  
  private boolean paused = true;
  
  public static DummyAppMode get() {
    return instance;
  }
  
  public static DummyAppMode get(Application paramApplication) {
    if (instance == null)
      init(paramApplication); 
    return instance;
  }
  
  public static DummyAppMode get(Context paramContext) {
    if (instance == null) {
      paramContext = paramContext.getApplicationContext();
      if (paramContext instanceof Application)
        init((Application)paramContext); 
    } 
    return instance;
  }
  
  @TargetApi(14)
  public static DummyAppMode init(Application paramApplication) {
    if (instance == null) {
      instance = new DummyAppMode();
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
    PolicyUtil.refreshPolicy();
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(final Activity activity) {
    this.paused = true;
    if (this.check != null)
      this.handler.removeCallbacks(this.check); 
    Handler handler = this.handler;
    Runnable runnable = new Runnable() {
        public void run() {
          if (DummyAppMode.this.foreground && DummyAppMode.this.paused) {
            DummyAppMode.access$002(DummyAppMode.this, false);
            for (DummyAppMode.Listener listener : DummyAppMode.this.listeners) {
              try {
                listener.onBecameBackground(activity.getApplicationContext());
              } catch (Exception exception) {
                CALog.e("Listener threw exception!", exception);
              } 
            } 
          } 
        }
      };
    this.check = runnable;
    handler.postDelayed(runnable, 500L);
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
      mdoSync(paramActivity);
      for (Listener listener : this.listeners) {
        try {
          listener.onBecameForeground(paramActivity.getApplicationContext());
        } catch (Exception exception) {
          CALog.e("Listener threw exception!", exception);
        } 
      } 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DummyAppMode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */