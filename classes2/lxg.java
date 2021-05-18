import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;

class lxg implements TextWatcher {
  lxg(lxc paramlxc) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 = 210 - paramCharSequence.length();
    lxc.b(this.a).setText(String.valueOf(paramInt1));
    if (paramInt1 == 0)
      mhj.c((Context)lxc.a(this.a), this.a.getResources().getString(2131298069)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */