package com.datami.smi;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;

public final class a implements Application.ActivityLifecycleCallbacks {
  private b a;
  
  private Handler b = new Handler();
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityDestroyed(Activity paramActivity) {}
  
  public final void onActivityPaused(Activity paramActivity) {
    if (this.a != null)
      this.b.removeCallbacks(this.a); 
    this.a = new b(this, paramActivity);
    this.b.postDelayed(this.a, 2000L);
  }
  
  public final void onActivityResumed(Activity paramActivity) {
    if (this.a != null)
      this.b.removeCallbacks(this.a); 
    SmiSdk.appVisibility((Context)paramActivity, true);
    c.a((Context)paramActivity);
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity) {}
  
  public final void onActivityStopped(Activity paramActivity) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */