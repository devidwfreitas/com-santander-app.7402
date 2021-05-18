package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.ViewConfiguration;

@TargetApi(14)
@RequiresApi(14)
class ViewConfigurationCompatICS {
  static boolean hasPermanentMenuKey(ViewConfiguration paramViewConfiguration) {
    return paramViewConfiguration.hasPermanentMenuKey();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewConfigurationCompatICS.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */