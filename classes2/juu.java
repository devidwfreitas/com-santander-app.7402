import android.content.DialogInterface;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosActivity;

public class juu implements DialogInterface.OnDismissListener {
  public juu(FormaPagamentosActivity paramFormaPagamentosActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface) {
    if (FormaPagamentosActivity.g(this.a).equals(FormaPagamentosActivity.h(this.a).a()) && FormaPagamentosActivity.i(this.a).equals("S")) {
      FormaPagamentosActivity.i(this.a).equals("N");
      this.a.d();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */