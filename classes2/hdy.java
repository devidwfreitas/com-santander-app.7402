import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.dpp.DPPPreenchimentoActivity;
import java.text.NumberFormat;
import java.util.Locale;

public class hdy implements TextWatcher {
  private String b = "";
  
  public hdy(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (!paramCharSequence.toString().equals(this.b)) {
      DPPPreenchimentoActivity.g(this.a).removeTextChangedListener(this);
      double d = Double.parseDouble(paramCharSequence.toString().replaceAll("[R$,.]", ""));
      paramCharSequence = NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(d / 100.0D);
      this.b = (String)paramCharSequence;
      DPPPreenchimentoActivity.g(this.a).setText(paramCharSequence);
      DPPPreenchimentoActivity.g(this.a).setSelection(paramCharSequence.length());
      DPPPreenchimentoActivity.g(this.a).addTextChangedListener(this);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */