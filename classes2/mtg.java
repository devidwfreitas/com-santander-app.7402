import android.text.Editable;
import android.text.TextWatcher;

class mtg implements TextWatcher {
  mtg(mte parammte) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    mte.c(this.a).b(this);
    paramCharSequence = paramCharSequence.toString().replaceAll("[^0-9]+", "");
    mte.c(this.a).a((String)paramCharSequence);
    mte.c(this.a).a(paramCharSequence.length());
    mte.c(this.a).a(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */