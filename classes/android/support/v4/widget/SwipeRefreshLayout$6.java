package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$6 extends Animation {
  public void applyTransformation(float paramFloat, Transformation paramTransformation) {
    if (!SwipeRefreshLayout.this.mUsingCustomStart) {
      i = SwipeRefreshLayout.this.mSpinnerOffsetEnd - Math.abs(SwipeRefreshLayout.this.mOriginalOffsetTop);
    } else {
      i = SwipeRefreshLayout.this.mSpinnerOffsetEnd;
    } 
    int j = SwipeRefreshLayout.this.mFrom;
    int i = (int)((i - SwipeRefreshLayout.this.mFrom) * paramFloat);
    int k = SwipeRefreshLayout.this.mCircleView.getTop();
    SwipeRefreshLayout.this.setTargetOffsetTopAndBottom(i + j - k, false);
    SwipeRefreshLayout.this.mProgress.setArrowScale(1.0F - paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SwipeRefreshLayout$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */