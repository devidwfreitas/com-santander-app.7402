import android.text.Editable;
import android.text.TextWatcher;

class lpk implements TextWatcher {
  lpk(loz paramloz) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (loz.a(this.a).c().i() == null)
      loz.a(this.a).c().a(new kqj()); 
    ksa ksa = new ksa();
    ksa.a(true);
    ksa.b(mhj.f(loz.f(this.a).getText().toString()));
    loz.a(this.a).c().i().a(ksa);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */