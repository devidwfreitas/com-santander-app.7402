import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transferencia.presentation.ListagemTodosBancosActivity;
import java.util.Locale;

public class mop implements TextWatcher {
  public mop(ListagemTodosBancosActivity paramListagemTodosBancosActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = ListagemTodosBancosActivity.a(this.a).getText().toString().toLowerCase(Locale.getDefault());
    ListagemTodosBancosActivity.a(this.a, (String)paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */