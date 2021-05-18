import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.santander.app.components.view.zxing.CustomQrScannerActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoQrOfertaActivity;

public class ize implements View.OnClickListener {
  public ize(IdSantanderHabilitacaoQrOfertaActivity paramIdSantanderHabilitacaoQrOfertaActivity, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    CustomQrScannerActivity.a = guq.HABILITACAO_ID;
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)this.a, "android.permission.CAMERA") != 0) {
        ActivityCompat.requestPermissions(this.a, new String[] { "android.permission.CAMERA" }, 12);
        return;
      } 
      IdSantanderHabilitacaoQrOfertaActivity.b(this.b);
      return;
    } 
    IdSantanderHabilitacaoQrOfertaActivity.b(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ize.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */