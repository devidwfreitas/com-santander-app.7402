import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.CustomScheduledExecutor;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

public class avm implements RejectedExecutionHandler {
  public avm(CustomScheduledExecutor paramCustomScheduledExecutor, String paramString) {}
  
  public void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor) {
    AdjustFactory.getLogger().warn("Runnable %s rejected from %s ", new Object[] { paramRunnable.toString(), this.a });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\avm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */