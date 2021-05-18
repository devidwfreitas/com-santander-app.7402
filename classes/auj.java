import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.EventResponseData;

public class auj implements Runnable {
  public auj(ActivityHandler paramActivityHandler, EventResponseData paramEventResponseData) {}
  
  public void run() {
    if (ActivityHandler.access$2500(this.b) != null && (ActivityHandler.access$2500(this.b)).onEventTrackingFailedListener != null) {
      (ActivityHandler.access$2500(this.b)).onEventTrackingFailedListener.onFinishedEventTrackingFailed(this.a.getFailureResponseData());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\auj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */