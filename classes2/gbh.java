import android.app.Activity;
import java.util.ArrayList;

public class gbh implements gbf {
  private Activity a;
  
  private gds b;
  
  private mip c;
  
  private gbg d;
  
  public gbh(gbg paramgbg, Activity paramActivity) {
    this.d = paramgbg;
    this.b = new gdt();
    this.c = (mip)miq.C();
    this.a = paramActivity;
  }
  
  private gvb a() {
    return a(this.a.getString(2131297343));
  }
  
  private gvb a(gar paramgar) {
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    for (gku gku : paramgar.a()) {
      gky gky = new gky(gku.b(), gku.c());
      if (gku.b().length() > 30)
        gky.a(true); 
      arrayList.add(gky);
    } 
    gvb.b(arrayList);
    gvb.c(this.a.getString(2131298940));
    gvb.d(this.a.getString(2131296769));
    gvb.m(paramgar.b());
    gvb.f(paramgar.getDataHoraTransacao());
    gvb.e(paramgar.getAutenticacao());
    gvb.a(paramgar.c());
    gvb.j("cambCompShare");
    gvb.a(gvu.COMPROVANTE_CAMBIO);
    gvb.g("Comprovante - " + gvb.j());
    gvb.q(true);
    return gvb;
  }
  
  private gvb a(String paramString) {
    gvb gvb = new gvb();
    gvb.c(this.a.getString(2131298940));
    gvb.d(this.a.getString(2131296768));
    gvb.e("");
    gvb.f("");
    gvb.e(true);
    gvb.d(false);
    gvb.b(paramString);
    gvb.q(true);
    return gvb;
  }
  
  private gaq b(gaq paramgaq) {
    String str = null;
    try {
      paramgaq.c(null);
      paramgaq.d(null);
      paramgaq.a(null);
      paramgaq.b(null);
      String str1 = str;
      if (paramgaq.f() != null) {
        str1 = str;
        if (!paramgaq.f().isEmpty())
          str1 = naj.m(paramgaq.f()); 
      } 
      paramgaq.e(str1);
      paramgaq.z((new naf()).b(naj.J(paramgaq.A()).getBytes("UTF-8")));
      paramgaq.u(this.c.f().k());
      paramgaq.w(this.c.f().j());
      paramgaq.setConnUuid(this.c.i());
      paramgaq.setTokenSessao(this.c.j());
      paramgaq.setTokenTransacao(this.c.f().m());
      return paramgaq;
    } catch (Exception exception) {
      hav.c(this.a, "Erro ao criptografar campo de telefone");
      return paramgaq;
    } 
  }
  
  private gvb b(gar paramgar) {
    return a(paramgar.getMensagemErro());
  }
  
  public void a(gaq paramgaq) {
    if (this.b != null)
      this.b.a(new gbi(this), b(paramgaq)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gbh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */