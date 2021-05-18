import android.app.Activity;

public class gbq implements gbo {
  private Activity a;
  
  private gbp b;
  
  private mip c;
  
  private gdt d;
  
  private gaw e;
  
  public gbq(Activity paramActivity, gbp paramgbp) {
    this.a = paramActivity;
    this.b = paramgbp;
    this.c = (mip)miq.C();
    this.d = new gdt(paramActivity);
  }
  
  private void c() {
    for (int i = 0; i < this.e.f().size(); i++) {
      if (((gbb)this.e.f().get(i)).f() != null && !((gbb)this.e.f().get(i)).f().isEmpty())
        ((gbb)this.e.f().get(i)).a(true); 
    } 
  }
  
  private void d() {
    gav gav = new gav();
    gav.a(true);
    gav.a(this.a.getResources().getString(2131296758));
    this.e.e().add(gav);
  }
  
  private gau e() {
    gau gau = new gau();
    gau.setConnUuid(this.c.i());
    gau.setTokenSessao(this.c.j());
    gau.setTokenTransacao(this.c.f().m());
    return gau;
  }
  
  public void a() {
    this.d.a(new gbr(this), e());
  }
  
  public void b() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */