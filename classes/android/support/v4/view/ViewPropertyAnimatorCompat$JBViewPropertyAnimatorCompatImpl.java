package android.support.v4.view;

import android.view.View;

class ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl extends ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl {
  public void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener) {
    ViewPropertyAnimatorCompatJB.setListener(paramView, paramViewPropertyAnimatorListener);
  }
  
  public void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable) {
    ViewPropertyAnimatorCompatJB.withEndAction(paramView, paramRunnable);
  }
  
  public void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {
    ViewPropertyAnimatorCompatJB.withLayer(paramView);
  }
  
  public void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable) {
    ViewPropertyAnimatorCompatJB.withStartAction(paramView, paramRunnable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */