import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.MotivoEnvioEditActivity;
import com.santander.app.cambio.transferenciaexterior.presentation.MotivoEnvioListActivity;
import java.io.Serializable;

public class gcv implements View.OnClickListener {
  public gcv(MotivoEnvioListActivity paramMotivoEnvioListActivity) {}
  
  public void onClick(View paramView) {
    MotivoEnvioListActivity.a(this.a, (gbb)paramView.getTag());
    if (MotivoEnvioListActivity.a(this.a).a()) {
      Intent intent = new Intent((Context)this.a, MotivoEnvioEditActivity.class);
      intent.putExtra("motivo_envio_edit", (Serializable)MotivoEnvioListActivity.a(this.a));
      this.a.startActivityForResult(intent, 1);
      return;
    } 
    MotivoEnvioListActivity.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */