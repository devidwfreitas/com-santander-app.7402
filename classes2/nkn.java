import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

final class nkn implements Application.ActivityLifecycleCallbacks {
  nkn(nhp paramnhp) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {
    this.a.a(new nhq(paramActivity));
  }
  
  public void onActivityResumed(Activity paramActivity) {
    this.a.a(new nhr(paramActivity));
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */