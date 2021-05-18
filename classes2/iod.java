import android.content.Intent;
import com.santander.app.habilitacaointernacional.activity.ComprovanteHabilitacaoInternacionalActivity;
import com.santander.app.habilitacaointernacional.activity.ValidarCartaoHabilitacaoInternacionalActivity;

class iod implements foh {
  iod(ioc paramioc, iog paramiog) {}
  
  public void a(Object paramObject) {
    ValidarCartaoHabilitacaoInternacionalActivity.e(this.b.a);
    paramObject = new Intent(this.b.a.getApplicationContext(), ComprovanteHabilitacaoInternacionalActivity.class);
    paramObject.putExtra("lista", ValidarCartaoHabilitacaoInternacionalActivity.f(this.b.a));
    paramObject.putExtra("cartao", ValidarCartaoHabilitacaoInternacionalActivity.c(this.b.a));
    paramObject.putExtra("passo", ValidarCartaoHabilitacaoInternacionalActivity.g(this.b.a));
    paramObject.putExtra("operacao", ValidarCartaoHabilitacaoInternacionalActivity.h(this.b.a));
    paramObject.putExtra("FINALCARTAO", ValidarCartaoHabilitacaoInternacionalActivity.i(this.b.a));
    paramObject.putExtra("AutenticacaoBancaria", this.a.e().toString());
    this.b.a.startActivity((Intent)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */