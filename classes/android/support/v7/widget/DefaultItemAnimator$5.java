package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

class DefaultItemAnimator$5 extends DefaultItemAnimator$VpaListenerAdapter {
  public void onAnimationCancel(View paramView) {
    ViewCompat.setAlpha(paramView, 1.0F);
  }
  
  public void onAnimationEnd(View paramView) {
    animation.setListener(null);
    DefaultItemAnimator.this.dispatchAddFinished(holder);
    DefaultItemAnimator.this.mAddAnimations.remove(holder);
    DefaultItemAnimator.this.dispatchFinishedWhenDone();
  }
  
  public void onAnimationStart(View paramView) {
    DefaultItemAnimator.this.dispatchAddStarting(holder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */