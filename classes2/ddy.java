import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

public class ddy<R extends cqg> extends cpy<R> {
  private final Status a;
  
  public ddy(Status paramStatus) {
    boolean bool;
    csp.a(paramStatus, "Status must not be null");
    if (!paramStatus.e()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "Status must not be success");
    this.a = paramStatus;
  }
  
  @NonNull
  public R a(long paramLong, @NonNull TimeUnit paramTimeUnit) {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  @NonNull
  public <S extends cqg> cqk<S> a(@NonNull cqj<? super R, ? extends S> paramcqj) {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  public void a() {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  public void a(@NonNull cpz paramcpz) {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  public void a(@NonNull cqh<? super R> paramcqh) {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  public void a(@NonNull cqh<? super R> paramcqh, long paramLong, @NonNull TimeUnit paramTimeUnit) {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  @NonNull
  Status b() {
    return this.a;
  }
  
  @NonNull
  public R d() {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  public boolean e() {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
  
  @Nullable
  public Integer f() {
    throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */