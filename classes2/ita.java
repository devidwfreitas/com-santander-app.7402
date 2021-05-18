import android.text.Editable;
import android.text.TextWatcher;

class ita implements TextWatcher {
  ita(ism paramism) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (ism.b(this.a).isFocused())
      ism.a(this.a).a(paramCharSequence, paramInt1, paramInt2, paramInt3); 
    if (ism.c(this.a).isFocused())
      ism.a(this.a).b(paramCharSequence, paramInt1, paramInt2, paramInt3); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ita.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */