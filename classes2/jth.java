import android.app.Activity;
import android.content.Context;
import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;
import com.santander.app.common.OSGModel;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONObject;

public class jth implements jtf {
  private mip a;
  
  private jwi b;
  
  private jtg c;
  
  private jsr d;
  
  private jsv e;
  
  private Activity f;
  
  private DynamicAuthCallBack g;
  
  public jth(Activity paramActivity, jtg paramjtg) {
    this.b = new jwj(paramActivity);
    this.c = paramjtg;
    this.a = (mip)miq.C();
    this.f = paramActivity;
  }
  
  private gvb a(jsu paramjsu) {
    boolean bool;
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    (new fsg()).a((Context)this.f);
    gky gky = new gky("", this.d.g());
    gky.a(true);
    arrayList.add(gky);
    for (gku gku : paramjsu.f())
      arrayList.add(new gky(gku.b(), gku.c())); 
    String str2 = this.d.d();
    if (this.d.i().equalsIgnoreCase("S") && str2 != null && !str2.isEmpty())
      gvb.m(this.f.getString(2131298328).replace("R$-", "R$ " + this.d.j())); 
    if (this.d.n() != null && this.d.n().equalsIgnoreCase("S")) {
      bool = true;
    } else {
      bool = false;
    } 
    gvb.f(bool);
    gvb.k("Cadastro em Débito Automático");
    gvb.a(CadastrarDebitoAutomaticoActivity.class);
    gvb.b(arrayList);
    gvb.c(this.f.getString(2131298956));
    gvb.a(gvu.COMPROVANTE_PAGAMENTO);
    gvb.f(paramjsu.getDataHoraTransacao());
    gvb.e(paramjsu.getAutenticacao());
    if (this.d.a().equalsIgnoreCase("N")) {
      gvb.d(this.f.getString(2131298326));
    } else {
      gvb.d(this.f.getString(2131298324));
    } 
    gvb.g("Comprovante - " + gvb.j());
    if (String.valueOf(this.d.e().charAt(0)).equals("8")) {
      String str = "cons";
      gvb.i("telaPagOK.end." + str);
      gvb.l("pagTitComproDebAuto." + str);
      gvb.j("pagTitShare." + str);
      gvb.n("pagTitComprFecha." + str);
      gvb.n(true);
      a(gvb);
      return gvb;
    } 
    String str1 = "dem";
    gvb.i("telaPagOK.end." + str1);
    gvb.l("pagTitComproDebAuto." + str1);
    gvb.j("pagTitShare." + str1);
    gvb.n("pagTitComprFecha." + str1);
    gvb.n(true);
    a(gvb);
    return gvb;
  }
  
  private iq a(DynamicAuthResponse paramDynamicAuthResponse) {
    String str1;
    String str3 = mwz.a();
    String str2 = "";
    jta jta = new jta();
    if (str3 != null && !str3.isEmpty())
      jta.b(str3); 
    jta.a((new mzk(this.f)).a());
    jta.c(String.valueOf(paramDynamicAuthResponse.getData()));
    try {
      JSONObject jSONObject = new JSONObject(mys.b().b(jta));
      str1 = nab.a().b(jSONObject.toString());
    } catch (Exception exception) {
      str1 = str2;
    } 
    return gnz.a().a("payment/v1/confirmPayment", im.POST, str1, true);
  }
  
  private void a() {
    mzz.a((Context)this.f, OSGModel.getOSGParametersModel(this.d.t()), this.g);
  }
  
  private void a(gvb paramgvb) {
    frq.d("Pagamentos_Pagamento_DataDeVencimento", nak.l(this.d.q()));
    frq.d("Pagamentos_Pagamento_DataDePagamento", paramgvb.l());
    frq.a("Pagamentos_Pagamento_ValorDePagamento", Double.parseDouble(this.d.k().replace(".", "").replace(",", ".")));
    if (this.d.h().contains("YA"))
      frq.d("Pagamentos_Pagamento_TipoDoPagamento", "Arrecadacao"); 
    if (this.d.h().contains("VT"))
      frq.d("Pagamentos_Pagamento_TipoDoPagamento", "OutrosBancos"); 
    if (this.d.h().contains("YK"))
      frq.d("Pagamentos_Pagamento_TipoDoPagamento", "Santander"); 
    frq.d("Pagamentos_Pagamento_ReferOper", paramgvb.k());
  }
  
  private gvb b(jsu paramjsu) {
    gvb gvb = new gvb();
    gvb.c(this.f.getString(2131298956));
    gvb.d(this.f.getString(2131298325));
    gvb.e("");
    gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.i("telaPagNOK.end");
    gvb.e(true);
    gvb.d(false);
    if (paramjsu != null) {
      String str1 = paramjsu.getMensagemErro();
      gvb.b(str1);
      return gvb;
    } 
    String str = this.f.getString(2131298325);
    gvb.b(str);
    return gvb;
  }
  
  private void b() {
    jsu jsu = new jsu();
    jsu.a(this.d.m());
    jsu.setMensagemErro(this.d.getMensagemErro());
    jsu.setMsgErro(this.d.getMsgErro());
    this.c.b(b(jsu));
  }
  
  private jsv c() {
    this.e = new jsv();
    if (this.d.d() != null) {
      this.e.d(this.d.d());
      this.e.setConta(this.a.f().g());
      this.e.setAgencia(this.a.f().f());
      this.e.c(this.d.l());
      this.e.e(this.d.h());
      this.e.f(this.d.k());
      this.e.g(nak.u(this.d.s()));
      this.e.b(nak.u(this.d.q()));
      this.e.h(this.d.a());
      this.e.a(this.d.e());
      this.e.setConnUuid(this.a.i());
      this.e.setTokenSessao(this.a.j());
      this.e.setTokenTransacao(this.a.f().m());
      return this.e;
    } 
    this.e.setConta(this.d.b());
    this.e.setAgencia(this.d.c());
    this.e.c(this.d.l());
    this.e.e(this.d.h());
    this.e.f(this.d.k());
    this.e.g(nak.u(this.d.s()));
    this.e.b(nak.u(this.d.q()));
    this.e.h(this.d.a());
    this.e.a(this.d.e());
    this.e.setConnUuid(this.a.i());
    this.e.setTokenSessao(this.a.j());
    this.e.setTokenTransacao(this.a.f().m());
    return this.e;
  }
  
  public void a(jsr paramjsr) {
    this.d = paramjsr;
    if (!miq.C().w() || !miq.C().f().C().b("00000121")) {
      this.e = c();
      this.b.a(new jti(this), this.e);
      return;
    } 
    this.g = new jtk(this);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */