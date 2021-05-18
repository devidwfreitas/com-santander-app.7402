import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.transferencia.presentation.DetalheTransferenciaProgramadaActivity;
import com.santander.app.transferencia.presentation.TransferenciasActivity;
import java.io.Serializable;

public class mpa implements View.OnClickListener {
  public mpa(TransferenciasActivity paramTransferenciasActivity) {}
  
  public void onClick(View paramView) {
    mlr mlr = (mlr)paramView.getTag();
    Intent intent = new Intent((Context)this.a, DetalheTransferenciaProgramadaActivity.class);
    intent.putExtra("transferenciaProgramada", (Serializable)mlr);
    intent.putExtra("contaSelecionada", (Serializable)TransferenciasActivity.e(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */