package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1 extends ViewPropertyAnimatorListenerAdapter {
  public void onAnimationEnd(View paramView) {
    this.this$1.this$0.mActionModeView.setVisibility(8);
    if (this.this$1.this$0.mActionModePopup != null) {
      this.this$1.this$0.mActionModePopup.dismiss();
    } else if (this.this$1.this$0.mActionModeView.getParent() instanceof View) {
      ViewCompat.requestApplyInsets((View)this.this$1.this$0.mActionModeView.getParent());
    } 
    this.this$1.this$0.mActionModeView.removeAllViews();
    this.this$1.this$0.mFadeAnim.setListener(null);
    this.this$1.this$0.mFadeAnim = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */