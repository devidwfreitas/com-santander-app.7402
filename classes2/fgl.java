import android.content.DialogInterface;
import com.santander.app.BeneficiarioPagamentoListActivity;

public class fgl implements DialogInterface.OnClickListener {
  public fgl(BeneficiarioPagamentoListActivity paramBeneficiarioPagamentoListActivity, fur paramfur) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1) {
      this.a.a(fus.DELETE);
      (new fgn(this.b)).execute((Object[])new fur[] { this.a });
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */