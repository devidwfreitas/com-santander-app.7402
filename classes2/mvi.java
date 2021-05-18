import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class mvi implements mrv, mrw, mvh {
  private static final int a = 1;
  
  private static final int b = 2;
  
  @Nullable
  private muk c;
  
  private msc d;
  
  private boolean e;
  
  private boolean f;
  
  private int g;
  
  public mvi(@NonNull muk parammuk) {
    this.c = parammuk;
    this.d = mse.l();
  }
  
  private void b(String paramString) {
    if (this.c == null)
      return; 
    this.c.p();
    this.d.a(paramString, new mvj(this));
  }
  
  private void i() {
    if (this.c == null)
      return; 
    this.d.a(this);
    this.d.h();
    this.c.f();
  }
  
  public void a() {
    if (this.c != null)
      this.c.g(); 
  }
  
  public void a(Bundle paramBundle) {
    if (this.c == null)
      return; 
    this.e = paramBundle.getBoolean("EXTRA_USE_FINGERPRINT", false);
    this.c.c();
    b((String)null);
  }
  
  public void a(Exception paramException) {
    if (this.c == null)
      return; 
    this.c.d();
    this.c.a(paramException.getMessage(), true);
  }
  
  public void a(String paramString) {
    if (this.c == null)
      return; 
    this.f = true;
    this.c.c();
    this.d.a(paramString, this);
  }
  
  public void a(String paramString1, String paramString2) {
    if (this.c == null)
      return; 
    if (this.g == 1) {
      b(paramString1.replaceAll("[^0-9]+", ""));
      return;
    } 
    this.c.c();
    this.d.a(paramString2, this);
  }
  
  public void b() {
    if (this.c == null)
      return; 
    this.d.i();
    this.c.j();
  }
  
  public void b(Exception paramException) {
    if (this.c == null)
      return; 
    this.c.d();
    if (this.f) {
      this.f = false;
      this.c.i();
      return;
    } 
    this.c.a(paramException.getMessage(), false);
  }
  
  public void c() {
    if (this.c == null)
      return; 
    this.c.d();
    this.d.i();
    this.c.k();
  }
  
  public void d() {
    this.d.i();
    this.c = null;
  }
  
  public void e() {
    if (this.c == null)
      return; 
    this.c.h();
  }
  
  public void f() {
    if (this.c == null)
      return; 
    this.d.i();
    this.c.g();
  }
  
  public void g() {
    if (this.c == null)
      return; 
    this.g = 1;
    this.c.g();
    this.c.o();
    this.c.l();
  }
  
  public void h() {
    if (this.c == null)
      return; 
    this.g = 2;
    this.c.n();
    this.c.m();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mvi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */