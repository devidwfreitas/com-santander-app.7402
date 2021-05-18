import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.concurrent.TimeUnit;

public abstract class cpy<R extends cqg> {
  @NonNull
  public abstract R a(long paramLong, @NonNull TimeUnit paramTimeUnit);
  
  @NonNull
  public <S extends cqg> cqk<S> a(@NonNull cqj<? super R, ? extends S> paramcqj) {
    throw new UnsupportedOperationException();
  }
  
  public abstract void a();
  
  public void a(@NonNull cpz paramcpz) {
    throw new UnsupportedOperationException();
  }
  
  public abstract void a(@NonNull cqh<? super R> paramcqh);
  
  public abstract void a(@NonNull cqh<? super R> paramcqh, long paramLong, @NonNull TimeUnit paramTimeUnit);
  
  @NonNull
  public abstract R d();
  
  public abstract boolean e();
  
  @Nullable
  public Integer f() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */