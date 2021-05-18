package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(18)
@RequiresApi(18)
class ActionBarDrawerToggle$JellybeanMr2Delegate implements ActionBarDrawerToggle$Delegate {
  final Activity mActivity;
  
  ActionBarDrawerToggle$JellybeanMr2Delegate(Activity paramActivity) {
    this.mActivity = paramActivity;
  }
  
  public Context getActionBarThemedContext() {
    ActionBar actionBar = this.mActivity.getActionBar();
    return (Context)((actionBar != null) ? actionBar.getThemedContext() : this.mActivity);
  }
  
  public Drawable getThemeUpIndicator() {
    TypedArray typedArray = getActionBarThemedContext().obtainStyledAttributes(null, new int[] { 16843531 }, 16843470, 0);
    Drawable drawable = typedArray.getDrawable(0);
    typedArray.recycle();
    return drawable;
  }
  
  public boolean isNavigationVisible() {
    ActionBar actionBar = this.mActivity.getActionBar();
    return (actionBar != null && (actionBar.getDisplayOptions() & 0x4) != 0);
  }
  
  public void setActionBarDescription(int paramInt) {
    ActionBar actionBar = this.mActivity.getActionBar();
    if (actionBar != null)
      actionBar.setHomeActionContentDescription(paramInt); 
  }
  
  public void setActionBarUpIndicator(Drawable paramDrawable, int paramInt) {
    ActionBar actionBar = this.mActivity.getActionBar();
    if (actionBar != null) {
      actionBar.setHomeAsUpIndicator(paramDrawable);
      actionBar.setHomeActionContentDescription(paramInt);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle$JellybeanMr2Delegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */