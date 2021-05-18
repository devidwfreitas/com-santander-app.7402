import java.util.concurrent.CancellationException;

final class fj implements Runnable {
  fj(ev paramev, fw paramfw, fa paramfa, fd paramfd) {}
  
  public void run() {
    if (this.a != null && this.a.a()) {
      this.b.c();
      return;
    } 
    try {
      Object object = this.c.b(this.d);
      this.b.b(object);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */