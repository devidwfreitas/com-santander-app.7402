package android.support.v4.view;

import android.os.Build;
import android.view.ViewConfiguration;

public final class ViewConfigurationCompat {
  static final ViewConfigurationCompat$ViewConfigurationVersionImpl IMPL = new ViewConfigurationCompat$BaseViewConfigurationVersionImpl();
  
  @Deprecated
  public static int getScaledPagingTouchSlop(ViewConfiguration paramViewConfiguration) {
    return paramViewConfiguration.getScaledPagingTouchSlop();
  }
  
  public static boolean hasPermanentMenuKey(ViewConfiguration paramViewConfiguration) {
    return IMPL.hasPermanentMenuKey(paramViewConfiguration);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new ViewConfigurationCompat$IcsViewConfigurationVersionImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewConfigurationCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */