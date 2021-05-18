package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;

public class ActivityCompat extends ContextCompat {
  private static ActivityCompatApi21$SharedElementCallback21 createCallback(SharedElementCallback paramSharedElementCallback) {
    ActivityCompat$SharedElementCallback21Impl activityCompat$SharedElementCallback21Impl = null;
    if (paramSharedElementCallback != null)
      activityCompat$SharedElementCallback21Impl = new ActivityCompat$SharedElementCallback21Impl(paramSharedElementCallback); 
    return activityCompat$SharedElementCallback21Impl;
  }
  
  private static ActivityCompatApi23$SharedElementCallback23 createCallback23(SharedElementCallback paramSharedElementCallback) {
    ActivityCompat$SharedElementCallback23Impl activityCompat$SharedElementCallback23Impl = null;
    if (paramSharedElementCallback != null)
      activityCompat$SharedElementCallback23Impl = new ActivityCompat$SharedElementCallback23Impl(paramSharedElementCallback); 
    return activityCompat$SharedElementCallback23Impl;
  }
  
  public static void finishAffinity(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 16) {
      ActivityCompatJB.finishAffinity(paramActivity);
      return;
    } 
    paramActivity.finish();
  }
  
  public static void finishAfterTransition(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompatApi21.finishAfterTransition(paramActivity);
      return;
    } 
    paramActivity.finish();
  }
  
  @Nullable
  public static Uri getReferrer(Activity paramActivity) {
    String str;
    if (Build.VERSION.SDK_INT >= 22)
      return ActivityCompatApi22.getReferrer(paramActivity); 
    Intent intent = paramActivity.getIntent();
    Uri uri2 = (Uri)intent.getParcelableExtra("android.intent.extra.REFERRER");
    Uri uri1 = uri2;
    if (uri2 == null) {
      str = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
      return (str != null) ? Uri.parse(str) : null;
    } 
    return (Uri)str;
  }
  
  public static boolean invalidateOptionsMenu(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 11) {
      ActivityCompatHoneycomb.invalidateOptionsMenu(paramActivity);
      return true;
    } 
    return false;
  }
  
  public static void postponeEnterTransition(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 21)
      ActivityCompatApi21.postponeEnterTransition(paramActivity); 
  }
  
  public static void requestPermissions(@NonNull Activity paramActivity, @NonNull String[] paramArrayOfString, @IntRange(from = 0L) int paramInt) {
    if (Build.VERSION.SDK_INT >= 23) {
      ActivityCompatApi23.requestPermissions(paramActivity, paramArrayOfString, paramInt);
      return;
    } 
    if (paramActivity instanceof ActivityCompat$OnRequestPermissionsResultCallback) {
      (new Handler(Looper.getMainLooper())).post(new ActivityCompat$1(paramArrayOfString, paramActivity, paramInt));
      return;
    } 
  }
  
  public static void setEnterSharedElementCallback(Activity paramActivity, SharedElementCallback paramSharedElementCallback) {
    if (Build.VERSION.SDK_INT >= 23) {
      ActivityCompatApi23.setEnterSharedElementCallback(paramActivity, createCallback23(paramSharedElementCallback));
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompatApi21.setEnterSharedElementCallback(paramActivity, createCallback(paramSharedElementCallback));
      return;
    } 
  }
  
  public static void setExitSharedElementCallback(Activity paramActivity, SharedElementCallback paramSharedElementCallback) {
    if (Build.VERSION.SDK_INT >= 23) {
      ActivityCompatApi23.setExitSharedElementCallback(paramActivity, createCallback23(paramSharedElementCallback));
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompatApi21.setExitSharedElementCallback(paramActivity, createCallback(paramSharedElementCallback));
      return;
    } 
  }
  
  public static boolean shouldShowRequestPermissionRationale(@NonNull Activity paramActivity, @NonNull String paramString) {
    return (Build.VERSION.SDK_INT >= 23) ? ActivityCompatApi23.shouldShowRequestPermissionRationale(paramActivity, paramString) : false;
  }
  
  public static void startActivityForResult(Activity paramActivity, Intent paramIntent, int paramInt, @Nullable Bundle paramBundle) {
    if (Build.VERSION.SDK_INT >= 16) {
      ActivityCompatJB.startActivityForResult(paramActivity, paramIntent, paramInt, paramBundle);
      return;
    } 
    paramActivity.startActivityForResult(paramIntent, paramInt);
  }
  
  public static void startIntentSenderForResult(Activity paramActivity, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, @Nullable Bundle paramBundle) {
    if (Build.VERSION.SDK_INT >= 16) {
      ActivityCompatJB.startIntentSenderForResult(paramActivity, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    } 
    paramActivity.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4);
  }
  
  public static void startPostponedEnterTransition(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 21)
      ActivityCompatApi21.startPostponedEnterTransition(paramActivity); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */