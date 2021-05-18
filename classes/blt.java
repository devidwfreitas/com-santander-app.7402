import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class blt {
  private static final String a = blt.class.getCanonicalName();
  
  private static final String b = "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method";
  
  private static final long c = 1000L;
  
  private static final ScheduledExecutorService d = Executors.newSingleThreadScheduledExecutor();
  
  private static volatile ScheduledFuture e;
  
  private static AtomicInteger f = new AtomicInteger(0);
  
  private static volatile bmd g;
  
  private static AtomicBoolean h = new AtomicBoolean(false);
  
  private static String i;
  
  private static long j;
  
  public static void a(Activity paramActivity) {
    long l = System.currentTimeMillis();
    blv blv = new blv(paramActivity.getApplicationContext(), bqq.d((Context)paramActivity), l, bmh.a(paramActivity));
    d.execute(blv);
  }
  
  public static void a(Application paramApplication, String paramString) {
    if (!h.compareAndSet(false, true))
      return; 
    i = paramString;
    paramApplication.registerActivityLifecycleCallbacks(new blu());
  }
  
  public static boolean a() {
    return h.get();
  }
  
  public static UUID b() {
    return (g != null) ? g.h() : null;
  }
  
  public static void b(Activity paramActivity) {
    f.incrementAndGet();
    j();
    long l = System.currentTimeMillis();
    j = l;
    blw blw = new blw(l, paramActivity.getApplicationContext(), bqq.d((Context)paramActivity));
    d.execute(blw);
  }
  
  private static void d(Activity paramActivity) {
    if (f.decrementAndGet() < 0) {
      f.set(0);
      Log.w(a, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
    } 
    j();
    blx blx = new blx(System.currentTimeMillis(), paramActivity.getApplicationContext(), bqq.d((Context)paramActivity));
    d.execute(blx);
  }
  
  private static int i() {
    boj boj = bol.a(bhv.l());
    return (boj == null) ? bmb.a() : boj.e();
  }
  
  private static void j() {
    if (e != null)
      e.cancel(false); 
    e = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */