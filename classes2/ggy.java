import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

public class ggy implements ghc {
  private mip a;
  
  private Activity b;
  
  private ghk c;
  
  private ghd d;
  
  public ggy(Activity paramActivity, ghd paramghd) {
    this.b = paramActivity;
    this.d = paramghd;
    this.c = new ghk(this.b);
    this.a = (mip)miq.C();
  }
  
  private gvb a(fvw paramfvw, ggs paramggs, ggx paramggx) {
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    gky gky = new gky("Titular: ", paramfvw.g());
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky("Situação: ", paramfvw.z()));
    arrayList.add(new gky("Modalidade: ", paramfvw.k()));
    arrayList.add(new gky("Motivo: ", paramggx.a()));
    gvb.g("Comprovante - Bloqueio de Cartão");
    gvb.e("");
    gvb.f("");
    gvb.b(arrayList);
    gvb.h("");
    gvb.d(false);
    gvb.c("Bloqueio de Cartão");
    gvb.d("Não foi possível bloquear o cartão");
    gvb.e(true);
    return gvb;
  }
  
  private gvb a(ghu paramghu, ggs paramggs, ggx paramggx) {
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    if (paramggx.b() == ggw.PERDA.getId()) {
      gvb.j("shareBloqPerda");
      gky gky1 = new gky("Titular: ", paramghu.g());
      gky1.a(true);
      arrayList.add(gky1);
      arrayList.add(new gky("Situação: ", "Bloqueado"));
      arrayList.add(new gky("Modalidade: ", paramghu.k()));
      arrayList.add(new gky("Motivo: ", paramggx.a()));
      gvb.g("Comprovante - Bloqueio de Cartão");
      gvb.e(paramggs.getAutenticacao());
      gvb.f(paramggs.a() + " " + paramggs.b());
      gvb.b(arrayList);
      gvb.h("");
      gvb.d(false);
      gvb.c("Bloqueio de Cartão");
      gvb.d("Cartão Bloqueado com sucesso");
      gvb.a(this.b.getApplicationContext().getString(2131298182));
      gvb.f(false);
      gvb.h(true);
      return gvb;
    } 
    gvb.j("shareBloqRoubo");
    gky gky = new gky("Titular: ", paramghu.g());
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky("Situação: ", "Bloqueado"));
    arrayList.add(new gky("Modalidade: ", paramghu.k()));
    arrayList.add(new gky("Motivo: ", paramggx.a()));
    gvb.g("Comprovante - Bloqueio de Cartão");
    gvb.e(paramggs.getAutenticacao());
    gvb.f(paramggs.a() + " " + paramggs.b());
    gvb.b(arrayList);
    gvb.h("");
    gvb.d(false);
    gvb.c("Bloqueio de Cartão");
    gvb.d("Cartão Bloqueado com sucesso");
    gvb.a(this.b.getApplicationContext().getString(2131298182));
    gvb.f(false);
    gvb.h(true);
    return gvb;
  }
  
  private List<ghu> a(ggt paramggt) {
    ArrayList arrayList1 = paramggt.a();
    ArrayList<ghu> arrayList = new ArrayList();
    for (ggu ggu : arrayList1) {
      ghu ghu = new ghu();
      ghu.y(ggu.f());
      ghu.b(ggu.g());
      ghu.g(ggu.j());
      ghu.q(ggu.h());
      ghu.h(ggu.e());
      ghu.r(ggu.m());
      ghu.C(ggu.i());
      ghu.a(ggu.i().split("Final")[0]);
      ghu.z(ggu.g());
      arrayList.add(ghu);
    } 
    return arrayList;
  }
  
  private ghq b(ghu paramghu, ggx paramggx) {
    ghq ghq = new ghq();
    ghq.a(String.valueOf(paramggx.b()));
    ghq.b(paramghu.H());
    ghq.setConnUuid(this.a.i());
    ghq.setTokenSessao(this.a.j());
    ghq.setAgencia(mzr.e());
    ghq.setConta(mzr.f());
    ghq.setTokenTransacao(this.a.f().m());
    return ghq;
  }
  
  private ghr c() {
    ghr ghr = new ghr();
    ghr.a("04");
    ghr.setAgencia(mzr.e());
    ghr.setConta(mzr.f());
    ghr.setConnUuid(this.a.i());
    ghr.setTokenSessao(this.a.j());
    ghr.setTokenTransacao(this.a.f().m());
    return ghr;
  }
  
  public void a() {
    this.c.a(new ghb(this), c());
  }
  
  public void a(ghu paramghu, ggx paramggx) {
    this.c.a(new ggz(this, paramghu, paramggx), b(paramghu, paramggx));
  }
  
  public void b() {
    ArrayList<ggx> arrayList = new ArrayList();
    ggx ggx1 = new ggx();
    ggx1.a(ggw.SELECIONE_MOTIVO.getId());
    ggx1.a(ggw.SELECIONE_MOTIVO.getLabel());
    ggx ggx2 = new ggx();
    ggx2.a(ggw.PERDA.getId());
    ggx2.a(ggw.PERDA.getLabel());
    ggx ggx3 = new ggx();
    ggx3.a(ggw.ROUBO.getId());
    ggx3.a(ggw.ROUBO.getLabel());
    arrayList.add(ggx1);
    arrayList.add(ggx2);
    arrayList.add(ggx3);
    this.d.b(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */