import android.app.Activity;

public class gdj implements gbg, gdi {
  private final Activity a;
  
  private gcd b;
  
  private gbf c;
  
  public gdj(gcd paramgcd) {
    this.b = paramgcd;
    this.a = (Activity)paramgcd;
    this.c = new gbh(this, this.a);
  }
  
  public void a() {
    if (this.b != null)
      this.b.a(); 
  }
  
  public void a(gaq paramgaq) {
    if (this.c != null)
      this.c.a(paramgaq); 
  }
  
  public void a(gvb paramgvb) {
    if (this.b != null)
      this.b.a(paramgvb); 
  }
  
  public void b(gaq paramgaq) {
    paramgaq = paramgaq.a();
    paramgaq.q(naq.c(paramgaq.g(), paramgaq.r()));
    paramgaq.s(paramgaq.t());
    paramgaq.t(paramgaq.u());
    if (paramgaq.J().equalsIgnoreCase("JPY")) {
      paramgaq.A(paramgaq.J() + " " + paramgaq.B());
    } else {
      paramgaq.A(paramgaq.J() + " " + naj.o(paramgaq.B()));
    } 
    paramgaq.B(naj.f(paramgaq.C()));
    paramgaq.D(naj.f(paramgaq.E()));
    paramgaq.G(naj.f(paramgaq.H()));
    paramgaq.H(naj.a(paramgaq.I(), false));
    paramgaq.C(naj.f(paramgaq.D()));
    paramgaq.E(naj.f(paramgaq.F()));
    paramgaq.F(naj.a(paramgaq.G(), true));
    this.b.a(paramgaq);
  }
  
  public void b(gvb paramgvb) {
    if (this.b != null)
      this.b.a(paramgvb); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */