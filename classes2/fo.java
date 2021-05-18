import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;

final class fo implements Runnable {
  fo(ev paramev, fw paramfw, Callable paramCallable) {}
  
  public void run() {
    if (this.a != null && this.a.a()) {
      this.b.c();
      return;
    } 
    try {
      this.b.b(this.c.call());
      return;
    } catch (CancellationException cancellationException) {
      this.b.c();
      return;
    } catch (Exception exception) {
      this.b.b(exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */