import android.os.Handler;
import android.os.HandlerThread;

class feo {
  private static final String a = feo.class.getSimpleName();
  
  private static feo b;
  
  private Handler c;
  
  private HandlerThread d;
  
  private int e = 0;
  
  private final Object f = new Object();
  
  public static feo a() {
    if (b == null)
      b = new feo(); 
    return b;
  }
  
  private void c() {
    synchronized (this.f) {
      if (this.c == null) {
        if (this.e <= 0)
          throw new IllegalStateException("CameraThread is not open"); 
        this.d = new HandlerThread("CameraThread");
        this.d.start();
        this.c = new Handler(this.d.getLooper());
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
  
  private void d() {
    synchronized (this.f) {
      this.d.quit();
      this.d = null;
      this.c = null;
      return;
    } 
  }
  
  protected void a(Runnable paramRunnable) {
    synchronized (this.f) {
      c();
      this.c.post(paramRunnable);
      return;
    } 
  }
  
  protected void a(Runnable paramRunnable, long paramLong) {
    synchronized (this.f) {
      c();
      this.c.postDelayed(paramRunnable, paramLong);
      return;
    } 
  }
  
  protected void b() {
    synchronized (this.f) {
      this.e--;
      if (this.e == 0)
        d(); 
      return;
    } 
  }
  
  protected void b(Runnable paramRunnable) {
    synchronized (this.f) {
      this.e++;
      a(paramRunnable);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\feo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */