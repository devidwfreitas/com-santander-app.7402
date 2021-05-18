import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;

public class guu implements View.OnClickListener {
  public guu(ComprovanteBaseActivity paramComprovanteBaseActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Pagamentos_Pagamento_Comprovante_Acao", "PagarOutraConta");
    PagamentosCodigoBarrasActivity.b = false;
    Intent intent = new Intent((Context)this.a, PagamentosCodigoBarrasActivity.class);
    intent.setFlags(67108864);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\guu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */