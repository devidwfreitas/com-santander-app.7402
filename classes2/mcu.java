import android.animation.Animator;
import com.santander.app.seguros.ui.widgets.ValidityCharV2;

public class mcu implements Animator.AnimatorListener {
  public mcu(ValidityCharV2 paramValidityCharV2, int paramInt) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {
    ValidityCharV2.a(this.b).setText(String.valueOf(this.a));
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */