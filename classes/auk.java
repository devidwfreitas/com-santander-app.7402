import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.SessionResponseData;

public class auk implements Runnable {
  public auk(ActivityHandler paramActivityHandler, SessionResponseData paramSessionResponseData) {}
  
  public void run() {
    if (ActivityHandler.access$2500(this.b) != null && (ActivityHandler.access$2500(this.b)).onSessionTrackingSucceededListener != null) {
      (ActivityHandler.access$2500(this.b)).onSessionTrackingSucceededListener.onFinishedSessionTrackingSucceeded(this.a.getSuccessResponseData());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\auk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */