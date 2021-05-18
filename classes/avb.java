import android.content.Context;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.SharedPreferencesManager;

public class avb implements Runnable {
  public avb(AdjustInstance paramAdjustInstance, Context paramContext, String paramString, long paramLong) {}
  
  public void run() {
    (new SharedPreferencesManager(this.a)).saveRawReferrer(this.b, this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */