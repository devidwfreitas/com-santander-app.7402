import android.support.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;

class ehq<TResult> {
  private final Object a = new Object();
  
  private Queue<ehp<TResult>> b;
  
  private boolean c;
  
  public void a(@NonNull egv<TResult> paramegv) {
    synchronized (this.a) {
      if (this.b == null || this.c)
        return; 
      this.c = true;
      while (true) {
        ehp<TResult> ehp;
        synchronized (this.a) {
          ehp = this.b.poll();
          if (ehp == null) {
            this.c = false;
            return;
          } 
        } 
        ehp.a(paramegv);
      } 
    } 
  }
  
  public void a(@NonNull ehp<TResult> paramehp) {
    synchronized (this.a) {
      if (this.b == null)
        this.b = new ArrayDeque<ehp<TResult>>(); 
      this.b.add(paramehp);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */