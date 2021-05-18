import android.widget.SeekBar;
import com.santander.app.seguros.ui.widgets.SliderValue;

public class mcm implements SeekBar.OnSeekBarChangeListener {
  public mcm(SliderValue paramSliderValue) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    Double double_ = SliderValue.a(this.a, paramInt);
    double_ = SliderValue.b(this.a, double_.intValue());
    if (SliderValue.a(this.a) && double_.equals(Double.valueOf(SliderValue.b(this.a)))) {
      SliderValue.c(this.a);
      SliderValue.d(this.a).b(Double.valueOf(SliderValue.b(this.a)));
      SliderValue.a(this.a, true);
      return;
    } 
    if (SliderValue.e(this.a))
      SliderValue.f(this.a); 
    if (SliderValue.g(this.a).isPressed())
      SliderValue.h(this.a).setText(String.valueOf(double_)); 
    SliderValue.a(this.a, false);
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {
    Double double_ = SliderValue.a(this.a, paramSeekBar.getProgress());
    if (double_.doubleValue() % 50.0D == 0.0D)
      return; 
    if (double_.equals(Double.valueOf(SliderValue.b(this.a)))) {
      double_ = Double.valueOf(SliderValue.b(this.a));
    } else {
      Double double_1 = Double.valueOf(50.0D - double_.doubleValue() % 50.0D);
      if (double_1.doubleValue() < 25.0D) {
        double d = double_.doubleValue();
        double_ = Double.valueOf(double_1.doubleValue() + d);
      } else {
        double d = double_.doubleValue();
        double_ = Double.valueOf(double_.doubleValue() - Double.valueOf(d % 50.0D).doubleValue());
      } 
    } 
    mgb.a(paramSeekBar, SliderValue.a(this.a, double_), 400L);
    SliderValue.h(this.a).setText(String.valueOf(double_));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */