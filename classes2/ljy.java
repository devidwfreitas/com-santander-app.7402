import android.view.animation.Animation;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;

public class ljy implements Animation.AnimationListener {
  public ljy(TermsOfUseActivity paramTermsOfUseActivity) {}
  
  public void onAnimationEnd(Animation paramAnimation) {
    TermsOfUseActivity.e(this.a).clearAnimation();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {
    TermsOfUseActivity.e(this.a).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ljy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */