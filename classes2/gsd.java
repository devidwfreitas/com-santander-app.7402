import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class gsd extends AnimatorListenerAdapter {
  gsd(gsf paramgsf, View paramView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {
    this.a.c(this.b);
  }
  
  public void onAnimationEnd(Animator paramAnimator) {
    this.a.b(this.b);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {
    this.a.a(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */