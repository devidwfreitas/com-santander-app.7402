import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class iph extends gnb {
  @Element(required = false)
  private iov antecipacao13;
  
  @Element(required = false)
  private iov antecipacaoIR;
  
  @ElementList(required = false)
  private List<ioz> cartoes;
  
  @ElementList(required = false)
  private List<ipc> contasCorrentes;
  
  @ElementList(required = false)
  private List<ipe> emprestimosCancelaveis;
  
  @Element(required = false)
  private String hubAlive;
  
  @Element(required = false)
  private String hubCarteiraPrivate;
  
  @Element(required = false)
  private String limiteEmprestimo;
  
  @Element(required = false)
  private String msgErroAntecipacao13;
  
  @Element(required = false)
  private String msgErroAntecipacaoIR;
  
  @Element(required = false)
  private String msgErroCartoes;
  
  @Element(required = false)
  private String msgErroCartoesBloqueados;
  
  @Element(required = false)
  private String msgErroContas;
  
  @Element(required = false)
  private String msgErroEmprestimosCancelaveis;
  
  @Element(required = false)
  private String msgErroFundos;
  
  @Element(required = false)
  private String msgErroLimiteEmprestimo;
  
  @Element(required = false)
  private String msgErroPoupanca;
  
  @Element(required = false)
  private String msgErroRendaFixa;
  
  @Element(required = false)
  private String msgErroSeguros;
  
  @Element(required = false)
  private String perfilRenegociacao;
  
  @Element(required = false)
  private String saldoTotalPoupanca;
  
  @Element(required = false)
  private String saldoTotalRendaFixa;
  
  @ElementList(required = false)
  private List<ipl> segurosCancelaveis;
  
  @ElementList(required = false)
  private List<ipm> semaforos;
  
  @Element(required = false)
  private String valorTotalInvestimentos;
  
  public String a() {
    return this.valorTotalInvestimentos;
  }
  
  public void a(iov paramiov) {
    this.antecipacao13 = paramiov;
  }
  
  public void a(String paramString) {
    this.valorTotalInvestimentos = paramString;
  }
  
  public void a(List<ioz> paramList) {
    this.cartoes = paramList;
  }
  
  public iov b() {
    return this.antecipacao13;
  }
  
  public void b(iov paramiov) {
    this.antecipacaoIR = paramiov;
  }
  
  public void b(String paramString) {
    this.saldoTotalPoupanca = paramString;
  }
  
  public void b(List<ipc> paramList) {
    this.contasCorrentes = paramList;
  }
  
  public iov c() {
    return this.antecipacaoIR;
  }
  
  public void c(String paramString) {
    this.saldoTotalRendaFixa = paramString;
  }
  
  public void c(List<ipe> paramList) {
    this.emprestimosCancelaveis = paramList;
  }
  
  public List<ioz> d() {
    return this.cartoes;
  }
  
  public void d(String paramString) {
    this.limiteEmprestimo = paramString;
  }
  
  public void d(List<ipl> paramList) {
    this.segurosCancelaveis = paramList;
  }
  
  public List<ipc> e() {
    return this.contasCorrentes;
  }
  
  public void e(String paramString) {
    this.msgErroContas = paramString;
  }
  
  public void e(List<ipm> paramList) {
    this.semaforos = paramList;
  }
  
  public String f() {
    return this.saldoTotalPoupanca;
  }
  
  public void f(String paramString) {
    this.msgErroFundos = paramString;
  }
  
  public String g() {
    return this.saldoTotalRendaFixa;
  }
  
  public void g(String paramString) {
    this.msgErroLimiteEmprestimo = paramString;
  }
  
  public String h() {
    return this.limiteEmprestimo;
  }
  
  public void h(String paramString) {
    this.msgErroCartoes = paramString;
  }
  
  public List<ipe> i() {
    return this.emprestimosCancelaveis;
  }
  
  public void i(String paramString) {
    this.msgErroEmprestimosCancelaveis = paramString;
  }
  
  public List<ipl> j() {
    return this.segurosCancelaveis;
  }
  
  public void j(String paramString) {
    this.msgErroSeguros = paramString;
  }
  
  public String k() {
    return this.msgErroContas;
  }
  
  public void k(String paramString) {
    this.msgErroCartoesBloqueados = paramString;
  }
  
  public String l() {
    return this.msgErroFundos;
  }
  
  public void l(String paramString) {
    this.msgErroAntecipacao13 = paramString;
  }
  
  public String m() {
    return this.msgErroLimiteEmprestimo;
  }
  
  public void m(String paramString) {
    this.msgErroAntecipacaoIR = paramString;
  }
  
  public String n() {
    return this.msgErroCartoes;
  }
  
  public void n(String paramString) {
    this.msgErroPoupanca = paramString;
  }
  
  public String o() {
    return this.msgErroEmprestimosCancelaveis;
  }
  
  public void o(String paramString) {
    this.msgErroRendaFixa = paramString;
  }
  
  public String p() {
    return this.msgErroSeguros;
  }
  
  public void p(String paramString) {
    this.hubAlive = paramString;
  }
  
  public String q() {
    return this.msgErroCartoesBloqueados;
  }
  
  public void q(String paramString) {
    this.perfilRenegociacao = paramString;
  }
  
  public String r() {
    return this.msgErroAntecipacao13;
  }
  
  public void r(String paramString) {
    this.hubCarteiraPrivate = paramString;
  }
  
  public String s() {
    return this.msgErroAntecipacaoIR;
  }
  
  public String t() {
    return this.msgErroPoupanca;
  }
  
  public String toString() {
    return "HomeLogadaModel [contasCorrentes=" + this.contasCorrentes + ", msgErroContas=" + this.msgErroContas + ", msgErroFundos=" + this.msgErroFundos + ", cartoes=" + this.cartoes + ", msgErroCartoes=" + this.msgErroCartoes + ", limiteEmprestimo=" + this.limiteEmprestimo + ", msgErroLimiteEmprestimo=" + this.msgErroLimiteEmprestimo + ", emprestimosCancelaveis=" + this.emprestimosCancelaveis + ", msgErroEmprestimosCancelaveis=" + this.msgErroEmprestimosCancelaveis + ", segurosCancelaveis=" + this.segurosCancelaveis + ", msgErroSeguros=" + this.msgErroSeguros + ", saldoTotalPoupanca=" + this.saldoTotalPoupanca + ", msgErroPoupanca=" + this.msgErroPoupanca + ", saldoTotalRendaFixa=, msgErroRendaFixa=" + this.msgErroRendaFixa + ", msgErroCartoesBloqueados=" + this.msgErroCartoesBloqueados + ", antecipacao13=" + this.antecipacao13 + ", msgErroAntecipacao13=" + this.msgErroAntecipacao13 + ", antecipacaoIR=" + this.antecipacaoIR + ", msgErroAntecipacaoIR=" + this.msgErroAntecipacaoIR + ", valorTotalInvestimentos=" + this.valorTotalInvestimentos + "]";
  }
  
  public String u() {
    return this.msgErroRendaFixa;
  }
  
  public String v() {
    return this.hubAlive;
  }
  
  public String w() {
    return this.perfilRenegociacao;
  }
  
  public String x() {
    return this.hubCarteiraPrivate;
  }
  
  public List<ipm> y() {
    return this.semaforos;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */