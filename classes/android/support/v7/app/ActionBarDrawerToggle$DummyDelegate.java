package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.StringRes;

class ActionBarDrawerToggle$DummyDelegate implements ActionBarDrawerToggle$Delegate {
  final Activity mActivity;
  
  ActionBarDrawerToggle$DummyDelegate(Activity paramActivity) {
    this.mActivity = paramActivity;
  }
  
  public Context getActionBarThemedContext() {
    return (Context)this.mActivity;
  }
  
  public Drawable getThemeUpIndicator() {
    return null;
  }
  
  public boolean isNavigationVisible() {
    return true;
  }
  
  public void setActionBarDescription(@StringRes int paramInt) {}
  
  public void setActionBarUpIndicator(Drawable paramDrawable, @StringRes int paramInt) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle$DummyDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */