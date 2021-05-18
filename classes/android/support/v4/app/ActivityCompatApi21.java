package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class ActivityCompatApi21 {
  private static SharedElementCallback createCallback(ActivityCompatApi21$SharedElementCallback21 paramActivityCompatApi21$SharedElementCallback21) {
    ActivityCompatApi21$SharedElementCallbackImpl activityCompatApi21$SharedElementCallbackImpl = null;
    if (paramActivityCompatApi21$SharedElementCallback21 != null)
      activityCompatApi21$SharedElementCallbackImpl = new ActivityCompatApi21$SharedElementCallbackImpl(paramActivityCompatApi21$SharedElementCallback21); 
    return activityCompatApi21$SharedElementCallbackImpl;
  }
  
  public static void finishAfterTransition(Activity paramActivity) {
    paramActivity.finishAfterTransition();
  }
  
  public static void postponeEnterTransition(Activity paramActivity) {
    paramActivity.postponeEnterTransition();
  }
  
  public static void setEnterSharedElementCallback(Activity paramActivity, ActivityCompatApi21$SharedElementCallback21 paramActivityCompatApi21$SharedElementCallback21) {
    paramActivity.setEnterSharedElementCallback(createCallback(paramActivityCompatApi21$SharedElementCallback21));
  }
  
  public static void setExitSharedElementCallback(Activity paramActivity, ActivityCompatApi21$SharedElementCallback21 paramActivityCompatApi21$SharedElementCallback21) {
    paramActivity.setExitSharedElementCallback(createCallback(paramActivityCompatApi21$SharedElementCallback21));
  }
  
  public static void startPostponedEnterTransition(Activity paramActivity) {
    paramActivity.startPostponedEnterTransition();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */