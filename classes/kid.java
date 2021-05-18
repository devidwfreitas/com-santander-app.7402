import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kid implements Serializable {
  public String a;
  
  @Element(required = false)
  public String agenciaDebito = "";
  
  @Element(required = false)
  public String agendamento = "";
  
  @Element(required = false)
  public String areaCelular = "";
  
  @Element(required = false)
  public String connUuid = "";
  
  @Element(required = false)
  public String contaDebito = "";
  
  @Element(required = false)
  public String dataAgendamentoUnico = "";
  
  @Element(required = false)
  public String dataCadastroAgend = "";
  
  @Element(required = false)
  public String dataContabil = "";
  
  @Element(required = false)
  public String dataFim = "";
  
  @Element(required = false)
  private String dataHash = null;
  
  @Element(required = false)
  public String dataInicio = "";
  
  @Element(required = false)
  public String excluirMantendoProximaRecarga = "";
  
  @Element(required = false)
  public String horaCadastroAgend = "";
  
  @Element(required = false)
  public String mensagemAea = "";
  
  @Element(required = false)
  public String numCelular = "";
  
  @Element(required = false)
  public String numProtocoloAgend = "";
  
  @Element(required = false)
  public String numeroAutenticacao = "";
  
  @Element(required = false)
  public String numeroOperacao = "";
  
  @Element(required = false)
  public String operadoraAgencia = "";
  
  @Element(required = false)
  public String operadoraBanco = "";
  
  @Element(required = false)
  public String operadoraConta = "";
  
  @Element(required = false)
  public String periodo = "";
  
  @Element(required = false)
  public String periodoIndeterminado = "";
  
  @Element(required = false)
  public String produto = "";
  
  @Element(required = false)
  private String requestId = null;
  
  @Element(required = false)
  public String subProduto = "";
  
  @Element(required = false)
  public String tipoContaDebito = "";
  
  @Element(required = false)
  public String tokenSessao = "";
  
  @Element(required = false)
  public String tokenTransacao = "";
  
  @Element(required = false)
  public String valorRecarga = "";
  
  public String A() {
    return this.periodoIndeterminado;
  }
  
  public void A(String paramString) {
    this.tokenSessao = paramString;
  }
  
  public String B() {
    return this.periodo;
  }
  
  public void B(String paramString) {
    this.tokenTransacao = paramString;
  }
  
  public String C() {
    return this.operadoraConta;
  }
  
  public void C(String paramString) {
    this.valorRecarga = paramString;
  }
  
  public String D() {
    return (this.numCelular != null && this.numCelular.substring(0, 1).equals("0")) ? this.numCelular.substring(1, this.numCelular.length()) : this.numCelular;
  }
  
  public void D(String paramString) {
    this.dataHash = paramString;
  }
  
  public void E(String paramString) {
    this.requestId = paramString;
  }
  
  public String a() {
    return this.agenciaDebito;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.agenciaDebito = paramString;
  }
  
  public String c() {
    return this.agendamento;
  }
  
  public void c(String paramString) {
    this.agendamento = paramString;
  }
  
  public String d() {
    return this.areaCelular;
  }
  
  public void d(String paramString) {
    this.areaCelular = paramString;
  }
  
  public String e() {
    return this.connUuid;
  }
  
  public void e(String paramString) {
    this.connUuid = paramString;
  }
  
  public String f() {
    return this.contaDebito;
  }
  
  public void f(String paramString) {
    this.contaDebito = paramString;
  }
  
  public String g() {
    return this.dataAgendamentoUnico;
  }
  
  public void g(String paramString) {
    this.dataAgendamentoUnico = paramString;
  }
  
  public String h() {
    return this.dataCadastroAgend;
  }
  
  public void h(String paramString) {
    this.dataCadastroAgend = paramString;
  }
  
  public String i() {
    return this.dataContabil;
  }
  
  public void i(String paramString) {
    this.dataContabil = paramString;
  }
  
  public String j() {
    return this.dataFim;
  }
  
  public void j(String paramString) {
    this.dataFim = paramString;
  }
  
  public String k() {
    return this.dataInicio;
  }
  
  public void k(String paramString) {
    this.dataInicio = paramString;
  }
  
  public String l() {
    return this.excluirMantendoProximaRecarga;
  }
  
  public void l(String paramString) {
    this.excluirMantendoProximaRecarga = paramString;
  }
  
  public String m() {
    return this.horaCadastroAgend;
  }
  
  public void m(String paramString) {
    this.horaCadastroAgend = paramString;
  }
  
  public String n() {
    return this.mensagemAea;
  }
  
  public void n(String paramString) {
    this.mensagemAea = paramString;
  }
  
  public String o() {
    return this.numCelular;
  }
  
  public void o(String paramString) {
    this.numCelular = paramString;
  }
  
  public String p() {
    return this.numeroAutenticacao;
  }
  
  public void p(String paramString) {
    this.numeroAutenticacao = paramString;
  }
  
  public String q() {
    return this.numProtocoloAgend;
  }
  
  public void q(String paramString) {
    this.numeroOperacao = paramString;
  }
  
  public String r() {
    return this.numeroOperacao;
  }
  
  public void r(String paramString) {
    this.numProtocoloAgend = paramString;
  }
  
  public String s() {
    return this.operadoraAgencia;
  }
  
  public void s(String paramString) {
    this.operadoraAgencia = paramString;
  }
  
  public String t() {
    return this.operadoraBanco;
  }
  
  public void t(String paramString) {
    this.operadoraBanco = paramString;
  }
  
  public String u() {
    return this.valorRecarga;
  }
  
  public void u(String paramString) {
    this.operadoraConta = paramString;
  }
  
  public String v() {
    return this.tokenTransacao;
  }
  
  public void v(String paramString) {
    this.periodo = paramString;
  }
  
  public String w() {
    return this.tokenSessao;
  }
  
  public void w(String paramString) {
    this.periodoIndeterminado = paramString;
  }
  
  public String x() {
    return this.tipoContaDebito;
  }
  
  public void x(String paramString) {
    this.produto = paramString;
  }
  
  public String y() {
    return this.subProduto;
  }
  
  public void y(String paramString) {
    this.subProduto = paramString;
  }
  
  public String z() {
    return this.produto;
  }
  
  public void z(String paramString) {
    this.tipoContaDebito = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */