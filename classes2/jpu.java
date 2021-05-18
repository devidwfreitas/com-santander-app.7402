import android.content.Context;
import android.content.Intent;
import com.santander.app.meuperfil.activity.CadastroFinalizadoSucessoActivity;
import com.santander.app.meuperfil.activity.PrimeiroAcessoBoasVindasActivity;

public class jpu implements foh {
  public jpu(PrimeiroAcessoBoasVindasActivity paramPrimeiroAcessoBoasVindasActivity) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject.a().equals("0")) {
      paramObject = new Intent((Context)this.a, CadastroFinalizadoSucessoActivity.class);
      paramObject.putExtra("codRetorno", "104");
      this.a.startActivity((Intent)paramObject);
      this.a.finish();
      return;
    } 
    mxn.e(PrimeiroAcessoBoasVindasActivity.a(this.a), paramObject.b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */