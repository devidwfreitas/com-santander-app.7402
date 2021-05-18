package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;

public final class ShareCompat {
  public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
  
  public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
  
  static ShareCompat$ShareCompatImpl IMPL = new ShareCompat$ShareCompatImplBase();
  
  public static void configureMenuItem(Menu paramMenu, int paramInt, ShareCompat$IntentBuilder paramShareCompat$IntentBuilder) {
    MenuItem menuItem = paramMenu.findItem(paramInt);
    if (menuItem == null)
      throw new IllegalArgumentException("Could not find menu item with id " + paramInt + " in the supplied menu"); 
    configureMenuItem(menuItem, paramShareCompat$IntentBuilder);
  }
  
  public static void configureMenuItem(MenuItem paramMenuItem, ShareCompat$IntentBuilder paramShareCompat$IntentBuilder) {
    IMPL.configureMenuItem(paramMenuItem, paramShareCompat$IntentBuilder);
  }
  
  public static ComponentName getCallingActivity(Activity paramActivity) {
    ComponentName componentName2 = paramActivity.getCallingActivity();
    ComponentName componentName1 = componentName2;
    if (componentName2 == null)
      componentName1 = (ComponentName)paramActivity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY"); 
    return componentName1;
  }
  
  public static String getCallingPackage(Activity paramActivity) {
    String str2 = paramActivity.getCallingPackage();
    String str1 = str2;
    if (str2 == null)
      str1 = paramActivity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE"); 
    return str1;
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new ShareCompat$ShareCompatImplJB();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new ShareCompat$ShareCompatImplICS();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ShareCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */