import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.List;

public class hmt implements hln, hlo, hms {
  @Nullable
  private hmn a;
  
  private hlm b;
  
  private hxl c;
  
  private boolean d;
  
  private hya e;
  
  public hmt(@NonNull hmn paramhmn) {
    this.a = paramhmn;
    this.b = new hlp();
    this.e = hyb.j();
  }
  
  public void a() {
    if (this.a == null)
      return; 
    this.a.c(this.c);
    this.a.a();
  }
  
  public void a(hxl paramhxl) {
    if (this.a == null)
      return; 
    this.a.d(paramhxl);
    hnj.a(paramhxl.a());
    hnj.a(paramhxl);
    hnj.a(paramhxl.y());
  }
  
  public void a(List<hxl> paramList) {
    if (this.a == null)
      return; 
    this.a.f();
    this.a.a(paramList);
    this.a.d();
    this.d = true;
  }
  
  public void b() {
    if (this.a == null)
      return; 
    this.a.c(this.c);
    this.a.a();
  }
  
  public void b(hxl paramhxl) {
    if (this.a == null)
      return; 
    hnj.e();
    this.c = paramhxl;
    if (paramhxl.e()) {
      this.a.e(paramhxl);
      return;
    } 
    this.a.a(paramhxl);
  }
  
  public void c() {
    if (this.a == null)
      return; 
    this.a.b();
    this.a.e();
    this.a.d();
    this.d = true;
  }
  
  public void d() {
    if (this.a == null)
      return; 
    this.a.c();
    this.a.f();
    this.b.a(this);
  }
  
  public void e() {
    if (this.a != null && this.d) {
      this.a.c();
      this.a.b();
      this.a.f();
      this.b.a(this);
      return;
    } 
  }
  
  public void f() {
    this.a = null;
  }
  
  public void g() {
    if (this.a == null)
      return; 
    this.a.c();
    this.e.a(3, new hmu(this));
  }
  
  public void h() {
    if (this.a == null || this.c == null)
      return; 
    this.a.c();
    this.b.a(this.c, this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */