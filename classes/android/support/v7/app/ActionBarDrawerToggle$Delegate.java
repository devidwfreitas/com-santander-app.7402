package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.StringRes;

public interface ActionBarDrawerToggle$Delegate {
  Context getActionBarThemedContext();
  
  Drawable getThemeUpIndicator();
  
  boolean isNavigationVisible();
  
  void setActionBarDescription(@StringRes int paramInt);
  
  void setActionBarUpIndicator(Drawable paramDrawable, @StringRes int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ActionBarDrawerToggle$Delegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */