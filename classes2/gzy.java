import android.util.Log;

public class gzy {
  private gkw a;
  
  private mip b;
  
  public gzy(gkw paramgkw) {
    this.a = paramgkw;
    this.b = (mip)miq.C();
  }
  
  public void a() {
    nay nay = new nay();
    nay.setConnUuid(this.b.i());
    nay.setTokenSessao(this.b.j());
    nay.setTokenTransacao(this.b.f().m());
    (new neo(new haa(this))).c((Object[])new nay[] { nay });
  }
  
  public void a(String paramString) {
    gzv gzv = new gzv();
    gzv.setConnUuid(this.b.i());
    gzv.setTokenSessao(this.b.j());
    gzv.setTokenTransacao(this.b.f().m());
    gzv.a(paramString);
    gzv.b("");
    gzv.c("");
    gzv.d("");
    gzv.e("");
    (new hap(new gzz(this))).c((Object[])new gzv[] { gzv });
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    gzv gzv = new gzv();
    gzv.setConnUuid(this.b.i());
    gzv.setTokenSessao(this.b.j());
    gzv.setTokenTransacao(this.b.f().m());
    gzv.a(paramString1);
    naf naf = new naf();
    try {
      gzv.b(naf.b(paramString2.getBytes("UTF-8")));
      gzv.c(naf.b(paramString3.getBytes("UTF-8")));
      gzv.d(naf.b(paramString4.getBytes("UTF-8")));
      gzv.e(naf.b(paramString5.getBytes("UTF-8")));
    } catch (Exception exception) {
      Log.e("ERRO_CRYPTO", exception.getMessage());
    } 
    (new hal(new haf(this))).c((Object[])new gzv[] { gzv });
  }
  
  public void b(String paramString) {
    gzv gzv = new gzv();
    gzv.setConnUuid(this.b.i());
    gzv.setTokenSessao(this.b.j());
    gzv.setTokenTransacao(this.b.f().m());
    gzv.a(paramString);
    gzv.b("");
    gzv.c("");
    gzv.d("");
    gzv.e("");
    (new haq(new hab(this))).c((Object[])new gzv[] { gzv });
  }
  
  public void c(String paramString) {
    gzq gzq = new gzq();
    gzq.setConnUuid(this.b.i());
    gzq.setTokenSessao(this.b.j());
    gzq.setTokenTransacao(this.b.f().m());
    gzq.a(paramString);
    (new hak(new hac(this))).c((Object[])new gzq[] { gzq });
  }
  
  public void d(String paramString) {
    gzv gzv = new gzv();
    gzv.setConnUuid(this.b.i());
    gzv.setTokenSessao(this.b.j());
    gzv.setTokenTransacao(this.b.f().m());
    gzv.a(paramString);
    gzv.b("");
    gzv.c("");
    gzv.d("");
    gzv.e("");
    (new han(new had(this))).c((Object[])new gzv[] { gzv });
  }
  
  public void e(String paramString) {
    gzv gzv = new gzv();
    gzv.setConnUuid(this.b.i());
    gzv.setTokenSessao(this.b.j());
    gzv.setTokenTransacao(this.b.f().m());
    gzv.a(paramString);
    gzv.b("");
    gzv.c("");
    gzv.d("");
    gzv.e("");
    (new hao(new hae(this))).c((Object[])new gzv[] { gzv });
  }
  
  public void f(String paramString) {
    gzv gzv = new gzv();
    gzv.setConnUuid(this.b.i());
    gzv.setTokenSessao(this.b.j());
    gzv.setTokenTransacao(this.b.f().m());
    gzv.a(paramString);
    gzv.b("");
    gzv.c("");
    gzv.d("");
    gzv.e("");
    (new ham(new hag(this))).c((Object[])new gzv[] { gzv });
  }
  
  public void g(String paramString) {
    gzq gzq = new gzq();
    gzq.setConnUuid(this.b.i());
    gzq.setTokenSessao(this.b.j());
    gzq.setTokenTransacao(this.b.f().m());
    gzq.a(paramString);
    (new haj(new hah(this))).c((Object[])new gzq[] { gzq });
  }
  
  public void h(String paramString) {
    gzx gzx = new gzx();
    gzx.setConnUuid(this.b.i());
    gzx.setTokenSessao(this.b.j());
    gzx.setTokenTransacao(this.b.f().m());
    gzx.a(paramString);
    (new har(new hai(this))).c((Object[])new gzx[] { gzx });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gzy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */