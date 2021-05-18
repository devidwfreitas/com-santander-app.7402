import android.text.Editable;
import android.text.TextWatcher;

class lzv implements TextWatcher {
  lzv(lzt paramlzt) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (mhj.f(lzt.c(this.a).getText().toString().trim()).length() <= 0) {
      lzt.d(this.a).setError(this.a.getResources().getString(2131297379));
      return;
    } 
    lzt.d(this.a).setError(null);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */