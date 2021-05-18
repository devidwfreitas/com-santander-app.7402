import android.app.Activity;
import java.util.ArrayList;

public class gdr implements gbt, gdq {
  private Activity a;
  
  private gct b;
  
  private gbs c;
  
  private ArrayList<gbd> d;
  
  public gdr(gct paramgct) {
    this.a = (Activity)paramgct;
    this.b = paramgct;
    this.c = new gbu(this.a, this);
    b();
  }
  
  private boolean a(gax paramgax) {
    if (paramgax == null || paramgax.a().trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131758044));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131758044));
    if (paramgax == null || paramgax.b().trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131758046));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131758046));
    if (paramgax == null || paramgax.c().trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131758048));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131758048));
    if (paramgax == null || paramgax.e().trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131758050));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131758050));
    if (paramgax == null || paramgax.f().trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131758052));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131758052));
    if (paramgax == null || paramgax.h().trim().isEmpty()) {
      mzv.a(this.a.getResources().getString(2131296720), this.a.findViewById(2131758055));
      return false;
    } 
    mzv.a("", this.a.findViewById(2131758055));
    return true;
  }
  
  public void a() {}
  
  public void a(gax paramgax, gaq paramgaq) {
    if (a(paramgax)) {
      paramgaq.v(paramgax.a());
      paramgaq.i(paramgax.b());
      paramgaq.c(paramgax.c());
      paramgaq.n(paramgax.d());
      paramgaq.j(paramgax.e());
      paramgaq.g(paramgax.f());
      paramgaq.r(paramgax.g());
      paramgaq.o(paramgax.h());
      paramgaq.x(paramgax.i());
      this.b.a(paramgaq);
    } 
  }
  
  public void a(ArrayList<gbd> paramArrayList) {
    this.d = paramArrayList;
    this.b.a(paramArrayList);
  }
  
  public void b() {
    this.c.a();
  }
  
  public void b(ArrayList<gbd> paramArrayList) {
    this.b.b(paramArrayList);
  }
  
  public void c() {
    this.c.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */