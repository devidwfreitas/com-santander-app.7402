import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transferencia.presentation.CadastroFavorecidoActivity;

public class mnn implements TextWatcher {
  public mnn(CadastroFavorecidoActivity paramCadastroFavorecidoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {
    CadastroFavorecidoActivity.i(this.a);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */