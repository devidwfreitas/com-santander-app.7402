package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.util.Pair;
import android.view.View;

public class ActivityOptionsCompat {
  public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
  
  public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";
  
  public static ActivityOptionsCompat makeBasic() {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeBasic()) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeBasic()) : new ActivityOptionsCompat());
  }
  
  public static ActivityOptionsCompat makeClipRevealAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeClipRevealAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4)) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeClipRevealAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4)) : new ActivityOptionsCompat());
  }
  
  public static ActivityOptionsCompat makeCustomAnimation(Context paramContext, int paramInt1, int paramInt2) {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeCustomAnimation(paramContext, paramInt1, paramInt2)) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeCustomAnimation(paramContext, paramInt1, paramInt2)) : ((Build.VERSION.SDK_INT >= 21) ? new ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21.makeCustomAnimation(paramContext, paramInt1, paramInt2)) : ((Build.VERSION.SDK_INT >= 16) ? new ActivityOptionsCompat$ActivityOptionsImplJB(ActivityOptionsCompatJB.makeCustomAnimation(paramContext, paramInt1, paramInt2)) : new ActivityOptionsCompat())));
  }
  
  public static ActivityOptionsCompat makeScaleUpAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeScaleUpAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4)) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeScaleUpAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4)) : ((Build.VERSION.SDK_INT >= 21) ? new ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21.makeScaleUpAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4)) : ((Build.VERSION.SDK_INT >= 16) ? new ActivityOptionsCompat$ActivityOptionsImplJB(ActivityOptionsCompatJB.makeScaleUpAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4)) : new ActivityOptionsCompat())));
  }
  
  public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity paramActivity, View paramView, String paramString) {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(paramActivity, paramView, paramString)) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(paramActivity, paramView, paramString)) : ((Build.VERSION.SDK_INT >= 21) ? new ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(paramActivity, paramView, paramString)) : new ActivityOptionsCompat()));
  }
  
  public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity paramActivity, Pair<View, String>... paramVarArgs) {
    View[] arrayOfView = null;
    if (Build.VERSION.SDK_INT >= 21) {
      View[] arrayOfView1;
      if (paramVarArgs != null) {
        arrayOfView = new View[paramVarArgs.length];
        String[] arrayOfString2 = new String[paramVarArgs.length];
        for (int i = 0; i < paramVarArgs.length; i++) {
          arrayOfView[i] = (View)(paramVarArgs[i]).first;
          arrayOfString2[i] = (String)(paramVarArgs[i]).second;
        } 
        String[] arrayOfString1 = arrayOfString2;
      } else {
        View[] arrayOfView2 = null;
        arrayOfView1 = arrayOfView;
        arrayOfView = arrayOfView2;
      } 
      return (ActivityOptionsCompat)((Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(paramActivity, arrayOfView, (String[])arrayOfView1)) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(paramActivity, arrayOfView, (String[])arrayOfView1)) : new ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(paramActivity, arrayOfView, (String[])arrayOfView1))));
    } 
    return new ActivityOptionsCompat();
  }
  
  public static ActivityOptionsCompat makeTaskLaunchBehind() {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeTaskLaunchBehind()) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeTaskLaunchBehind()) : ((Build.VERSION.SDK_INT >= 21) ? new ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21.makeTaskLaunchBehind()) : new ActivityOptionsCompat()));
  }
  
  public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View paramView, Bitmap paramBitmap, int paramInt1, int paramInt2) {
    return (Build.VERSION.SDK_INT >= 24) ? new ActivityOptionsCompat$ActivityOptionsImpl24(ActivityOptionsCompat24.makeThumbnailScaleUpAnimation(paramView, paramBitmap, paramInt1, paramInt2)) : ((Build.VERSION.SDK_INT >= 23) ? new ActivityOptionsCompat$ActivityOptionsImpl23(ActivityOptionsCompat23.makeThumbnailScaleUpAnimation(paramView, paramBitmap, paramInt1, paramInt2)) : ((Build.VERSION.SDK_INT >= 21) ? new ActivityOptionsCompat$ActivityOptionsImpl21(ActivityOptionsCompat21.makeThumbnailScaleUpAnimation(paramView, paramBitmap, paramInt1, paramInt2)) : ((Build.VERSION.SDK_INT >= 16) ? new ActivityOptionsCompat$ActivityOptionsImplJB(ActivityOptionsCompatJB.makeThumbnailScaleUpAnimation(paramView, paramBitmap, paramInt1, paramInt2)) : new ActivityOptionsCompat())));
  }
  
  @Nullable
  public Rect getLaunchBounds() {
    return null;
  }
  
  public void requestUsageTimeReport(PendingIntent paramPendingIntent) {}
  
  public ActivityOptionsCompat setLaunchBounds(@Nullable Rect paramRect) {
    return null;
  }
  
  public Bundle toBundle() {
    return null;
  }
  
  public void update(ActivityOptionsCompat paramActivityOptionsCompat) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityOptionsCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */