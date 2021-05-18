package android.support.v4.widget;

import android.annotation.SuppressLint;
import android.view.animation.Animation;

class SwipeRefreshLayout$1 implements Animation.AnimationListener {
  @SuppressLint({"NewApi"})
  public void onAnimationEnd(Animation paramAnimation) {
    if (SwipeRefreshLayout.this.mRefreshing) {
      SwipeRefreshLayout.this.mProgress.setAlpha(255);
      SwipeRefreshLayout.this.mProgress.start();
      if (SwipeRefreshLayout.this.mNotify && SwipeRefreshLayout.this.mListener != null)
        SwipeRefreshLayout.this.mListener.onRefresh(); 
      SwipeRefreshLayout.this.mCurrentTargetOffsetTop = SwipeRefreshLayout.this.mCircleView.getTop();
      return;
    } 
    SwipeRefreshLayout.this.reset();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SwipeRefreshLayout$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */