import android.animation.Animator;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lrs implements Animator.AnimatorListener {
  public lrs(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    SinisterDetailActivity.d(this.a, true);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */