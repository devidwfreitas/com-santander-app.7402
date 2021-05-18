import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.CustomScheduledExecutor;

public class avn implements Runnable {
  private Runnable b;
  
  public avn(CustomScheduledExecutor paramCustomScheduledExecutor, Runnable paramRunnable) {
    this.b = paramRunnable;
  }
  
  public void run() {
    try {
      this.b.run();
      return;
    } catch (Throwable throwable) {
      AdjustFactory.getLogger().error("Runnable error %s", new Object[] { throwable.getMessage() });
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */