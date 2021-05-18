import android.app.Activity;
import android.view.View;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartaoComprovanteActivity;

public class hcj implements View.OnClickListener {
  public hcj(DesbloqueioCartaoComprovanteActivity paramDesbloqueioCartaoComprovanteActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_Desbloqueio_Comprovante_Acao", "Compartilhar");
    String str = DesbloqueioCartaoComprovanteActivity.a(this.a).b();
    myj.a((Activity)DesbloqueioCartaoComprovanteActivity.a(this.a), DesbloqueioCartaoComprovanteActivity.b(this.a), "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */