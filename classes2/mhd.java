import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

final class mhd implements TextWatcher {
  private final Locale b = (this.a.getContext().getResources().getConfiguration()).locale;
  
  private final DecimalFormatSymbols c = new DecimalFormatSymbols(this.b);
  
  private final DecimalFormat d = new DecimalFormat("###,###,###,##0.00", this.c);
  
  private String e = "";
  
  mhd(EditText paramEditText) {}
  
  private String a(String paramString) {
    double d;
    try {
      d = Double.parseDouble(paramString);
    } catch (NumberFormatException numberFormatException) {
      d = Double.parseDouble(paramString.replaceAll("[,.]", "")) / 100.0D;
    } 
    return this.d.format(d);
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = paramCharSequence.toString();
    if (!paramCharSequence.equals(this.e)) {
      paramCharSequence = a((String)paramCharSequence);
      this.e = (String)paramCharSequence;
      this.a.setText(paramCharSequence);
      this.a.setSelection(this.a.getText().length());
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */