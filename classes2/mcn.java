import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.seguros.ui.widgets.SliderValue;

public class mcn implements TextWatcher {
  private String b = "";
  
  public mcn(SliderValue paramSliderValue) {}
  
  private boolean a(String paramString) {
    if (this.b.equals(paramString))
      return true; 
    this.b = paramString;
    return false;
  }
  
  public void afterTextChanged(Editable paramEditable) {
    String str = SliderValue.h(this.a).getText().toString();
    if (!a(str)) {
      Double double_ = Double.valueOf(mhj.t(str).doubleValue() * 100.0D / 100.0D);
      SliderValue.b(this.a, double_);
      if (double_.doubleValue() > SliderValue.b(this.a)) {
        SliderValue.h(this.a).setText(String.valueOf(SliderValue.b(this.a)));
        (new Handler()).postDelayed(new mco(this), 100L);
        return;
      } 
      if (!SliderValue.g(this.a).isPressed())
        (new Handler()).postDelayed(new mcp(this, double_), 100L); 
      if (double_.doubleValue() >= SliderValue.i(this.a)) {
        SliderValue.d(this.a).b(double_);
        SliderValue.a(this.a, double_.doubleValue());
        return;
      } 
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */