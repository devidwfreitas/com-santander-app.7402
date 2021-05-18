import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class ehh<TResult, TContinuationResult> implements egs, egt<TContinuationResult>, ehp<TResult> {
  private final Executor a;
  
  private final egq<TResult, egv<TContinuationResult>> b;
  
  private final ehr<TContinuationResult> c;
  
  public ehh(@NonNull Executor paramExecutor, @NonNull egq<TResult, egv<TContinuationResult>> paramegq, @NonNull ehr<TContinuationResult> paramehr) {
    this.a = paramExecutor;
    this.b = paramegq;
    this.c = paramehr;
  }
  
  public void a() {
    throw new UnsupportedOperationException();
  }
  
  public void a(@NonNull egv<TResult> paramegv) {
    this.a.execute(new ehi(this, paramegv));
  }
  
  public void a(@NonNull Exception paramException) {
    this.c.a(paramException);
  }
  
  public void a(TContinuationResult paramTContinuationResult) {
    this.c.a(paramTContinuationResult);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */