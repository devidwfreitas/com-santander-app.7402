package android.support.design.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupUtils$ViewGroupUtilsImplBase implements ViewGroupUtils$ViewGroupUtilsImpl {
  public void offsetDescendantRect(ViewGroup paramViewGroup, View paramView, Rect paramRect) {
    paramViewGroup.offsetDescendantRectToMyCoords(paramView, paramRect);
    paramRect.offset(paramView.getScrollX(), paramView.getScrollY());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\ViewGroupUtils$ViewGroupUtilsImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */