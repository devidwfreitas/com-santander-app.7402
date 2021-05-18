import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.IRunActivityHandler;

public class ava implements IRunActivityHandler {
  public ava(AdjustInstance paramAdjustInstance) {}
  
  public void run(ActivityHandler paramActivityHandler) {
    paramActivityHandler.resetSessionPartnerParametersI();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ava.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */