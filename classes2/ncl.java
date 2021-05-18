import android.view.View;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

public class ncl implements View.OnClickListener {
  public ncl(IdSantanderUsuarioConsultivoActivity paramIdSantanderUsuarioConsultivoActivity) {}
  
  public void onClick(View paramView) {
    this.a.getSharedPreferences(nbc.BLOQUEIO_CLIENTE.name(), 0).edit().putBoolean(mzr.n(), false).commit();
    IdSantanderUsuarioConsultivoActivity.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ncl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */