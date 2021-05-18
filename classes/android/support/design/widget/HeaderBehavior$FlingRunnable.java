package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class HeaderBehavior$FlingRunnable implements Runnable {
  private final V mLayout;
  
  private final CoordinatorLayout mParent;
  
  HeaderBehavior$FlingRunnable(CoordinatorLayout paramCoordinatorLayout, V paramV) {
    this.mParent = paramCoordinatorLayout;
    this.mLayout = paramV;
  }
  
  public void run() {
    if (this.mLayout != null && HeaderBehavior.this.mScroller != null) {
      if (HeaderBehavior.this.mScroller.computeScrollOffset()) {
        HeaderBehavior.this.setHeaderTopBottomOffset(this.mParent, this.mLayout, HeaderBehavior.this.mScroller.getCurrY());
        ViewCompat.postOnAnimation((View)this.mLayout, this);
        return;
      } 
    } else {
      return;
    } 
    HeaderBehavior.this.onFlingFinished(this.mParent, this.mLayout);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\HeaderBehavior$FlingRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */