import android.text.Editable;
import android.text.TextWatcher;

class lpl implements TextWatcher {
  lpl(loz paramloz) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (loz.a(this.a).c().i() == null)
      loz.a(this.a).c().a(new kqj()); 
    kqy kqy = new kqy();
    kqy.a(true);
    kqy.b(loz.g(this.a).getText().toString());
    loz.a(this.a).c().i().a(kqy);
    loz.a(this.a, true);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */