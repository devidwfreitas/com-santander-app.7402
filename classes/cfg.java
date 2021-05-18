import android.animation.ValueAnimator;
import com.github.mikephil.charting.charts.PieRadarChartBase;

public class cfg implements ValueAnimator.AnimatorUpdateListener {
  public cfg(PieRadarChartBase paramPieRadarChartBase) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    this.a.postInvalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */