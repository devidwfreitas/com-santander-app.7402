import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.IRunActivityHandler;

public class auw implements IRunActivityHandler {
  public auw(AdjustInstance paramAdjustInstance, String paramString1, String paramString2) {}
  
  public void run(ActivityHandler paramActivityHandler) {
    paramActivityHandler.addSessionPartnerParameterI(this.a, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\auw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */