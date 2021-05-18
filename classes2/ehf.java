import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class ehf<TResult, TContinuationResult> implements ehp<TResult> {
  private final Executor a;
  
  private final egq<TResult, TContinuationResult> b;
  
  private final ehr<TContinuationResult> c;
  
  public ehf(@NonNull Executor paramExecutor, @NonNull egq<TResult, TContinuationResult> paramegq, @NonNull ehr<TContinuationResult> paramehr) {
    this.a = paramExecutor;
    this.b = paramegq;
    this.c = paramehr;
  }
  
  public void a() {
    throw new UnsupportedOperationException();
  }
  
  public void a(@NonNull egv<TResult> paramegv) {
    this.a.execute(new ehg(this, paramegv));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */