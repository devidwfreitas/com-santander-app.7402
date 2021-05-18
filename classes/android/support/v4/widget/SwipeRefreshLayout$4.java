package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$4 extends Animation {
  public void applyTransformation(float paramFloat, Transformation paramTransformation) {
    SwipeRefreshLayout.this.mProgress.setAlpha((int)(startingAlpha + (endingAlpha - startingAlpha) * paramFloat));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SwipeRefreshLayout$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */