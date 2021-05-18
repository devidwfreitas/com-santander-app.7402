import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

public class iqs implements View.OnClickListener {
  public iqs(HomeLogadaActivity paramHomeLogadaActivity) {}
  
  public void onClick(View paramView) {
    String str = HomeLogadaActivity.f(this.a).f().A();
    if (naz.OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO.getValue().equals(str) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE.getValue().equals(str) || naz.HOME_CONSULTIVA.getValue().equals(str)) {
      Intent intent = new Intent((Context)HomeLogadaActivity.a(this.a), IdSantanderUsuarioConsultivoActivity.class);
      intent.putExtra("tipo", nat.APARELHO_NAO_HABILITADO);
      this.a.startActivity(intent);
      return;
    } 
    myl.a((Activity)HomeLogadaActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */