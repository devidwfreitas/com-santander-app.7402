import android.support.annotation.NonNull;
import com.santander.app.contacorrente.domain.SaldoDetalhado;
import java.io.Serializable;

public class jxa extends fvu implements SaldoDetalhado, Serializable {
  private static final long a = 1L;
  
  private String A;
  
  private String B;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  private String j;
  
  private String k;
  
  private String l;
  
  private String m;
  
  private String n;
  
  private String o;
  
  private String p;
  
  private String q;
  
  private String r;
  
  private String s;
  
  private String t;
  
  private String u;
  
  private String v;
  
  private String w;
  
  private String x;
  
  private String y;
  
  private String z;
  
  public jxa() {}
  
  public jxa(@NonNull String paramString) {
    A(paramString);
  }
  
  private String B(String paramString) {
    if (paramString != null) {
      String str = paramString;
      return paramString.trim().isEmpty() ? "0" : str;
    } 
    return "0";
  }
  
  public void A(String paramString) {
    this.u = paramString;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public void e(String paramString) {
    this.f = paramString;
  }
  
  public void f(String paramString) {
    this.g = paramString;
  }
  
  public void g(String paramString) {
    this.h = paramString;
  }
  
  public String getCpmfAcumulado() {
    return B(this.A);
  }
  
  public String getCpmfProvisionadaSobreSaldo() {
    return this.B;
  }
  
  public String getDesbloqueio1Dia() {
    return B(this.v);
  }
  
  public String getDesbloqueio2Dias() {
    return B(this.w);
  }
  
  public String getDesbloqueioMais2Dias() {
    return B(this.x);
  }
  
  public String getIofAcumuladosAteData() {
    return B(this.z);
  }
  
  public String getJurosAcumuladosAteData() {
    return B(this.y);
  }
  
  public String getLancamentosProvisionadosCredito() {
    return B(this.f);
  }
  
  public String getLancamentosProvisionadosDebito() {
    return B(this.g);
  }
  
  public String getLimiteDescricao1() {
    return this.o;
  }
  
  public String getLimiteDescricao2() {
    return this.q;
  }
  
  public String getLimiteValor1() {
    return B(this.p);
  }
  
  public String getLimiteValor2() {
    return B(this.r);
  }
  
  public String getMensagemErro() {
    return this.t;
  }
  
  public String getMensagemRetorno() {
    return this.u;
  }
  
  public String getProvisaoEncargos() {
    return B(this.k);
  }
  
  public String getSaldoBloqueado() {
    return B(this.i);
  }
  
  public String getSaldoBloqueadoJudicial() {
    return B(this.j);
  }
  
  public String getSaldoBloqueioDia() {
    return B(this.e);
  }
  
  public String getSaldoContaCorrenteContaMax() {
    return B(this.d);
  }
  
  public String getSaldoDisponivel() {
    return B(this.n);
  }
  
  public String getSaldoDisponivelContaCorrenteContaMax() {
    return B(this.l);
  }
  
  public String getSaldoDisponivelTotal() {
    return B(this.s);
  }
  
  public String getSaldoFundosComResgateAutomatico() {
    return B(this.m);
  }
  
  public String getSaldoTotalContaCorrenteContaMax() {
    return this.h;
  }
  
  public void h(String paramString) {
    this.i = paramString;
  }
  
  public void i(String paramString) {
    this.j = paramString;
  }
  
  public void j(String paramString) {
    this.k = paramString;
  }
  
  public void k(String paramString) {
    this.l = paramString;
  }
  
  public void l(String paramString) {
    this.m = paramString;
  }
  
  public void m(String paramString) {
    this.n = paramString;
  }
  
  public void n(String paramString) {
    this.o = paramString;
  }
  
  public void o(String paramString) {
    this.p = paramString;
  }
  
  public void p(String paramString) {
    this.q = paramString;
  }
  
  public void q(String paramString) {
    this.r = paramString;
  }
  
  public void r(String paramString) {
    this.s = paramString;
  }
  
  public void s(String paramString) {
    this.t = paramString;
  }
  
  public void t(String paramString) {
    this.v = paramString;
  }
  
  public void u(String paramString) {
    this.w = paramString;
  }
  
  public void v(String paramString) {
    this.y = paramString;
  }
  
  public void w(String paramString) {
    this.z = paramString;
  }
  
  public void x(String paramString) {
    this.A = paramString;
  }
  
  public void y(String paramString) {
    this.B = paramString;
  }
  
  public void z(String paramString) {
    this.x = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */