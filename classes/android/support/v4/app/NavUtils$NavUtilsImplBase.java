package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.support.v4.content.IntentCompat;
import android.util.Log;

class NavUtils$NavUtilsImplBase implements NavUtils$NavUtilsImpl {
  public Intent getParentActivityIntent(Activity paramActivity) {
    String str = NavUtils.getParentActivityName(paramActivity);
    if (str == null)
      return null; 
    ComponentName componentName = new ComponentName((Context)paramActivity, str);
    try {
      return (NavUtils.getParentActivityName((Context)paramActivity, componentName) == null) ? IntentCompat.makeMainActivity(componentName) : (new Intent()).setComponent(componentName);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + str + "' in manifest");
      return null;
    } 
  }
  
  public String getParentActivityName(Context paramContext, ActivityInfo paramActivityInfo) {
    if (paramActivityInfo.metaData == null)
      return null; 
    String str2 = paramActivityInfo.metaData.getString("android.support.PARENT_ACTIVITY");
    if (str2 == null)
      return null; 
    String str1 = str2;
    return (str2.charAt(0) == '.') ? (paramContext.getPackageName() + str2) : str1;
  }
  
  public void navigateUpTo(Activity paramActivity, Intent paramIntent) {
    paramIntent.addFlags(67108864);
    paramActivity.startActivity(paramIntent);
    paramActivity.finish();
  }
  
  public boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent) {
    String str = paramActivity.getIntent().getAction();
    return (str != null && !str.equals("android.intent.action.MAIN"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NavUtils$NavUtilsImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */