import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.SessionResponseData;

public class aul implements Runnable {
  public aul(ActivityHandler paramActivityHandler, SessionResponseData paramSessionResponseData) {}
  
  public void run() {
    if (ActivityHandler.access$2500(this.b) != null && (ActivityHandler.access$2500(this.b)).onSessionTrackingFailedListener != null) {
      (ActivityHandler.access$2500(this.b)).onSessionTrackingFailedListener.onFinishedSessionTrackingFailed(this.a.getFailureResponseData());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aul.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */