import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transferencia.presentation.ListagemFavorecidosActivity;
import java.util.Locale;

public class mom implements TextWatcher {
  public mom(ListagemFavorecidosActivity paramListagemFavorecidosActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    paramCharSequence = ListagemFavorecidosActivity.b(this.a).getText().toString().toLowerCase(Locale.getDefault());
    ListagemFavorecidosActivity.a(this.a, (String)paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */