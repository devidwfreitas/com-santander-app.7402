import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class ehj<TResult> implements ehp<TResult> {
  private final Executor a;
  
  private final Object b = new Object();
  
  private egr<TResult> c;
  
  public ehj(@NonNull Executor paramExecutor, @NonNull egr<TResult> paramegr) {
    this.a = paramExecutor;
    this.c = paramegr;
  }
  
  public void a() {
    synchronized (this.b) {
      this.c = null;
      return;
    } 
  }
  
  public void a(@NonNull egv<TResult> paramegv) {
    synchronized (this.b) {
      if (this.c == null)
        return; 
      this.a.execute(new ehk(this, paramegv));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */