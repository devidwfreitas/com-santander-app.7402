package android.support.v7.view;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class ViewPropertyAnimatorCompatSet$1 extends ViewPropertyAnimatorListenerAdapter {
  private int mProxyEndCount = 0;
  
  private boolean mProxyStarted = false;
  
  public void onAnimationEnd(View paramView) {
    int i = this.mProxyEndCount + 1;
    this.mProxyEndCount = i;
    if (i == ViewPropertyAnimatorCompatSet.this.mAnimators.size()) {
      if (ViewPropertyAnimatorCompatSet.this.mListener != null)
        ViewPropertyAnimatorCompatSet.this.mListener.onAnimationEnd(null); 
      onEnd();
    } 
  }
  
  public void onAnimationStart(View paramView) {
    if (!this.mProxyStarted) {
      this.mProxyStarted = true;
      if (ViewPropertyAnimatorCompatSet.this.mListener != null) {
        ViewPropertyAnimatorCompatSet.this.mListener.onAnimationStart(null);
        return;
      } 
    } 
  }
  
  void onEnd() {
    this.mProxyEndCount = 0;
    this.mProxyStarted = false;
    ViewPropertyAnimatorCompatSet.this.onAnimationsEnded();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\ViewPropertyAnimatorCompatSet$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */