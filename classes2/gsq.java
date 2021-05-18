import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.santander.app.components.view.avisofinalano.AvisoFinalAnoActivity;

public class gsq implements View.OnClickListener {
  public gsq(AvisoFinalAnoActivity paramAvisoFinalAnoActivity) {}
  
  public void onClick(View paramView) {
    gst.b("Ok");
    AvisoFinalAnoActivity.b(this.a).startActivity(new Intent("android.intent.action.VIEW", Uri.parse(AvisoFinalAnoActivity.b(this.a).getString(2131296775))));
    AvisoFinalAnoActivity.c(this.a).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */