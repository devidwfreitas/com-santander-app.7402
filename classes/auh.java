import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.EventResponseData;

public class auh implements Runnable {
  public auh(ActivityHandler paramActivityHandler, EventResponseData paramEventResponseData) {}
  
  public void run() {
    if (ActivityHandler.access$2500(this.b) != null && (ActivityHandler.access$2500(this.b)).onEventTrackingSucceededListener != null) {
      (ActivityHandler.access$2500(this.b)).onEventTrackingSucceededListener.onFinishedEventTrackingSucceeded(this.a.getSuccessResponseData());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\auh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */