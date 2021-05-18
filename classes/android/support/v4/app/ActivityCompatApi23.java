package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.support.annotation.RequiresApi;

@TargetApi(23)
@RequiresApi(23)
class ActivityCompatApi23 {
  private static SharedElementCallback createCallback(ActivityCompatApi23$SharedElementCallback23 paramActivityCompatApi23$SharedElementCallback23) {
    ActivityCompatApi23$SharedElementCallbackImpl activityCompatApi23$SharedElementCallbackImpl = null;
    if (paramActivityCompatApi23$SharedElementCallback23 != null)
      activityCompatApi23$SharedElementCallbackImpl = new ActivityCompatApi23$SharedElementCallbackImpl(paramActivityCompatApi23$SharedElementCallback23); 
    return activityCompatApi23$SharedElementCallbackImpl;
  }
  
  public static void requestPermissions(Activity paramActivity, String[] paramArrayOfString, int paramInt) {
    if (paramActivity instanceof ActivityCompatApi23$RequestPermissionsRequestCodeValidator)
      ((ActivityCompatApi23$RequestPermissionsRequestCodeValidator)paramActivity).validateRequestPermissionsRequestCode(paramInt); 
    paramActivity.requestPermissions(paramArrayOfString, paramInt);
  }
  
  public static void setEnterSharedElementCallback(Activity paramActivity, ActivityCompatApi23$SharedElementCallback23 paramActivityCompatApi23$SharedElementCallback23) {
    paramActivity.setEnterSharedElementCallback(createCallback(paramActivityCompatApi23$SharedElementCallback23));
  }
  
  public static void setExitSharedElementCallback(Activity paramActivity, ActivityCompatApi23$SharedElementCallback23 paramActivityCompatApi23$SharedElementCallback23) {
    paramActivity.setExitSharedElementCallback(createCallback(paramActivityCompatApi23$SharedElementCallback23));
  }
  
  public static boolean shouldShowRequestPermissionRationale(Activity paramActivity, String paramString) {
    return paramActivity.shouldShowRequestPermissionRationale(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompatApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */