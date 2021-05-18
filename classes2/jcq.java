import android.app.Activity;

public class jcq implements jcl, jcp {
  private jco a;
  
  private jck b;
  
  private Activity c;
  
  private String d;
  
  private mip e;
  
  public jcq(jco paramjco) {
    this.a = paramjco;
    this.c = (Activity)paramjco;
    this.b = new jcm(this, this.c);
    this.e = (mip)miq.C();
  }
  
  public String a() {
    return this.d;
  }
  
  public void a(String paramString) {
    this.b.a(paramString);
  }
  
  public void a(jcg paramjcg) {
    this.a.e();
    if (paramjcg.getConfirmacao() != null && paramjcg.getConfirmacao().equalsIgnoreCase("OK")) {
      c(paramjcg);
      this.a.a(paramjcg.h(), paramjcg.a());
    } 
  }
  
  public void b() {
    this.a.d();
    jcv jcv = new jcv();
    jcv.e(a());
    this.b.a(jcv);
  }
  
  public void b(jcg paramjcg) {
    this.a.e();
    this.e.c(true);
    if (paramjcg != null && !paramjcg.getConfirmacao().equalsIgnoreCase("OK")) {
      this.a.b(paramjcg.getMensagemErro());
      return;
    } 
    this.a.c();
  }
  
  public void c(jcg paramjcg) {
    this.e.b(paramjcg.b());
    this.e.f().g(paramjcg.g());
    this.e.f().h(paramjcg.f());
    this.e.f().a(Boolean.valueOf(false));
    this.e.c(true);
    this.e.a(mzr.a());
    iow iow = paramjcg.e();
    this.e.f().a(iow);
    this.e.f().v();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */