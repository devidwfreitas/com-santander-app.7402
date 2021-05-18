import android.widget.TabHost;
import com.santander.app.transferencia.presentation.TransferenciasActivity;

public class moz implements TabHost.OnTabChangeListener {
  public moz(TransferenciasActivity paramTransferenciasActivity) {}
  
  public void onTabChanged(String paramString) {
    if (TransferenciasActivity.j(this.a).getCurrentTab() == 1) {
      frq.d("Transferencia_Acao", "SelecionarProgramada");
      TransferenciasActivity.i(this.a).a(TransferenciasActivity.e(this.a));
      return;
    } 
    frq.d("Transferencia_Acao", "SelecionarTransferencia");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\moz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */