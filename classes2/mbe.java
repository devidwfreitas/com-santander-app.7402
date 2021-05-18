import android.animation.ValueAnimator;
import com.santander.app.seguros.ui.widgets.CircleChartView;

public class mbe implements ValueAnimator.AnimatorUpdateListener {
  public mbe(CircleChartView paramCircleChartView) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.a.invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */