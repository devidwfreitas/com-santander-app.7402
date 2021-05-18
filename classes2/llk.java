import android.text.Editable;
import android.text.TextWatcher;

class llk implements TextWatcher {
  llk(llj paramllj) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (llj.h(this.a) != null)
      llj.h(this.a).run(); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */