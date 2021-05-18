import android.content.Context;
import android.content.Intent;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartaoComprovanteActivity;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartaoConfirmacaoActivity;

class hcm implements foh {
  hcm(hcl paramhcl, hcs paramhcs) {}
  
  public void a(Object paramObject) {
    DesbloqueioCartaoConfirmacaoActivity.c(this.b.a);
    ((hct)this.a.b().get(0)).j(DesbloqueioCartaoConfirmacaoActivity.b(this.b.a).j());
    ((hct)this.a.b().get(0)).q(DesbloqueioCartaoConfirmacaoActivity.b(this.b.a).q());
    paramObject = new Intent((Context)DesbloqueioCartaoConfirmacaoActivity.a(this.b.a), DesbloqueioCartaoComprovanteActivity.class);
    paramObject.putExtra("cartaoDesloqueioModel", this.a);
    this.b.a.startActivity((Intent)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */