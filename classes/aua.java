import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.SharedPreferencesManager;

public class aua implements Runnable {
  public aua(ActivityHandler paramActivityHandler, boolean paramBoolean, String paramString) {}
  
  public void run() {
    if (!this.a)
      (new SharedPreferencesManager(this.c.getContext())).savePushToken(this.b); 
    if (ActivityHandler.access$900(this.c) == null)
      return; 
    ActivityHandler.access$2200(this.c, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */