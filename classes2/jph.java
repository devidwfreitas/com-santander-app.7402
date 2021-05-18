import android.text.Editable;
import android.text.TextWatcher;
import com.santander.app.meuperfil.activity.MeuPerfilAtivarCartaoActivity;

public class jph implements TextWatcher {
  public jph(MeuPerfilAtivarCartaoActivity paramMeuPerfilAtivarCartaoActivity) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (MeuPerfilAtivarCartaoActivity.a(this.a).length() == 3) {
      if (MeuPerfilAtivarCartaoActivity.b(this.a).length() == 3) {
        MeuPerfilAtivarCartaoActivity.c(this.a);
        return;
      } 
    } else {
      return;
    } 
    MeuPerfilAtivarCartaoActivity.d(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */