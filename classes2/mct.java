import android.animation.ValueAnimator;
import com.santander.app.seguros.ui.widgets.ValidityCharV2;

public class mct implements ValueAnimator.AnimatorUpdateListener {
  public mct(ValidityCharV2 paramValidityCharV2) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    ValidityCharV2.a(this.a).setText(String.valueOf(0));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */