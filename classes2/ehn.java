import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class ehn<TResult> implements ehp<TResult> {
  private final Executor a;
  
  private final Object b = new Object();
  
  private egt<? super TResult> c;
  
  public ehn(@NonNull Executor paramExecutor, @NonNull egt<? super TResult> paramegt) {
    this.a = paramExecutor;
    this.c = paramegt;
  }
  
  public void a() {
    synchronized (this.b) {
      this.c = null;
      return;
    } 
  }
  
  public void a(@NonNull egv<TResult> paramegv) {
    if (paramegv.b())
      synchronized (this.b) {
        if (this.c == null)
          return; 
        this.a.execute(new eho(this, paramegv));
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */