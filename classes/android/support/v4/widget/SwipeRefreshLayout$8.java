package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$8 extends Animation {
  public void applyTransformation(float paramFloat, Transformation paramTransformation) {
    float f1 = SwipeRefreshLayout.this.mStartingScale;
    float f2 = -SwipeRefreshLayout.this.mStartingScale;
    SwipeRefreshLayout.this.setAnimationProgress(f1 + f2 * paramFloat);
    SwipeRefreshLayout.this.moveToStart(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SwipeRefreshLayout$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */