import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import br.com.santander.investimentoV2.shared.commons.TextWatcherValorBR;

public class aax implements TextWatcher {
  public aax(TextWatcherValorBR paramTextWatcherValorBR) {}
  
  public void afterTextChanged(Editable paramEditable) {
    TextWatcherValorBR.c(this.a).removeTextChangedListener(this);
    try {
      int i = TextWatcherValorBR.c(this.a).getText().length();
      String str2 = "000" + paramEditable.toString().replace(".", "").replace(",", "");
      str2 = str2.substring(0, str2.length() - 2) + "," + str2.substring(str2.length() - 2);
      Number number = TextWatcherValorBR.d(this.a).parse(str2);
      int j = TextWatcherValorBR.c(this.a).getSelectionStart();
      String str1 = TextWatcherValorBR.d(this.a).format(number);
      TextWatcherValorBR.c(this.a).setText(str1);
      i = TextWatcherValorBR.c(this.a).getText().length() - i + j;
      if (i > 0 && i <= TextWatcherValorBR.c(this.a).getText().length()) {
        TextWatcherValorBR.c(this.a).setSelection(i);
      } else {
        TextWatcherValorBR.c(this.a).setSelection(TextWatcherValorBR.c(this.a).getText().length() - 1);
      } 
      return;
    } catch (Exception exception) {
      Log.d(getClass().getSimpleName(), exception.toString());
      return;
    } finally {
      TextWatcherValorBR.c(this.a).addTextChangedListener(this);
    } 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */