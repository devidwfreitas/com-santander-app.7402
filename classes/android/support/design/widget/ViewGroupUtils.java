package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupUtils {
  private static final ViewGroupUtils$ViewGroupUtilsImpl IMPL = new ViewGroupUtils$ViewGroupUtilsImplBase();
  
  static void getDescendantRect(ViewGroup paramViewGroup, View paramView, Rect paramRect) {
    paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
    offsetDescendantRect(paramViewGroup, paramView, paramRect);
  }
  
  static void offsetDescendantRect(ViewGroup paramViewGroup, View paramView, Rect paramRect) {
    IMPL.offsetDescendantRect(paramViewGroup, paramView, paramRect);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new ViewGroupUtils$ViewGroupUtilsImplHoneycomb();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\ViewGroupUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */