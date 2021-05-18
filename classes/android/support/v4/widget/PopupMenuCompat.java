package android.support.v4.widget;

import android.os.Build;
import android.view.View;

public final class PopupMenuCompat {
  static final PopupMenuCompat$PopupMenuImpl IMPL = new PopupMenuCompat$BasePopupMenuImpl();
  
  public static View.OnTouchListener getDragToOpenListener(Object paramObject) {
    return IMPL.getDragToOpenListener(paramObject);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new PopupMenuCompat$KitKatPopupMenuImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\PopupMenuCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */