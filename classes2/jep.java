import android.app.Activity;
import java.util.ArrayList;

public class jep implements jen {
  private static final int c = 0;
  
  private static final int d = 1;
  
  private Activity a;
  
  private mip b;
  
  private jiy e;
  
  private final String f = "https://www.santander.com.br/portal/pam/script/cvm/CvmAction.do?pdf=pdfLamina&canal=03&codFundo=";
  
  private jeo g;
  
  private jdx h;
  
  public jep(Activity paramActivity, jeo paramjeo) {
    this.a = paramActivity;
    this.g = paramjeo;
    this.b = (mip)miq.C();
    this.e = new jiz(paramActivity);
  }
  
  private gvb a(jdi paramjdi) {
    gky gky3;
    String str3;
    gky gky2;
    String str2;
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    String str5 = "";
    String str4 = "";
    arrayList.add(new gky("Fundo: ", this.h.M()));
    switch (jex.a[this.h.t().ordinal()]) {
      default:
        gvb.b(arrayList);
        gvb.c(this.a.getString(2131297925));
        gvb.d(str4);
        gvb.f(nak.a(paramjdi.getDataHoraTransacao(), "yyyy-MM-dd hh:mm:ss", "dd/MM/yyyy hh:mm:ss"));
        gvb.e(paramjdi.getAutenticacao());
        gvb.j(str5);
        gvb.g("Comprovante - " + gvb.j());
        return gvb;
      case 2:
        arrayList.add(new gky("Conta Fundo: ", "Nova"));
        arrayList.add(new gky("Transação: ", this.a.getString(2131297509)));
        arrayList.add(new gky("Valor Aplicado: ", naj.f(paramjdi.g())));
        arrayList.add(new gky("Data Aplicação: ", nak.a(paramjdi.e(), "ddMMyyyy", "dd/MM/yyyy")));
        gky3 = new gky("Conversão em Cotas: ", this.h.ac());
        gky3.a(true);
        arrayList.add(gky3);
        str5 = "fundAplCompShare";
        str3 = this.a.getString(2131297507);
      case 1:
        arrayList.add(new gky("Conta Fundo: ", this.h.c()));
        if (this.h.c().equalsIgnoreCase("nova")) {
          arrayList.add(new gky("Transação: ", this.a.getString(2131297509)));
        } else {
          arrayList.add(new gky("Transação: ", this.a.getString(2131297508)));
        } 
        arrayList.add(new gky("Valor Aplicado: ", naj.f(paramjdi.g())));
        arrayList.add(new gky("Data Aplicação: ", nak.a(paramjdi.e(), "ddMMyyyy", "dd/MM/yyyy")));
        gky2 = new gky("Conversão em Cotas: ", this.h.ac());
        gky2.a(true);
        arrayList.add(gky2);
        str5 = "fundReaCompShare";
        str2 = this.a.getString(2131297507);
      case 3:
        break;
    } 
    arrayList.add(new gky("Conta Fundo: ", paramjdi.d()));
    arrayList.add(new gky("Transação: ", this.h.f()));
    arrayList.add(new gky("Valor Resgatado: ", naj.f(paramjdi.g())));
    arrayList.add(new gky("Data Resgate: ", nak.a(paramjdi.e(), "ddMMyyyy", "dd/MM/yyyy")));
    arrayList.add(new gky("Crédito em Conta: ", nak.a(paramjdi.a(), "ddMMyyyy", "dd/MM/yyyy")));
    gky gky1 = new gky("Conversão em Cotas: ", this.h.aa());
    gky1.a(true);
    arrayList.add(gky1);
    str5 = "fundResCompShare";
    if (this.h.j())
      String str = this.a.getString(2131297511); 
    String str1 = this.a.getString(2131297510);
  }
  
  private void a(jdi paramjdi, int paramInt) {
    mzp mzp1 = mzp.RELOAD_CONTA;
    mzp mzp2 = mzp.RELOAD_INVESTIMENTO;
    mzn mzn = new mzn();
    jew jew = new jew(this, paramInt, paramjdi);
    mzn.a(new mzp[] { mzp1, mzp2 }, jew);
  }
  
  private gvb b(jdi paramjdi) {
    gvb gvb = new gvb();
    gvb.c(this.a.getString(2131297925));
    gvb.d(this.a.getString(2131297506));
    gvb.e("");
    gvb.f("");
    gvb.e(true);
    gvb.d(false);
    gvb.b(paramjdi.getMensagemErro());
    return gvb;
  }
  
  private String b(String paramString) {
    return "https://www.santander.com.br/portal/pam/script/cvm/CvmAction.do?pdf=pdfLamina&canal=03&codFundo=" + paramString;
  }
  
  private jek b(jdx paramjdx) {
    jek jek = new jek();
    jek.d(paramjdx.y().substring(1, paramjdx.y().length()));
    jek.setAgencia(paramjdx.Z());
    jek.e(paramjdx.i());
    jek.setAgencia(this.b.f().f());
    jek.a("0033");
    jek.e(this.b.f().g());
    jek.g("35");
    jek.setConnUuid(this.b.i());
    jek.setTokenSessao(this.b.j());
    jek.setTokenTransacao(this.b.f().m());
    return jek;
  }
  
  private jdj e(jdx paramjdx, boolean paramBoolean) {
    jdj jdj = new jdj();
    jdj.setConnUuid(this.b.i());
    jdj.setTokenSessao(this.b.j());
    jdj.setTokenTransacao(this.b.f().m());
    jdj.setAgencia(paramjdx.Z());
    jdj.setConta(paramjdx.n());
    jdj.a(paramjdx.j());
    if (paramjdx.j())
      jdj.a(nak.a(paramjdx.m(), "dd/MM/yyyy", "ddMMyyyy")); 
    switch (jex.a[paramjdx.t().ordinal()]) {
      default:
        jdj.b(paramjdx.y().substring(1, paramjdx.y().length()));
        jdj.c(paramBoolean);
        jdj.e(naj.l(paramjdx.l()));
        return jdj;
      case 1:
        jdj.b(false);
        jdj.d("REAPLICACAO");
        if (paramjdx.c().equalsIgnoreCase("nova"))
          jdj.c("000000000"); 
        jdj.c(paramjdx.c());
      case 2:
        jdj.b(true);
        jdj.d("APLICACAO");
      case 3:
        break;
    } 
    jdj.b(false);
    jdj.c(paramjdx.c());
    if (paramjdx.f().equalsIgnoreCase(this.a.getString(2131297995)))
      jdj.d("RESGATE_TOTAL"); 
    jdj.d("RESGATE_PARCIAL");
  }
  
  public void a(String paramString) {
    this.e.a(new jeu(this, paramString), b(paramString));
  }
  
  public void a(jdx paramjdx) {
    this.e.a(new jev(this), b(paramjdx));
  }
  
  public void a(jdx paramjdx, boolean paramBoolean) {
    this.h = paramjdx;
    this.e.a(new jeq(this), e(paramjdx, paramBoolean));
  }
  
  public void b(jdx paramjdx, boolean paramBoolean) {
    this.e.a(new jer(this), e(paramjdx, paramBoolean));
  }
  
  public void c(jdx paramjdx, boolean paramBoolean) {
    this.h = paramjdx;
    this.e.b(new jes(this), e(paramjdx, paramBoolean));
  }
  
  public void d(jdx paramjdx, boolean paramBoolean) {
    this.e.b(new jet(this), e(paramjdx, paramBoolean));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */