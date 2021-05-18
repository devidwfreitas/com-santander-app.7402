package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class ActionBarOverlayLayout$3 implements Runnable {
  public void run() {
    ActionBarOverlayLayout.this.haltActionBarHideOffsetAnimations();
    ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = ViewCompat.animate((View)ActionBarOverlayLayout.this.mActionBarTop).translationY(-ActionBarOverlayLayout.this.mActionBarTop.getHeight()).setListener(ActionBarOverlayLayout.this.mTopAnimatorListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionBarOverlayLayout$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */