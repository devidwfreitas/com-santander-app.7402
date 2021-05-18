import android.os.Process;
import java.util.concurrent.BlockingQueue;

public class drl extends Thread {
  private static final boolean a = dsm.b;
  
  private final BlockingQueue<dsa<?>> b;
  
  private final BlockingQueue<dsa<?>> c;
  
  private final dpr d;
  
  private final dsh e;
  
  private volatile boolean f = false;
  
  public drl(BlockingQueue<dsa<?>> paramBlockingQueue1, BlockingQueue<dsa<?>> paramBlockingQueue2, dpr paramdpr, dsh paramdsh) {
    this.b = paramBlockingQueue1;
    this.c = paramBlockingQueue2;
    this.d = paramdpr;
    this.e = paramdsh;
  }
  
  public void a() {
    this.f = true;
    interrupt();
  }
  
  public void run() {
    if (a)
      dsm.a("start new dispatcher", new Object[0]); 
    Process.setThreadPriority(10);
    this.d.a();
    while (true) {
      dps dps;
      try {
        dsa<?> dsa = this.b.take();
        dsa.b("cache-queue-take");
        dps = this.d.a(dsa.d());
        if (dps == null) {
          dsa.b("cache-miss");
          this.c.put(dsa);
          continue;
        } 
      } catch (InterruptedException interruptedException) {
        if (this.f)
          return; 
        continue;
      } 
      if (dps.a()) {
        interruptedException.b("cache-hit-expired");
        interruptedException.a(dps);
        this.c.put(interruptedException);
        continue;
      } 
      interruptedException.b("cache-hit");
      dse<?> dse = interruptedException.a(new dry(dps.a, dps.g));
      interruptedException.b("cache-hit-parsed");
      if (!dps.b()) {
        this.e.a((dsa<?>)interruptedException, dse);
        continue;
      } 
      interruptedException.b("cache-hit-refresh-needed");
      interruptedException.a(dps);
      dse.d = true;
      this.e.a((dsa<?>)interruptedException, dse, new drm(this, (dsa)interruptedException));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */