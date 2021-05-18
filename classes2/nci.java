import android.view.View;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

public class nci implements View.OnClickListener {
  public nci(IdSantanderUsuarioConsultivoActivity paramIdSantanderUsuarioConsultivoActivity) {}
  
  public void onClick(View paramView) {
    this.a.getSharedPreferences(nat.VER_MENSAGEM_SMS.name(), 0).edit().putBoolean(mzr.n(), false).commit();
    this.a.getSharedPreferences(nbc.ID_NAO_HABILITADO.name(), 0).edit().putBoolean(mzr.n(), false).commit();
    IdSantanderUsuarioConsultivoActivity.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */