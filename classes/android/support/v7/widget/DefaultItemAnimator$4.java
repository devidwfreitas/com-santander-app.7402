package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

class DefaultItemAnimator$4 extends DefaultItemAnimator$VpaListenerAdapter {
  public void onAnimationEnd(View paramView) {
    animation.setListener(null);
    ViewCompat.setAlpha(paramView, 1.0F);
    DefaultItemAnimator.this.dispatchRemoveFinished(holder);
    DefaultItemAnimator.this.mRemoveAnimations.remove(holder);
    DefaultItemAnimator.this.dispatchFinishedWhenDone();
  }
  
  public void onAnimationStart(View paramView) {
    DefaultItemAnimator.this.dispatchRemoveStarting(holder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */