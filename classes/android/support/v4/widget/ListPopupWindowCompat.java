package android.support.v4.widget;

import android.os.Build;
import android.view.View;

public final class ListPopupWindowCompat {
  static final ListPopupWindowCompat$ListPopupWindowImpl IMPL = new ListPopupWindowCompat$BaseListPopupWindowImpl();
  
  public static View.OnTouchListener createDragToOpenListener(Object paramObject, View paramView) {
    return IMPL.createDragToOpenListener(paramObject, paramView);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 19) {
      IMPL = new ListPopupWindowCompat$KitKatListPopupWindowImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ListPopupWindowCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */