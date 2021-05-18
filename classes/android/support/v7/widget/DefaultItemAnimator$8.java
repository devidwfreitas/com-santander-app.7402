package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

class DefaultItemAnimator$8 extends DefaultItemAnimator$VpaListenerAdapter {
  public void onAnimationEnd(View paramView) {
    newViewAnimation.setListener(null);
    ViewCompat.setAlpha(newView, 1.0F);
    ViewCompat.setTranslationX(newView, 0.0F);
    ViewCompat.setTranslationY(newView, 0.0F);
    DefaultItemAnimator.this.dispatchChangeFinished(changeInfo.newHolder, false);
    DefaultItemAnimator.this.mChangeAnimations.remove(changeInfo.newHolder);
    DefaultItemAnimator.this.dispatchFinishedWhenDone();
  }
  
  public void onAnimationStart(View paramView) {
    DefaultItemAnimator.this.dispatchChangeStarting(changeInfo.newHolder, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */