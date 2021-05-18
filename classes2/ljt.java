import android.view.animation.Animation;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;

class ljt implements Animation.AnimationListener {
  ljt(ljs paramljs) {}
  
  public void onAnimationEnd(Animation paramAnimation) {
    TermsOfUseActivity.e(this.a.a).setVisibility(8);
    TermsOfUseActivity.e(this.a.a).clearAnimation();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {
    TermsOfUseActivity.f(this.a.a).setClickable(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ljt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */