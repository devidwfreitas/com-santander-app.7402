import android.animation.Animator;
import android.widget.TextView;

final class mgc implements Animator.AnimatorListener {
  mgc(TextView paramTextView, String paramString) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    this.a.setText(this.b);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */