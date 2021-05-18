import android.support.annotation.NonNull;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

final class ehc implements ehd {
  private final CountDownLatch a = new CountDownLatch(1);
  
  private ehc() {}
  
  public void a() {
    this.a.await();
  }
  
  public void a(@NonNull Exception paramException) {
    this.a.countDown();
  }
  
  public void a(Object paramObject) {
    this.a.countDown();
  }
  
  public boolean a(long paramLong, TimeUnit paramTimeUnit) {
    return this.a.await(paramLong, paramTimeUnit);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */