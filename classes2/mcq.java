import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.seguros.ui.widgets.SliderValue;

public class mcq implements TextWatcher {
  public mcq(SliderValue paramSliderValue) {}
  
  private Integer a(String paramString) {
    try {
      return Integer.valueOf(paramString.replaceAll("[^-?0-9]+", ""));
    } catch (NumberFormatException numberFormatException) {
      return null;
    } 
  }
  
  public void afterTextChanged(Editable paramEditable) {
    Integer integer = a(paramEditable.toString());
    if (integer != null) {
      SliderValue.a(this.a, false);
      SliderValue.f(this.a);
      SliderValue.h(this.a).setText("0,0" + integer);
      return;
    } 
    if (paramEditable.toString().equals(SliderValue.j(this.a).substring(0, SliderValue.j(this.a).length() - 1))) {
      SliderValue.h(this.a).removeTextChangedListener(SliderValue.k(this.a));
      SliderValue.h(this.a).setText("");
      SliderValue.h(this.a).addTextChangedListener(SliderValue.k(this.a));
      return;
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */