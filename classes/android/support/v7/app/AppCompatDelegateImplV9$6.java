package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class AppCompatDelegateImplV9$6 extends ViewPropertyAnimatorListenerAdapter {
  public void onAnimationEnd(View paramView) {
    ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 1.0F);
    AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
    AppCompatDelegateImplV9.this.mFadeAnim = null;
  }
  
  public void onAnimationStart(View paramView) {
    AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
    AppCompatDelegateImplV9.this.mActionModeView.sendAccessibilityEvent(32);
    if (AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View)
      ViewCompat.requestApplyInsets((View)AppCompatDelegateImplV9.this.mActionModeView.getParent()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */