import android.content.Context;
import android.content.Intent;
import com.santander.app.meuperfil.activity.CadastroFinalizadoSucessoActivity;
import com.santander.app.meuperfil.activity.ContaPreferencialActivity;

class jpc implements foh {
  jpc(jpb paramjpb) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject.a().equals("0")) {
      paramObject = new Intent((Context)this.a.a.a, CadastroFinalizadoSucessoActivity.class);
      paramObject.putExtra("codRetorno", "104");
      this.a.a.a.startActivity((Intent)paramObject);
      this.a.a.a.finish();
      return;
    } 
    mxn.e(ContaPreferencialActivity.e(this.a.a.a), paramObject.b());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */