import android.animation.ValueAnimator;
import com.github.mikephil.charting.charts.Chart;

public class cfd implements ValueAnimator.AnimatorUpdateListener {
  public cfd(Chart paramChart) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.a.postInvalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */