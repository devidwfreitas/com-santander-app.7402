import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cadastrodebitoautomatico.activity.ComprovanteDebitoAutomaticoActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class fzz implements View.OnClickListener {
  public fzz(ComprovanteDebitoAutomaticoActivity paramComprovanteDebitoAutomaticoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_Comprovante_Acao", "Fechar");
    Intent intent = new Intent((Context)this.a, HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */