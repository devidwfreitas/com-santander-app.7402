import android.content.Context;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.SharedPreferencesManager;

public class avc implements Runnable {
  public avc(AdjustInstance paramAdjustInstance, Context paramContext, String paramString) {}
  
  public void run() {
    (new SharedPreferencesManager(this.a)).savePushToken(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */