package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(11)
@RequiresApi(11)
class ActionBarDrawerToggle$ActionBarDrawerToggleImplHC implements ActionBarDrawerToggle$ActionBarDrawerToggleImpl {
  public Drawable getThemeUpIndicator(Activity paramActivity) {
    return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(paramActivity);
  }
  
  public Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt) {
    return ActionBarDrawerToggleHoneycomb.setActionBarDescription(paramObject, paramActivity, paramInt);
  }
  
  public Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt) {
    return ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(paramObject, paramActivity, paramDrawable, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActionBarDrawerToggle$ActionBarDrawerToggleImplHC.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */