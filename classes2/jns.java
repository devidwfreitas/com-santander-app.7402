import android.content.Context;
import android.content.DialogInterface;
import com.santander.app.lojaonline.domain.LojaCampaign;
import com.santander.app.lojaonline.presentation.LojaOnlineActivity;

public class jns implements DialogInterface.OnClickListener {
  public jns(LojaOnlineActivity paramLojaOnlineActivity, LojaCampaign.Campaign paramCampaign, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1) {
      jor.a(this.a.f(), "Continuar");
      myo.b(this.b, this.a.e());
      return;
    } 
    jor.a(this.a.f(), "Cancelar");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jns.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */