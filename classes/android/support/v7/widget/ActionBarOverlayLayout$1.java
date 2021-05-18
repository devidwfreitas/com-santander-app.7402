package android.support.v7.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class ActionBarOverlayLayout$1 extends ViewPropertyAnimatorListenerAdapter {
  public void onAnimationCancel(View paramView) {
    ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = null;
    ActionBarOverlayLayout.this.mAnimatingForFling = false;
  }
  
  public void onAnimationEnd(View paramView) {
    ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = null;
    ActionBarOverlayLayout.this.mAnimatingForFling = false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionBarOverlayLayout$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */