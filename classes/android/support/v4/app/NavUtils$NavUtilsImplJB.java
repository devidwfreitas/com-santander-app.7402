package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;

class NavUtils$NavUtilsImplJB extends NavUtils$NavUtilsImplBase {
  public Intent getParentActivityIntent(Activity paramActivity) {
    Intent intent2 = NavUtilsJB.getParentActivityIntent(paramActivity);
    Intent intent1 = intent2;
    if (intent2 == null)
      intent1 = superGetParentActivityIntent(paramActivity); 
    return intent1;
  }
  
  public String getParentActivityName(Context paramContext, ActivityInfo paramActivityInfo) {
    String str2 = NavUtilsJB.getParentActivityName(paramActivityInfo);
    String str1 = str2;
    if (str2 == null)
      str1 = super.getParentActivityName(paramContext, paramActivityInfo); 
    return str1;
  }
  
  public void navigateUpTo(Activity paramActivity, Intent paramIntent) {
    NavUtilsJB.navigateUpTo(paramActivity, paramIntent);
  }
  
  public boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent) {
    return NavUtilsJB.shouldUpRecreateTask(paramActivity, paramIntent);
  }
  
  Intent superGetParentActivityIntent(Activity paramActivity) {
    return super.getParentActivityIntent(paramActivity);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NavUtils$NavUtilsImplJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */