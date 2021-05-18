import android.content.DialogInterface;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;

public class lrh implements DialogInterface.OnClickListener {
  public lrh(SinisterActivity paramSinisterActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */