import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gaq extends goe implements Serializable, Cloneable {
  private String a;
  
  @Element(required = false)
  private String agenciaDebito;
  
  @Element(required = false)
  private String agenciaDestino;
  
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String bancoDestino;
  
  @Element(required = false)
  private String cidadeDestino;
  
  @Element(required = false)
  private String codigoMoeda;
  
  @Element(required = false)
  private String codigoMoedaLocal;
  
  @Element(required = false)
  private String codigoNatureza;
  
  @Element(required = false)
  private String codigoPais;
  
  @Element(required = false)
  private String codigoSwift;
  
  @Element(required = false)
  private String codigoTaxaMoeda;
  
  @Element(required = false)
  private String contaDebito;
  
  @Element(required = false)
  private String contaDestino;
  
  @Element(required = false)
  private String dataDebito;
  
  @Element(required = false)
  private String dataEnvio;
  
  @Element(required = false)
  private String descricaoMotivo;
  
  @Element(required = false)
  private String documentoCliente;
  
  @Element(required = false)
  private String moedaEstrangeira;
  
  @Element(required = false)
  private String moedaSantander;
  
  @Element(required = false)
  private String nomeBeneficiario;
  
  @Element(required = false)
  private String nomeCliente;
  
  @Element(required = false)
  private String nomePais;
  
  @Element(required = false)
  private String observacao;
  
  @Element(required = false)
  private String segmentoCliente;
  
  @Element(required = false)
  private String telefone;
  
  @Element(required = false)
  private String valor;
  
  @Element(required = false)
  private String valorCorrespondente;
  
  @Element(required = false)
  private String valorIR;
  
  @Element(required = false)
  private String valorIof;
  
  @Element(required = false)
  private String valorRespostaMotivo;
  
  @Element(required = false)
  private String valorTarifaContrato;
  
  @Element(required = false)
  private String valorTaxaCambial;
  
  @Element(required = false)
  private String valorTotal;
  
  @Element(required = false)
  private String valorVET;
  
  public String A() {
    return this.telefone;
  }
  
  public void A(String paramString) {
    this.valor = paramString;
  }
  
  public String B() {
    return this.valor;
  }
  
  public void B(String paramString) {
    this.valorCorrespondente = paramString;
  }
  
  public String C() {
    return this.valorCorrespondente;
  }
  
  public void C(String paramString) {
    this.valorIR = paramString;
  }
  
  public String D() {
    return this.valorIR;
  }
  
  public void D(String paramString) {
    this.valorIof = paramString;
  }
  
  public String E() {
    return this.valorIof;
  }
  
  public void E(String paramString) {
    this.valorTarifaContrato = paramString;
  }
  
  public String F() {
    return this.valorTarifaContrato;
  }
  
  public void F(String paramString) {
    this.valorTaxaCambial = paramString;
  }
  
  public String G() {
    return this.valorTaxaCambial;
  }
  
  public void G(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String H() {
    return this.valorTotal;
  }
  
  public void H(String paramString) {
    this.valorVET = paramString;
  }
  
  public String I() {
    return this.valorVET;
  }
  
  public void I(String paramString) {
    this.a = paramString;
  }
  
  public String J() {
    return this.a;
  }
  
  public gaq a() {
    return (gaq)super.clone();
  }
  
  public void a(String paramString) {
    this.moedaSantander = paramString;
  }
  
  public String b() {
    return this.moedaSantander;
  }
  
  public void b(String paramString) {
    this.moedaEstrangeira = paramString;
  }
  
  public String c() {
    return this.moedaEstrangeira;
  }
  
  public void c(String paramString) {
    this.nomePais = paramString;
  }
  
  public String d() {
    return this.nomePais;
  }
  
  public void d(String paramString) {
    this.descricaoMotivo = paramString;
  }
  
  public String e() {
    return this.descricaoMotivo;
  }
  
  public void e(String paramString) {
    this.valorRespostaMotivo = paramString;
  }
  
  public String f() {
    return this.valorRespostaMotivo;
  }
  
  public void f(String paramString) {
    this.agenciaDebito = paramString;
  }
  
  public String g() {
    return this.agenciaDebito;
  }
  
  public void g(String paramString) {
    this.agenciaDestino = paramString;
  }
  
  public String h() {
    return this.agenciaDestino;
  }
  
  public void h(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String i() {
    return this.autenticacao;
  }
  
  public void i(String paramString) {
    this.bancoDestino = paramString;
  }
  
  public String j() {
    return this.bancoDestino;
  }
  
  public void j(String paramString) {
    this.cidadeDestino = paramString;
  }
  
  public String k() {
    return this.cidadeDestino;
  }
  
  public void k(String paramString) {
    this.codigoMoeda = paramString;
  }
  
  public String l() {
    return this.codigoMoeda;
  }
  
  public void l(String paramString) {
    this.codigoMoedaLocal = paramString;
  }
  
  public String m() {
    return this.codigoMoedaLocal;
  }
  
  public void m(String paramString) {
    this.codigoNatureza = paramString;
  }
  
  public String n() {
    return this.codigoNatureza;
  }
  
  public void n(String paramString) {
    this.codigoPais = paramString;
  }
  
  public String o() {
    return this.codigoPais;
  }
  
  public void o(String paramString) {
    this.codigoSwift = paramString;
  }
  
  public String p() {
    return this.codigoSwift;
  }
  
  public void p(String paramString) {
    this.codigoTaxaMoeda = paramString;
  }
  
  public String q() {
    return this.codigoTaxaMoeda;
  }
  
  public void q(String paramString) {
    this.contaDebito = paramString;
  }
  
  public String r() {
    return this.contaDebito;
  }
  
  public void r(String paramString) {
    this.contaDestino = paramString;
  }
  
  public String s() {
    return this.contaDestino;
  }
  
  public void s(String paramString) {
    this.dataDebito = paramString;
  }
  
  public String t() {
    return this.dataDebito;
  }
  
  public void t(String paramString) {
    this.dataEnvio = paramString;
  }
  
  public String u() {
    return this.dataEnvio;
  }
  
  public void u(String paramString) {
    this.documentoCliente = paramString;
  }
  
  public String v() {
    return this.documentoCliente;
  }
  
  public void v(String paramString) {
    this.nomeBeneficiario = paramString;
  }
  
  public String w() {
    return this.nomeBeneficiario;
  }
  
  public void w(String paramString) {
    this.nomeCliente = paramString;
  }
  
  public String x() {
    return this.nomeCliente;
  }
  
  public void x(String paramString) {
    this.observacao = paramString;
  }
  
  public String y() {
    return this.observacao;
  }
  
  public void y(String paramString) {
    this.segmentoCliente = paramString;
  }
  
  public String z() {
    return this.segmentoCliente;
  }
  
  public void z(String paramString) {
    this.telefone = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gaq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */