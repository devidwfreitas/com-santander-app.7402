package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(11)
@RequiresApi(11)
class ActionBarDrawerToggle$HoneycombDelegate implements ActionBarDrawerToggle$Delegate {
  final Activity mActivity;
  
  ActionBarDrawerToggleHoneycomb$SetIndicatorInfo mSetIndicatorInfo;
  
  ActionBarDrawerToggle$HoneycombDelegate(Activity paramActivity) {
    this.mActivity = paramActivity;
  }
  
  public Context getActionBarThemedContext() {
    return (Context)this.mActivity;
  }
  
  public Drawable getThemeUpIndicator() {
    return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(this.mActivity);
  }
  
  public boolean isNavigationVisible() {
    ActionBar actionBar = this.mActivity.getActionBar();
    return (actionBar != null && (actionBar.getDisplayOptions() & 0x4) != 0);
  }
  
  public void setActionBarDescription(int paramInt) {
    this.mSetIndicatorInfo = ActionBarDrawerToggleHoneycomb.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, paramInt);
  }
  
  public void setActionBarUpIndicator(Drawable paramDrawable, int paramInt) {
    ActionBar actionBar = this.mActivity.getActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(true);
      this.mSetIndicatorInfo = ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, paramDrawable, paramInt);
      actionBar.setDisplayShowHomeEnabled(false);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle$HoneycombDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */