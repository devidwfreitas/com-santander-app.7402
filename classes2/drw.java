import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public class drw extends Thread {
  private final BlockingQueue<dsa<?>> a;
  
  private final drv b;
  
  private final dpr c;
  
  private final dsh d;
  
  private volatile boolean e = false;
  
  public drw(BlockingQueue<dsa<?>> paramBlockingQueue, drv paramdrv, dpr paramdpr, dsh paramdsh) {
    this.a = paramBlockingQueue;
    this.b = paramdrv;
    this.c = paramdpr;
    this.d = paramdsh;
  }
  
  @TargetApi(14)
  private void a(dsa<?> paramdsa) {
    int i = Build.VERSION.SDK_INT;
    TrafficStats.setThreadStatsTag(paramdsa.b());
  }
  
  private void a(dsa<?> paramdsa, dsl paramdsl) {
    paramdsl = paramdsa.a(paramdsl);
    this.d.a(paramdsa, paramdsl);
  }
  
  public void a() {
    this.e = true;
    interrupt();
  }
  
  public void run() {
    Process.setThreadPriority(10);
    while (true) {
      long l = SystemClock.elapsedRealtime();
      try {
        dsa<?> dsa = this.a.take();
        try {
          dsa.b("network-queue-take");
          a(dsa);
          dry dry = this.b.a(dsa);
          dsa.b("network-http-complete");
          if (dry.d && dsa.q()) {
            dsa.c("not-modified");
            continue;
          } 
          dse<?> dse = dsa.a(dry);
          dsa.b("network-parse-complete");
          if (dsa.l() && dse.b != null) {
            this.c.a(dsa.d(), dse.b);
            dsa.b("network-cache-written");
          } 
          dsa.p();
          this.d.a(dsa, dse);
        } catch (dsl dsl) {
          dsl.a(SystemClock.elapsedRealtime() - l);
          a(dsa, dsl);
        } catch (Exception exception) {
          dsm.a(exception, "Unhandled exception %s", new Object[] { exception.toString() });
          exception = new dsl(exception);
          exception.a(SystemClock.elapsedRealtime() - l);
          this.d.a(dsa, (dsl)exception);
        } 
      } catch (InterruptedException interruptedException) {
        if (this.e)
          return; 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */