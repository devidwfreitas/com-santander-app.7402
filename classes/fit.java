import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.adjust.sdk.Adjust;

public final class fit implements Application.ActivityLifecycleCallbacks {
  private fit() {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {
    Adjust.onPause();
  }
  
  public void onActivityResumed(Activity paramActivity) {
    Adjust.onResume();
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\fit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */