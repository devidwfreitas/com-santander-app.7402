package android.support.design.widget;

import android.view.ViewTreeObserver;

class CoordinatorLayout$OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
  public boolean onPreDraw() {
    CoordinatorLayout.this.onChildViewsChanged(0);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout$OnPreDrawListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */