import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

public final class cpp implements cqg {
  private final Status a;
  
  private final cpy<?>[] b;
  
  cpp(Status paramStatus, cpy<?>[] paramArrayOfcpy) {
    this.a = paramStatus;
    this.b = paramArrayOfcpy;
  }
  
  public Status a() {
    return this.a;
  }
  
  public <R extends cqg> R a(cpq<R> paramcpq) {
    if (paramcpq.a < this.b.length) {
      boolean bool1 = true;
      csp.b(bool1, "The result token does not belong to this batch");
      return (R)this.b[paramcpq.a].a(0L, TimeUnit.MILLISECONDS);
    } 
    boolean bool = false;
    csp.b(bool, "The result token does not belong to this batch");
    return (R)this.b[paramcpq.a].a(0L, TimeUnit.MILLISECONDS);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */