import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.faleconosco.presentation.FormularioFaleConoscoActivity;

public class iar implements TextWatcher {
  private int b = 0;
  
  public iar(FormularioFaleConoscoActivity paramFormularioFaleConoscoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {
    FormularioFaleConoscoActivity.b(this.a).setText(paramEditable.length() + "/120");
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    this.b = paramInt3;
    FormularioFaleConoscoActivity.b(this.a).setText(paramCharSequence.length() + "/120");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */