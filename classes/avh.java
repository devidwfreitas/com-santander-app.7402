import com.adjust.sdk.AttributionHandler;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.SdkClickResponseData;

public class avh implements Runnable {
  public avh(AttributionHandler paramAttributionHandler, SdkClickResponseData paramSdkClickResponseData) {}
  
  public void run() {
    IActivityHandler iActivityHandler = AttributionHandler.access$100(this.b).get();
    if (iActivityHandler == null)
      return; 
    AttributionHandler.access$300(this.b, iActivityHandler, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */