import android.content.Context;
import android.os.Handler;
import android.view.SurfaceHolder;

public class fec {
  private static final String a = fec.class.getSimpleName();
  
  private feo b;
  
  private fen c;
  
  private fej d;
  
  private Handler e;
  
  private feq f;
  
  private boolean g = false;
  
  private fel h = new fel();
  
  private Runnable i = new fef(this);
  
  private Runnable j = new feg(this);
  
  private Runnable k = new feh(this);
  
  private Runnable l = new fei(this);
  
  public fec(Context paramContext) {
    fdw.a();
    this.b = feo.a();
    this.d = new fej(paramContext);
    this.d.a(this.h);
  }
  
  public fec(fej paramfej) {
    fdw.a();
    this.d = paramfej;
  }
  
  private void a(Exception paramException) {
    if (this.e != null)
      this.e.obtainMessage(erz.zxing_camera_error, paramException).sendToTarget(); 
  }
  
  private fdu l() {
    return this.d.i();
  }
  
  private void m() {
    if (!this.g)
      throw new IllegalStateException("CameraInstance is not open"); 
  }
  
  public feq a() {
    return this.f;
  }
  
  public void a(Handler paramHandler) {
    this.e = paramHandler;
  }
  
  public void a(SurfaceHolder paramSurfaceHolder) {
    a(new fen(paramSurfaceHolder));
  }
  
  public void a(fel paramfel) {
    if (!this.g) {
      this.h = paramfel;
      this.d.a(paramfel);
    } 
  }
  
  public void a(fen paramfen) {
    this.c = paramfen;
  }
  
  public void a(feq paramfeq) {
    this.f = paramfeq;
    this.d.a(paramfeq);
  }
  
  public void a(fev paramfev) {
    m();
    this.b.a(new fee(this, paramfev));
  }
  
  public void a(boolean paramBoolean) {
    fdw.a();
    if (this.g)
      this.b.a(new fed(this, paramBoolean)); 
  }
  
  public fel b() {
    return this.h;
  }
  
  public int c() {
    return this.d.f();
  }
  
  public void close() {
    fdw.a();
    if (this.g)
      this.b.a(this.l); 
    this.g = false;
  }
  
  public void d() {
    fdw.a();
    this.g = true;
    this.b.b(this.i);
  }
  
  public void e() {
    fdw.a();
    m();
    this.b.a(this.j);
  }
  
  public void f() {
    fdw.a();
    m();
    this.b.a(this.k);
  }
  
  public boolean g() {
    return this.g;
  }
  
  protected fej h() {
    return this.d;
  }
  
  protected feo i() {
    return this.b;
  }
  
  protected fen j() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */