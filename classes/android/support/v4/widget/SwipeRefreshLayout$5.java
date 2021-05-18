package android.support.v4.widget;

import android.view.animation.Animation;

class SwipeRefreshLayout$5 implements Animation.AnimationListener {
  public void onAnimationEnd(Animation paramAnimation) {
    if (!SwipeRefreshLayout.this.mScale)
      SwipeRefreshLayout.this.startScaleDownAnimation(null); 
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SwipeRefreshLayout$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */