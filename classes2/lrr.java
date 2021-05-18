import android.animation.Animator;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lrr implements Animator.AnimatorListener {
  public lrr(SinisterDetailActivity paramSinisterDetailActivity, boolean paramBoolean) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    if (!this.a)
      SinisterDetailActivity.j(this.b).setVisibility(8); 
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {
    SinisterDetailActivity.j(this.b).setVisibility(0);
    if (!this.a) {
      SinisterDetailActivity.c(this.b, false);
      return;
    } 
    SinisterDetailActivity.c(this.b, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */