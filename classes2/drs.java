import android.os.Handler;
import java.util.concurrent.Executor;

public class drs implements dsh {
  private final Executor a;
  
  public drs(Handler paramHandler) {
    this.a = new drt(this, paramHandler);
  }
  
  public void a(dsa<?> paramdsa, dse<?> paramdse) {
    a(paramdsa, paramdse, null);
  }
  
  public void a(dsa<?> paramdsa, dse<?> paramdse, Runnable paramRunnable) {
    paramdsa.p();
    paramdsa.b("post-response");
    this.a.execute(new dru(this, paramdsa, paramdse, paramRunnable));
  }
  
  public void a(dsa<?> paramdsa, dsl paramdsl) {
    paramdsa.b("post-error");
    dse<?> dse = dse.a(paramdsl);
    this.a.execute(new dru(this, paramdsa, dse, null));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */