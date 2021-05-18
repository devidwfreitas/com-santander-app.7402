package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.content.IntentCompat;

public final class NavUtils {
  private static final NavUtils$NavUtilsImpl IMPL = new NavUtils$NavUtilsImplBase();
  
  public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
  
  private static final String TAG = "NavUtils";
  
  public static Intent getParentActivityIntent(Activity paramActivity) {
    return IMPL.getParentActivityIntent(paramActivity);
  }
  
  public static Intent getParentActivityIntent(Context paramContext, ComponentName paramComponentName) {
    String str = getParentActivityName(paramContext, paramComponentName);
    if (str == null)
      return null; 
    paramComponentName = new ComponentName(paramComponentName.getPackageName(), str);
    return (getParentActivityName(paramContext, paramComponentName) == null) ? IntentCompat.makeMainActivity(paramComponentName) : (new Intent()).setComponent(paramComponentName);
  }
  
  public static Intent getParentActivityIntent(Context paramContext, Class<?> paramClass) {
    String str = getParentActivityName(paramContext, new ComponentName(paramContext, paramClass));
    if (str == null)
      return null; 
    ComponentName componentName = new ComponentName(paramContext, str);
    return (getParentActivityName(paramContext, componentName) == null) ? IntentCompat.makeMainActivity(componentName) : (new Intent()).setComponent(componentName);
  }
  
  @Nullable
  public static String getParentActivityName(Activity paramActivity) {
    try {
      return getParentActivityName((Context)paramActivity, paramActivity.getComponentName());
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      throw new IllegalArgumentException(nameNotFoundException);
    } 
  }
  
  @Nullable
  public static String getParentActivityName(Context paramContext, ComponentName paramComponentName) {
    ActivityInfo activityInfo = paramContext.getPackageManager().getActivityInfo(paramComponentName, 128);
    return IMPL.getParentActivityName(paramContext, activityInfo);
  }
  
  public static void navigateUpFromSameTask(Activity paramActivity) {
    Intent intent = getParentActivityIntent(paramActivity);
    if (intent == null)
      throw new IllegalArgumentException("Activity " + paramActivity.getClass().getSimpleName() + " does not have a parent activity name specified." + " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> " + " element in your manifest?)"); 
    navigateUpTo(paramActivity, intent);
  }
  
  public static void navigateUpTo(Activity paramActivity, Intent paramIntent) {
    IMPL.navigateUpTo(paramActivity, paramIntent);
  }
  
  public static boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent) {
    return IMPL.shouldUpRecreateTask(paramActivity, paramIntent);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new NavUtils$NavUtilsImplJB();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NavUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */