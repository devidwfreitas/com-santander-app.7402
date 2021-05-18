import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;

class lbf implements TextWatcher {
  lbf(lbc paramlbc, EditText paramEditText) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (this.a.length() > 0)
      if (this.a.getId() == 2131756952) {
        lbg.a(lbc.e(this.b), true);
      } else if (this.a.getId() == 2131756954) {
        lbg.b(lbc.e(this.b), true);
      } else if (this.a.getId() == 2131756953) {
        lbg.c(lbc.e(this.b), true);
      }  
    if (lbc.e(this.b).a()) {
      mhj.e((View)lbc.f(this.b));
      return;
    } 
    mhj.d((View)lbc.f(this.b));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */