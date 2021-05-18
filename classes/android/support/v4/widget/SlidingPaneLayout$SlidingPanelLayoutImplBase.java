package android.support.v4.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class SlidingPaneLayout$SlidingPanelLayoutImplBase implements SlidingPaneLayout$SlidingPanelLayoutImpl {
  public void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView) {
    ViewCompat.postInvalidateOnAnimation((View)paramSlidingPaneLayout, paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout$SlidingPanelLayoutImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */