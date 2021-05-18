import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderComprovanteActivity;

public class ixx implements View.OnClickListener {
  public ixx(IdSantanderComprovanteActivity paramIdSantanderComprovanteActivity) {}
  
  public void onClick(View paramView) {
    if (naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(this.a.v.f().y().a()) || naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(this.a.v.f().y().a())) {
      IdSantanderComprovanteActivity.c(this.a);
      return;
    } 
    if (naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(this.a.v.f().y().a()) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(this.a.v.f().y().a())) {
      IdSantanderComprovanteActivity.d(this.a);
      return;
    } 
    IdSantanderComprovanteActivity.e(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ixx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */