import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "responseDTO")
public class klv implements Serializable {
  @Element(required = false)
  private String agenciaDestino;
  
  @Element(required = false)
  private String agenciaOrigem;
  
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String bancoDestino;
  
  @Element(required = false)
  private String canal;
  
  @Element(required = false)
  private String cliente;
  
  @Element(required = false)
  private String codigoBarra;
  
  @Element(required = false)
  private String codigoISPB;
  
  @Element(required = false)
  private String contaDestino;
  
  @Element(required = false)
  private String contaOrigem;
  
  @Element(required = false)
  private String convenio;
  
  @Element(required = false)
  private String cpfCnpjFavorecido;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  @Element(required = false)
  private String dataPagamento;
  
  @Element(required = false)
  private String dataTransacao;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String empresa;
  
  @Element(required = false)
  private String favorecido;
  
  @Element(required = false)
  private String finalidade;
  
  @Element(required = false)
  private String horaTransacao;
  
  @Element(required = false)
  private String idComprovante;
  
  @Element(required = false)
  private String ispb;
  
  @Element(required = false)
  private String nomeFavorecido;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String numeroTelefone;
  
  @Element(required = false)
  private String numeroTransacao;
  
  @Element(required = false)
  private String operadora;
  
  @Element(required = false)
  private String protocoloAutorizado;
  
  @Element(required = false)
  private String protocoloOperadora;
  
  @Element(required = false)
  private String tipoComprovante;
  
  @Element(required = false)
  private String tipoContaDestino;
  
  @Element(required = false)
  private String tipoContaOrigem;
  
  @Element(required = false)
  private String titularidade;
  
  @Element(required = false)
  private String valorCobrado;
  
  @Element(required = false)
  private String valorTransacao;
  
  public String A() {
    return this.tipoComprovante;
  }
  
  public void A(String paramString) {
    this.tipoComprovante = paramString;
  }
  
  public String B() {
    return this.tipoContaOrigem;
  }
  
  public void B(String paramString) {
    this.tipoContaOrigem = paramString;
  }
  
  public String C() {
    return this.cpfCnpjFavorecido;
  }
  
  public void C(String paramString) {
    this.cpfCnpjFavorecido = paramString;
  }
  
  public String D() {
    return this.finalidade;
  }
  
  public void D(String paramString) {
    this.finalidade = paramString;
  }
  
  public String E() {
    return this.idComprovante;
  }
  
  public void E(String paramString) {
    this.idComprovante = paramString;
  }
  
  public String F() {
    return this.tipoContaDestino;
  }
  
  public void F(String paramString) {
    this.tipoContaDestino = paramString;
  }
  
  public String G() {
    return this.titularidade;
  }
  
  public void G(String paramString) {
    this.titularidade = paramString;
  }
  
  public String H() {
    return this.dataVencimento;
  }
  
  public void H(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String I() {
    return this.cliente;
  }
  
  public void I(String paramString) {
    this.cliente = paramString;
  }
  
  public String a() {
    return this.protocoloOperadora;
  }
  
  public void a(String paramString) {
    this.protocoloOperadora = paramString;
  }
  
  public String b() {
    return this.codigoISPB;
  }
  
  public void b(String paramString) {
    this.codigoISPB = paramString;
  }
  
  public String c() {
    return this.numeroCartao;
  }
  
  public void c(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String d() {
    return this.valorCobrado;
  }
  
  public void d(String paramString) {
    this.valorCobrado = paramString;
  }
  
  public String e() {
    return this.favorecido;
  }
  
  public void e(String paramString) {
    this.favorecido = paramString;
  }
  
  public String f() {
    return this.ispb;
  }
  
  public void f(String paramString) {
    this.ispb = paramString;
  }
  
  public String g() {
    return this.numeroTransacao;
  }
  
  public void g(String paramString) {
    this.numeroTransacao = paramString;
  }
  
  public String h() {
    return this.protocoloAutorizado;
  }
  
  public void h(String paramString) {
    this.protocoloAutorizado = paramString;
  }
  
  public String i() {
    return this.numeroTelefone;
  }
  
  public void i(String paramString) {
    this.numeroTelefone = paramString;
  }
  
  public String j() {
    return this.operadora;
  }
  
  public void j(String paramString) {
    this.operadora = paramString;
  }
  
  public String k() {
    return this.autenticacao;
  }
  
  public void k(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String l() {
    return this.canal;
  }
  
  public void l(String paramString) {
    this.canal = paramString;
  }
  
  public String m() {
    return this.codigoBarra;
  }
  
  public void m(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String n() {
    return this.convenio;
  }
  
  public void n(String paramString) {
    this.convenio = paramString;
  }
  
  public String o() {
    return this.dataPagamento;
  }
  
  public void o(String paramString) {
    this.dataPagamento = paramString;
  }
  
  public String p() {
    return this.dataTransacao;
  }
  
  public void p(String paramString) {
    this.dataTransacao = paramString;
  }
  
  public String q() {
    return this.empresa;
  }
  
  public void q(String paramString) {
    this.empresa = paramString;
  }
  
  public String r() {
    return this.horaTransacao;
  }
  
  public void r(String paramString) {
    this.horaTransacao = paramString;
  }
  
  public String s() {
    return this.valorTransacao;
  }
  
  public void s(String paramString) {
    this.valorTransacao = paramString;
  }
  
  public String t() {
    return this.agenciaDestino;
  }
  
  public void t(String paramString) {
    this.agenciaDestino = paramString;
  }
  
  public String u() {
    return this.agenciaOrigem;
  }
  
  public void u(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public String v() {
    return this.bancoDestino;
  }
  
  public void v(String paramString) {
    this.bancoDestino = paramString;
  }
  
  public String w() {
    return this.contaDestino;
  }
  
  public void w(String paramString) {
    this.contaDestino = paramString;
  }
  
  public String x() {
    return this.contaOrigem;
  }
  
  public void x(String paramString) {
    this.contaOrigem = paramString;
  }
  
  public String y() {
    return this.dataHoraTransacao;
  }
  
  public void y(String paramString) {
    this.dataHoraTransacao = paramString;
  }
  
  public String z() {
    return this.nomeFavorecido;
  }
  
  public void z(String paramString) {
    this.nomeFavorecido = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */