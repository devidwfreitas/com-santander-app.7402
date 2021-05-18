import android.content.Context;
import android.content.Intent;
import com.santander.app.meuperfil.activity.CadastroAtencaoActivity;
import com.santander.app.meuperfil.activity.CadastroFinalizadoSucessoActivity;
import com.santander.app.meuperfil.activity.SenhaAcessoActivity;

public class jpx implements fzi {
  public jpx(SenhaAcessoActivity paramSenhaAcessoActivity) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject != null) {
      if (paramObject.a().equals("0") && paramObject.e().toUpperCase().equals("A")) {
        paramObject = new Intent((Context)SenhaAcessoActivity.a(this.a), CadastroFinalizadoSucessoActivity.class);
        SenhaAcessoActivity.a(this.a).startActivity((Intent)paramObject);
        return;
      } 
      if (paramObject.a().equals("0") && paramObject.e().toUpperCase().equals("B")) {
        paramObject = new Intent((Context)SenhaAcessoActivity.a(this.a), CadastroAtencaoActivity.class);
        SenhaAcessoActivity.a(this.a).startActivity((Intent)paramObject);
        return;
      } 
      SenhaAcessoActivity.a(this.a, paramObject.a());
      return;
    } 
    SenhaAcessoActivity.a(this.a, "");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */