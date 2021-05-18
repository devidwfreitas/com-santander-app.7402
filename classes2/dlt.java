import android.support.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class dlt<V> extends FutureTask<V> implements Comparable<dlt> {
  private final long b;
  
  private final boolean c;
  
  private final String d;
  
  dlt(dlq paramdlq, Runnable paramRunnable, boolean paramBoolean, String paramString) {
    super(paramRunnable, null);
    csp.a(paramString);
    this.b = dlq.A().getAndIncrement();
    this.d = paramString;
    this.c = paramBoolean;
    if (this.b == Long.MAX_VALUE)
      paramdlq.u().x().a("Tasks index overflow"); 
  }
  
  dlt(dlq paramdlq, Callable<V> paramCallable, boolean paramBoolean, String paramString) {
    super(paramCallable);
    csp.a(paramString);
    this.b = dlq.A().getAndIncrement();
    this.d = paramString;
    this.c = paramBoolean;
    if (this.b == Long.MAX_VALUE)
      paramdlq.u().x().a("Tasks index overflow"); 
  }
  
  public int a(@NonNull dlt paramdlt) {
    if (this.c != paramdlt.c)
      return !this.c ? 1 : -1; 
    if (this.b >= paramdlt.b) {
      if (this.b > paramdlt.b)
        return 1; 
      this.a.u().y().a("Two tasks share the same index. index", Long.valueOf(this.b));
      return 0;
    } 
    return -1;
  }
  
  protected void setException(Throwable paramThrowable) {
    this.a.u().x().a(this.d, paramThrowable);
    if (paramThrowable instanceof dlr)
      Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), paramThrowable); 
    super.setException(paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */