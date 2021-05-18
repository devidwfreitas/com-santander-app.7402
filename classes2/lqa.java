import android.content.Context;
import android.os.Handler;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;

public class lqa implements gkw<is> {
  public lqa(ConfirmationPaymentActivity paramConfirmationPaymentActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing() && paramis != null) {
        ConfirmationPaymentActivity.c(this.a).setState(aor.CONTENT);
        frq.d("Seguros_Sinistro_Acionar_Documentacao_Acao", "ConfimacaoPagamento");
        mge.INSTANCE.setBankData(ConfirmationPaymentActivity.k(this.a));
        (new Handler()).postDelayed(new lqb(this), 200L);
        this.a.finish();
        return;
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      String str;
      ConfirmationPaymentActivity.c(this.a).setState(aor.ERROR);
      ConfirmationPaymentActivity confirmationPaymentActivity = this.a;
      if (paramis != null) {
        str = paramis.b();
      } else {
        str = this.a.getResources().getString(2131297122);
      } 
      mhj.c((Context)confirmationPaymentActivity, str);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */