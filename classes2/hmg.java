import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.santander.app.emprestimo.cancelamento.presentation.EmprestimoDetailActivity;

public class hmg implements TextWatcher {
  public hmg(EmprestimoDetailActivity paramEmprestimoDetailActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      EmprestimoDetailActivity.a(this.a).setEnabled(true);
      EmprestimoDetailActivity.b(this.a).c(paramCharSequence.toString());
      return;
    } 
    EmprestimoDetailActivity.a(this.a).setEnabled(false);
    EmprestimoDetailActivity.b(this.a).c("");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */