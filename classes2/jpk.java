import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.meuperfil.activity.MeuPerfilAtivarCartaoActivity;
import com.santander.app.meuperfil.activity.MeuPerfilSolicitarCartaoActivity;

public class jpk implements View.OnClickListener {
  public jpk(MeuPerfilAtivarCartaoActivity paramMeuPerfilAtivarCartaoActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent((Context)this.b.i, MeuPerfilSolicitarCartaoActivity.class);
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */