package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;

interface NavUtils$NavUtilsImpl {
  Intent getParentActivityIntent(Activity paramActivity);
  
  String getParentActivityName(Context paramContext, ActivityInfo paramActivityInfo);
  
  void navigateUpTo(Activity paramActivity, Intent paramIntent);
  
  boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NavUtils$NavUtilsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */