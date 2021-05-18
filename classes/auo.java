import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.AdjustEvent;

public class auo implements Runnable {
  public auo(ActivityHandler paramActivityHandler, AdjustEvent paramAdjustEvent) {}
  
  public void run() {
    if (ActivityHandler.access$900(this.b) == null) {
      ActivityHandler.access$400(this.b).warn("Event tracked before first activity resumed.\nIf it was triggered in the Application class, it might timestamp or even send an install long before the user opens the app.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information.", new Object[0]);
      ActivityHandler.access$500(this.b);
    } 
    ActivityHandler.access$1000(this.b, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\auo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */