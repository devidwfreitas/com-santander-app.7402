import android.support.annotation.NonNull;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

class czb implements ThreadFactory {
  private final AtomicInteger a = new AtomicInteger(1);
  
  czb(cza paramcza) {}
  
  public Thread newThread(@NonNull Runnable paramRunnable) {
    int i = this.a.getAndIncrement();
    paramRunnable = new Thread(paramRunnable, (new StringBuilder(20)).append("gcm-task#").append(i).toString());
    paramRunnable.setPriority(4);
    return (Thread)paramRunnable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */