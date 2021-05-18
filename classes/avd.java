import android.content.Context;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.SharedPreferencesManager;

public class avd implements Runnable {
  public avd(AdjustInstance paramAdjustInstance, Context paramContext) {}
  
  public void run() {
    (new SharedPreferencesManager(this.a)).setSendingReferrersAsNotSent();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */