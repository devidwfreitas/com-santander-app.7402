import android.view.View;
import com.santander.app.transferencia.presentation.TransferenciasActivity;

public class mov implements View.OnClickListener {
  public mov(TransferenciasActivity paramTransferenciasActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "SelecionarContaCorrente");
    TransferenciasActivity.f(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */