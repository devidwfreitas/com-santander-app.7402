import android.view.View;
import com.santander.app.components.view.avisofinalano.AvisoFinalAnoActivity;

public class gsr implements View.OnClickListener {
  public gsr(AvisoFinalAnoActivity paramAvisoFinalAnoActivity) {}
  
  public void onClick(View paramView) {
    gst.b("Cancelar");
    AvisoFinalAnoActivity.c(this.a).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */