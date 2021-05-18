import android.content.Context;
import com.santander.app.MinhaConta;

public class gxb {
  private static gxb a;
  
  private miq b = miq.C();
  
  private final Context c = MinhaConta.b();
  
  private gwq d;
  
  private gxb() {
    a(gwq.formalizacao);
  }
  
  public static gxb a() {
    if (a == null)
      a = new gxb(); 
    return a;
  }
  
  public void a(gwq paramgwq) {
    this.d = paramgwq;
  }
  
  public gta b() {
    gta gta = new gta();
    gta.b(this.c.getResources().getString(2131297080));
    gta.a(gwq.formalizacao);
    gta.a((String)null);
    gta.a(2130838693);
    gta.b(2130838733);
    gta.c(2130838731);
    gta.c((String)null);
    gta.d((String)null);
    gta.e(null);
    gta.a(false);
    return gta;
  }
  
  public gwq c() {
    return this.d;
  }
  
  public boolean d() {
    return (this.b.f().z() > 0);
  }
  
  public void e() {
    if (!d())
      for (gta gta : this.b.f().w().a()) {
        if (gta.e() == this.d)
          this.b.f().w().a().remove(gta); 
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */