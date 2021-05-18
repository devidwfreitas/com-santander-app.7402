package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.RequiresApi;

@TargetApi(14)
@RequiresApi(14)
class ActionBarDrawerToggle$IcsDelegate extends ActionBarDrawerToggle$HoneycombDelegate {
  ActionBarDrawerToggle$IcsDelegate(Activity paramActivity) {
    super(paramActivity);
  }
  
  public Context getActionBarThemedContext() {
    ActionBar actionBar = this.mActivity.getActionBar();
    return (Context)((actionBar != null) ? actionBar.getThemedContext() : this.mActivity);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle$IcsDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */