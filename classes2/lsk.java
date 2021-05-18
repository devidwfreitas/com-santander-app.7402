import android.util.Log;
import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;

public class lsk implements gkw<is> {
  public lsk(SinisterDocumentsActivity paramSinisterDocumentsActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      Log.e("UPDATE-STATUS", "ok");
      return;
    } 
    Log.e("UPDATE-STATUS", "ERROR");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */