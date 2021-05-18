import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.SdkClickHandler;

public class awa implements Runnable {
  public awa(SdkClickHandler paramSdkClickHandler, ActivityPackage paramActivityPackage) {}
  
  public void run() {
    SdkClickHandler.access$000(this.b).add(this.a);
    SdkClickHandler.access$100(this.b).debug("Added sdk_click %d", new Object[] { Integer.valueOf(SdkClickHandler.access$000(this.b).size()) });
    SdkClickHandler.access$100(this.b).verbose("%s", new Object[] { this.a.getExtendedString() });
    SdkClickHandler.access$200(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */