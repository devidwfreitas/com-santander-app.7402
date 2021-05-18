package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import java.lang.reflect.Method;

class ActionBarDrawerToggleHoneycomb$SetIndicatorInfo {
  public Method setHomeActionContentDescription;
  
  public Method setHomeAsUpIndicator;
  
  public ImageView upIndicatorView;
  
  ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(Activity paramActivity) {
    try {
      this.setHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", new Class[] { Drawable.class });
      this.setHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", new Class[] { int.class });
    } catch (NoSuchMethodException noSuchMethodException) {
      View view = paramActivity.findViewById(16908332);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActionBarDrawerToggleHoneycomb$SetIndicatorInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */