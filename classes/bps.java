import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

public class bps<T> {
  private T a;
  
  private CountDownLatch b;
  
  public bps(T paramT) {
    this.a = paramT;
  }
  
  public bps(Callable<T> paramCallable) {
    this.b = new CountDownLatch(1);
    bhv.f().execute(new FutureTask(new bpt(this, paramCallable)));
  }
  
  private void b() {
    if (this.b == null)
      return; 
    try {
      this.b.await();
      return;
    } catch (InterruptedException interruptedException) {
      return;
    } 
  }
  
  public T a() {
    b();
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */