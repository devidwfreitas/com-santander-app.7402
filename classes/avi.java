import com.adjust.sdk.AttributionHandler;
import com.adjust.sdk.AttributionResponseData;
import com.adjust.sdk.IActivityHandler;

public class avi implements Runnable {
  public avi(AttributionHandler paramAttributionHandler, AttributionResponseData paramAttributionResponseData) {}
  
  public void run() {
    IActivityHandler iActivityHandler = AttributionHandler.access$100(this.b).get();
    if (iActivityHandler == null)
      return; 
    AttributionHandler.access$400(this.b, iActivityHandler, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */