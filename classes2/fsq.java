import android.app.Activity;

public class fsq implements fsj, fsr {
  private static final String a = "AvaliacaoAppPresenter";
  
  private Activity b;
  
  private fsi c;
  
  private fsp d;
  
  private fso e;
  
  public fsq(fsp paramfsp) {
    this.b = (Activity)paramfsp;
    this.d = paramfsp;
    this.c = new fsh(this.b, this);
    f();
  }
  
  public void a() {
    this.d.a();
  }
  
  public void a(String paramString) {
    this.d.a(paramString);
  }
  
  public void b() {
    this.d.b();
  }
  
  public void c() {
    this.c.b();
  }
  
  public void d() {
    this.c.c();
  }
  
  public void e() {
    this.c.d();
  }
  
  public void f() {
    this.c.a();
  }
  
  public void g() {
    this.d.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */