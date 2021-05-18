import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transferencia.presentation.CadastroFavorecidoActivity;

public class mnj implements TextWatcher {
  public mnj(CadastroFavorecidoActivity paramCadastroFavorecidoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (CadastroFavorecidoActivity.a(this.a).getText().length() == 4)
      CadastroFavorecidoActivity.b(this.a).requestFocus(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */