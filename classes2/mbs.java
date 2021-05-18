import android.animation.ValueAnimator;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;

public class mbs implements ValueAnimator.AnimatorUpdateListener {
  public mbs(ExpandableLayoutV2 paramExpandableLayoutV2) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.a.setExpansion(((Float)paramValueAnimator.getAnimatedValue()).floatValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */