import android.content.Context;
import android.content.Intent;
import com.santander.app.RendaFixaResgateConfirmacaoActivity;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import java.io.Serializable;

class fmx implements foh {
  fmx(fmw paramfmw) {}
  
  public void a(Object paramObject) {
    RendaFixaResgateConfirmacaoActivity.d(this.a.a);
    RendaFixaResgateConfirmacaoActivity rendaFixaResgateConfirmacaoActivity = this.a.a;
    Intent intent = new Intent((Context)this.a.a, ComprovanteBaseActivity.class);
    if (RendaFixaResgateConfirmacaoActivity.c(this.a.a).a().equalsIgnoreCase("0")) {
      paramObject = RendaFixaResgateConfirmacaoActivity.e(this.a.a);
    } else {
      paramObject = RendaFixaResgateConfirmacaoActivity.f(this.a.a);
    } 
    rendaFixaResgateConfirmacaoActivity.startActivity(intent.putExtra("comprovanteBase", (Serializable)paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */