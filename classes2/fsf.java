import android.widget.Toast;
import com.santander.app.analytics.util.TriggerService;

public class fsf implements Runnable {
  public fsf(TriggerService paramTriggerService, String paramString) {}
  
  public void run() {
    Toast.makeText(TriggerService.b(this.b), "occurrence: " + TriggerService.a() + "°\n" + this.a, 1).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */