import android.content.Context;
import android.content.SharedPreferences;
import com.santander.app.MinhaConta;

public abstract class gyc {
  protected final Context a = MinhaConta.b();
  
  protected SharedPreferences b;
  
  private mip c = (mip)miq.C();
  
  private String d;
  
  private gwq e;
  
  private String a(String paramString) {
    return nag.b(paramString);
  }
  
  private String h() {
    return nag.a(this.c.f().k());
  }
  
  private void i() {
    gta gta = k();
    if (gta != null)
      this.c.f().w().a().remove(gta); 
  }
  
  private void j() {
    if (k() == null)
      this.c.f().w().a().add(g()); 
  }
  
  private gta k() {
    for (gta gta : this.c.f().w().a()) {
      if (gta.e() == this.e)
        return gta; 
    } 
    return null;
  }
  
  public void a() {
    this.b.edit().remove(this.d).apply();
  }
  
  public void a(gwq paramgwq) {
    this.e = paramgwq;
  }
  
  public void a(String paramString1, String paramString2) {
    this.d = paramString2;
    this.b = this.a.getSharedPreferences(paramString1, 0);
  }
  
  public void b() {
    this.b.edit().putString(this.d, h()).apply();
  }
  
  public void c() {
    if (!f())
      i(); 
  }
  
  public void d() {
    if (f()) {
      j();
      return;
    } 
    c();
  }
  
  public boolean e() {
    if (f()) {
      i();
      return true;
    } 
    return false;
  }
  
  public boolean f() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.b.contains(this.d)) {
      bool1 = bool2;
      if (a(this.b.getString(this.d, "")).equals(this.c.f().k()))
        bool1 = true; 
    } 
    return bool1;
  }
  
  public abstract gta g();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */