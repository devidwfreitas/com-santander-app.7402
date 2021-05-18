package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.Application;
import com.ca.android.app.AnalyticsAgent;

public abstract class DefaultAnalyticsAgentImpl implements AnalyticsAgent {
  protected Application application;
  
  private Application.ActivityLifecycleCallbacks lifecycleCallbacks;
  
  private void checkIfInit() {
    if (!isInitialized())
      init(); 
  }
  
  @TargetApi(14)
  public void pause() {
    checkIfInit();
    this.application.unregisterActivityLifecycleCallbacks(this.lifecycleCallbacks);
  }
  
  void register(Application.ActivityLifecycleCallbacks paramActivityLifecycleCallbacks) {
    this.lifecycleCallbacks = paramActivityLifecycleCallbacks;
  }
  
  void register(Application paramApplication) {
    this.application = paramApplication;
  }
  
  @TargetApi(14)
  public void resume() {
    checkIfInit();
    this.application.registerActivityLifecycleCallbacks(this.lifecycleCallbacks);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DefaultAnalyticsAgentImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */