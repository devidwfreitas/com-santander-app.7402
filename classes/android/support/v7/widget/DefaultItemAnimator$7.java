package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

class DefaultItemAnimator$7 extends DefaultItemAnimator$VpaListenerAdapter {
  public void onAnimationEnd(View paramView) {
    oldViewAnim.setListener(null);
    ViewCompat.setAlpha(paramView, 1.0F);
    ViewCompat.setTranslationX(paramView, 0.0F);
    ViewCompat.setTranslationY(paramView, 0.0F);
    DefaultItemAnimator.this.dispatchChangeFinished(changeInfo.oldHolder, true);
    DefaultItemAnimator.this.mChangeAnimations.remove(changeInfo.oldHolder);
    DefaultItemAnimator.this.dispatchFinishedWhenDone();
  }
  
  public void onAnimationStart(View paramView) {
    DefaultItemAnimator.this.dispatchChangeStarting(changeInfo.oldHolder, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */