import android.content.Intent;
import android.net.Uri;
import com.adjust.sdk.ActivityHandler;

public class aun implements Runnable {
  public aun(ActivityHandler paramActivityHandler, Uri paramUri, Intent paramIntent) {}
  
  public void run() {
    if (ActivityHandler.access$2500(this.c) != null) {
      boolean bool = true;
      if ((ActivityHandler.access$2500(this.c)).onDeeplinkResponseListener != null)
        bool = (ActivityHandler.access$2500(this.c)).onDeeplinkResponseListener.launchReceivedDeeplink(this.a); 
      if (bool) {
        ActivityHandler.access$2700(this.c, this.b, this.a);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */