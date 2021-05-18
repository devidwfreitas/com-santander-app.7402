import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transferencia.presentation.CadastroFavorecidoActivity;

public class mnk implements TextWatcher {
  public mnk(CadastroFavorecidoActivity paramCadastroFavorecidoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (CadastroFavorecidoActivity.c(this.a).a().equals("033") || CadastroFavorecidoActivity.c(this.a).a().equals("0033")) {
      if (CadastroFavorecidoActivity.b(this.a).getText().toString().length() == 8)
        CadastroFavorecidoActivity.d(this.a).requestFocus(); 
      return;
    } 
    if (CadastroFavorecidoActivity.b(this.a).getText().toString().length() == 11) {
      CadastroFavorecidoActivity.d(this.a).requestFocus();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */