import android.content.Context;
import android.content.Intent;
import com.santander.app.meuperfil.activity.CadastroFinalizadoSucessoActivity;
import com.santander.app.meuperfil.activity.SenhaAcessoActivity;

public class jpy implements fzi {
  public jpy(SenhaAcessoActivity paramSenhaAcessoActivity) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject != null) {
      if (paramObject.a().equals("0")) {
        paramObject = new Intent((Context)SenhaAcessoActivity.a(this.a), CadastroFinalizadoSucessoActivity.class);
        paramObject.putExtra("codRetorno", SenhaAcessoActivity.b(this.a));
        SenhaAcessoActivity.a(this.a).startActivity((Intent)paramObject);
        return;
      } 
      SenhaAcessoActivity.a(this.a, paramObject.a());
      return;
    } 
    SenhaAcessoActivity.a(this.a, "");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */