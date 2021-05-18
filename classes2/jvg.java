import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;

public class jvg implements TextWatcher {
  public jvg(PagamentosCodigoBarrasActivity paramPagamentosCodigoBarrasActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {
    PagamentosCodigoBarrasActivity.d(this.a).setEnabled(true);
    if (TextUtils.isEmpty(PagamentosCodigoBarrasActivity.c(this.a).getText().toString()))
      PagamentosCodigoBarrasActivity.d(this.a).setEnabled(false); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (!PagamentosCodigoBarrasActivity.b(this.a)) {
      paramCharSequence = PagamentosCodigoBarrasActivity.c(this.a).getText().toString();
      PagamentosCodigoBarrasActivity.a(this.a).b((String)paramCharSequence);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */