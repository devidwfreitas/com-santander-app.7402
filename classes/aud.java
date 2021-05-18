import com.adjust.sdk.ActivityHandler;
import com.adjust.sdk.IRunActivityHandler;

public class aud implements IRunActivityHandler {
  public aud(ActivityHandler paramActivityHandler) {}
  
  public void run(ActivityHandler paramActivityHandler) {
    ActivityHandler.access$1100(paramActivityHandler, (ActivityHandler.access$2500(this.a)).startEnabled.booleanValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */