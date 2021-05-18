import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.transferencia.presentation.ListagemFavorecidosActivity;
import com.santander.app.transferencia.presentation.TransferenciasActivity;
import java.io.Serializable;

public class mou implements View.OnClickListener {
  public mou(TransferenciasActivity paramTransferenciasActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "SelecionarFavorecido");
    Intent intent = new Intent((Context)this.a, ListagemFavorecidosActivity.class);
    intent.putExtra("contaSelecionada", (Serializable)TransferenciasActivity.e(this.a));
    this.a.startActivityForResult(intent, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */