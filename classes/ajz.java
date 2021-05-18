import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class ajz implements TextWatcher {
  ajz(EditText paramEditText) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    String str = paramCharSequence.toString().replaceAll("[.]", "");
    if (str.length() > 6 && str.length() <= 9) {
      paramCharSequence = str.substring(str.length() - 6);
      str = str.substring(0, str.length() - 6);
      paramCharSequence = str + "." + paramCharSequence;
    } else {
      paramCharSequence = str;
      if (str.length() > 9) {
        paramCharSequence = str.substring(str.length() - 6);
        String str1 = str.substring(str.length() - 9, str.length() - 6);
        str = str.substring(0, str.length() - 9);
        paramCharSequence = str + "." + str1 + "." + paramCharSequence;
      } 
    } 
    if (paramCharSequence.contains(",00")) {
      CharSequence charSequence = paramCharSequence;
      if (!paramCharSequence.endsWith(",00"))
        charSequence = paramCharSequence.replace(",00", "") + ",00"; 
    } else {
      str = paramCharSequence + ",00";
    } 
    this.a.removeTextChangedListener(this);
    this.a.setText(str);
    this.a.setSelection(str.length() - 3);
    this.a.addTextChangedListener(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */