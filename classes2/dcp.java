import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class dcp {
  private static final ExecutorService a = Executors.newFixedThreadPool(2, new dgh("GAC_Executor"));
  
  public static ExecutorService a() {
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */