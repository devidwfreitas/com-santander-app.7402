import java.util.concurrent.CancellationException;

final class fk implements Runnable {
  fk(ev paramev, fw paramfw, fa paramfa, fd paramfd) {}
  
  public void run() {
    if (this.a != null && this.a.a()) {
      this.b.c();
      return;
    } 
    try {
      fd fd1 = (fd)this.c.b(this.d);
      if (fd1 == null) {
        this.b.b((Object)null);
        return;
      } 
      fd1.a(new fl(this));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */