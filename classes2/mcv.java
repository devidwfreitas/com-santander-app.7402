import android.animation.ValueAnimator;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.ValidityChart;

public class mcv implements ValueAnimator.AnimatorUpdateListener {
  public mcv(ValidityChart paramValidityChart, int paramInt) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator) {
    TextView textView = ValidityChart.a(this.b);
    int i = this.a / 20;
    textView.setText(String.valueOf(((Integer)paramValueAnimator.getAnimatedValue()).intValue() * i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */