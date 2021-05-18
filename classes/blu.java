import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

final class blu implements Application.ActivityLifecycleCallbacks {
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {
    blz.b();
    blt.a(paramActivity);
  }
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {
    blz.b();
    blt.c(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity) {
    blz.b();
    blt.b(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {
    bla.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */