import java.io.Closeable;

public class ew implements Closeable {
  private final Object a = new Object();
  
  private ex b;
  
  private Runnable c;
  
  private boolean d;
  
  ew(ex paramex, Runnable paramRunnable) {
    this.b = paramex;
    this.c = paramRunnable;
  }
  
  private void b() {
    if (this.d)
      throw new IllegalStateException("Object already closed"); 
  }
  
  void a() {
    synchronized (this.a) {
      b();
      this.c.run();
      close();
      return;
    } 
  }
  
  public void close() {
    synchronized (this.a) {
      if (this.d)
        return; 
      this.d = true;
      this.b.a(this);
      this.b = null;
      this.c = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */