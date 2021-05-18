package android.support.v4.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class SlidingPaneLayout$DisableLayerRunnable implements Runnable {
  final View mChildView;
  
  SlidingPaneLayout$DisableLayerRunnable(View paramView) {
    this.mChildView = paramView;
  }
  
  public void run() {
    if (this.mChildView.getParent() == SlidingPaneLayout.this) {
      ViewCompat.setLayerType(this.mChildView, 0, null);
      SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
    } 
    SlidingPaneLayout.this.mPostedRunnables.remove(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout$DisableLayerRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */