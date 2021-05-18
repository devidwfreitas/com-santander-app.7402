import android.animation.Animator;
import com.santander.app.seguros.ui.sinister.activities.ContestationActivity;

public class lql implements Animator.AnimatorListener {
  public lql(ContestationActivity paramContestationActivity, String paramString) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {}
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {
    ContestationActivity.a(this.b).setText(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */