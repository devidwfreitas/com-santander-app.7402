package android.support.v4.app;

import android.support.annotation.CallSuper;
import android.support.v4.os.BuildCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Animation;

class FragmentManagerImpl$AnimateOnHWLayerIfNeededListener implements Animation.AnimationListener {
  private Animation.AnimationListener mOriginalListener;
  
  private boolean mShouldRunOnHWLayer;
  
  View mView;
  
  public FragmentManagerImpl$AnimateOnHWLayerIfNeededListener(View paramView, Animation paramAnimation) {
    if (paramView == null || paramAnimation == null)
      return; 
    this.mView = paramView;
  }
  
  public FragmentManagerImpl$AnimateOnHWLayerIfNeededListener(View paramView, Animation paramAnimation, Animation.AnimationListener paramAnimationListener) {
    if (paramView == null || paramAnimation == null)
      return; 
    this.mOriginalListener = paramAnimationListener;
    this.mView = paramView;
    this.mShouldRunOnHWLayer = true;
  }
  
  @CallSuper
  public void onAnimationEnd(Animation paramAnimation) {
    if (this.mView != null && this.mShouldRunOnHWLayer)
      if (ViewCompat.isAttachedToWindow(this.mView) || BuildCompat.isAtLeastN()) {
        this.mView.post(new FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1(this));
      } else {
        ViewCompat.setLayerType(this.mView, 0, null);
      }  
    if (this.mOriginalListener != null)
      this.mOriginalListener.onAnimationEnd(paramAnimation); 
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {
    if (this.mOriginalListener != null)
      this.mOriginalListener.onAnimationRepeat(paramAnimation); 
  }
  
  @CallSuper
  public void onAnimationStart(Animation paramAnimation) {
    if (this.mOriginalListener != null)
      this.mOriginalListener.onAnimationStart(paramAnimation); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentManagerImpl$AnimateOnHWLayerIfNeededListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */