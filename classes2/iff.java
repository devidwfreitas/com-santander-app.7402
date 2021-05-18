import android.view.View;
import com.santander.app.fingerprint.presentation.FingerprintEnablingActivity;

public class iff implements View.OnClickListener {
  public iff(FingerprintEnablingActivity paramFingerprintEnablingActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Login_Biometria_Habilitar_Acao", "HabilitarAgora");
    FingerprintEnablingActivity.a(this.a).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */