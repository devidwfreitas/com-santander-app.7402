import com.adjust.sdk.AttributionHandler;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.SessionResponseData;

public class avg implements Runnable {
  public avg(AttributionHandler paramAttributionHandler, SessionResponseData paramSessionResponseData) {}
  
  public void run() {
    IActivityHandler iActivityHandler = AttributionHandler.access$100(this.b).get();
    if (iActivityHandler == null)
      return; 
    AttributionHandler.access$200(this.b, iActivityHandler, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */