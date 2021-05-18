import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.AdjustInstance;
import com.adjust.sdk.IRunActivityHandler;

public class auz implements IRunActivityHandler {
  public auz(AdjustInstance paramAdjustInstance) {}
  
  public void run(ActivityHandler paramActivityHandler) {
    paramActivityHandler.resetSessionCallbackParametersI();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\auz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */