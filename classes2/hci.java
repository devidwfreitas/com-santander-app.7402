import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartaoComprovanteActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class hci implements View.OnClickListener {
  public hci(DesbloqueioCartaoComprovanteActivity paramDesbloqueioCartaoComprovanteActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_Desbloqueio_Comprovante_Acao", "Fechar");
    Intent intent = new Intent((Context)this.a, HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */