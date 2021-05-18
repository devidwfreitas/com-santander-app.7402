import android.content.Intent;
import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.MotivoEnvioEditActivity;
import java.io.Serializable;

public class gcu implements View.OnClickListener {
  public gcu(MotivoEnvioEditActivity paramMotivoEnvioEditActivity) {}
  
  public void onClick(View paramView) {
    if (!MotivoEnvioEditActivity.a(this.a).getText().toString().isEmpty()) {
      MotivoEnvioEditActivity.b(this.a).a(MotivoEnvioEditActivity.a(this.a).getText().toString());
      Intent intent = new Intent();
      intent.putExtra("motivo_envio_selected", (Serializable)MotivoEnvioEditActivity.b(this.a));
      this.a.setResult(-1, intent);
      this.a.finish();
      return;
    } 
    mzv.a(this.a.i.getApplicationContext().getString(2131296720), this.a.findViewById(2131756702));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */