package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

class AppCompatDelegateImplV9$5 implements Runnable {
  public void run() {
    AppCompatDelegateImplV9.this.mActionModePopup.showAtLocation((View)AppCompatDelegateImplV9.this.mActionModeView, 55, 0, 0);
    AppCompatDelegateImplV9.this.endOnGoingFadeAnimation();
    if (AppCompatDelegateImplV9.this.shouldAnimateActionModeView()) {
      ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 0.0F);
      AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate((View)AppCompatDelegateImplV9.this.mActionModeView).alpha(1.0F);
      AppCompatDelegateImplV9.this.mFadeAnim.setListener((ViewPropertyAnimatorListener)new AppCompatDelegateImplV9$5$1(this));
      return;
    } 
    ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 1.0F);
    AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */