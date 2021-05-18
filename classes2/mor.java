import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.transferencia.presentation.TransferenciasActivity;

public class mor implements TextWatcher {
  public mor(TransferenciasActivity paramTransferenciasActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {
    if (TransferenciasActivity.a(this.a) != null || TransferenciasActivity.b(this.a) != null)
      TransferenciasActivity.c(this.a).setEnabled(true); 
    if (TransferenciasActivity.d(this.a).getText().toString().equals("0,00"))
      TransferenciasActivity.c(this.a).setEnabled(false); 
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */