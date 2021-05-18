package com.ca.mdo;

import android.content.Context;

public class AppModeActivityStateCheck implements Runnable {
  private AppMode appMode;
  
  private Context ctx;
  
  public AppModeActivityStateCheck(AppMode paramAppMode, Context paramContext) {
    this.appMode = paramAppMode;
    this.ctx = paramContext;
  }
  
  public void run() {
    if (this.appMode.foreground && this.appMode.paused) {
      this.appMode.foreground = false;
      CALog.v("went background");
      CAMobileDevOps.appEnteredBackGroundEvent();
      CAMobileDevOps.setSessionProcessed(false);
      for (AppMode.Listener listener : this.appMode.listeners) {
        try {
          listener.onBecameBackground(this.ctx);
        } catch (Exception exception) {
          CALog.e("Listener threw exception!", exception);
        } 
      } 
    } else {
      CALog.v("still foreground");
    } 
    this.appMode = null;
    this.ctx = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\AppModeActivityStateCheck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */