import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "detalheList")
public class klx implements Serializable {
  private Boolean a;
  
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
  private String codNIO;
  
  @Element(required = false)
  private String codSequencia;
  
  @Element(required = false)
  private String codTabela;
  
  @Element(required = false)
  private String codigoBarra;
  
  @Element(required = false)
  private String contaDestino;
  
  @Element(required = false)
  private String contaOrigem;
  
  @Element(required = false)
  private String convenio;
  
  @Element(required = false)
  private String cpfCnpjFavorecido;
  
  @Element(required = false)
  private String dataFinal;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  @Element(required = false)
  private String dataInicial;
  
  @Element(required = false)
  private String dataPagamento;
  
  @Element(required = false)
  private String dataTransacao;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String descricaoTipoComprovante;
  
  @Element(required = false)
  private String empresa;
  
  @Element(required = false)
  private String finalidade;
  
  @Element(required = false)
  private String horaTransacao;
  
  @Element(required = false)
  private String idComprovante;
  
  @Element(required = false)
  private String nomeFavorecido;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String subTipoComprovante;
  
  @Element(required = false)
  private String textoHistorico;
  
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
    return this.cpfCnpjFavorecido;
  }
  
  public void A(String paramString) {
    this.finalidade = paramString;
  }
  
  public String B() {
    return this.finalidade;
  }
  
  public void B(String paramString) {
    this.nomeFavorecido = paramString;
  }
  
  public String C() {
    return this.nomeFavorecido;
  }
  
  public void C(String paramString) {
    this.textoHistorico = paramString;
  }
  
  public String D() {
    return this.textoHistorico;
  }
  
  public void D(String paramString) {
    this.tipoContaDestino = paramString;
  }
  
  public String E() {
    return this.tipoContaDestino;
  }
  
  public void E(String paramString) {
    this.titularidade = paramString;
  }
  
  public String F() {
    return this.titularidade;
  }
  
  public void F(String paramString) {
    this.convenio = paramString;
  }
  
  public String G() {
    return this.convenio;
  }
  
  public void G(String paramString) {
    this.empresa = paramString;
  }
  
  public String H() {
    return this.empresa;
  }
  
  public void H(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public String I() {
    return this.numeroCartao;
  }
  
  public void I(String paramString) {
    this.subTipoComprovante = paramString;
  }
  
  public String J() {
    return this.subTipoComprovante;
  }
  
  public Boolean a() {
    return this.a;
  }
  
  public void a(Boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public void a(String paramString) {
    this.dataInicial = paramString;
  }
  
  public String b() {
    return this.dataInicial;
  }
  
  public void b(String paramString) {
    this.dataFinal = paramString;
  }
  
  public String c() {
    return this.dataFinal;
  }
  
  public void c(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String d() {
    return this.autenticacao;
  }
  
  public void d(String paramString) {
    this.dataTransacao = paramString;
  }
  
  public String e() {
    return this.dataTransacao;
  }
  
  public void e(String paramString) {
    this.descricaoTipoComprovante = paramString;
  }
  
  public String f() {
    return this.descricaoTipoComprovante;
  }
  
  public void f(String paramString) {
    this.tipoComprovante = paramString;
  }
  
  public String g() {
    return this.tipoComprovante;
  }
  
  public void g(String paramString) {
    this.valorTransacao = paramString;
  }
  
  public String h() {
    return this.valorTransacao;
  }
  
  public void h(String paramString) {
    this.codNIO = paramString;
  }
  
  public String i() {
    return this.codNIO;
  }
  
  public void i(String paramString) {
    this.codSequencia = paramString;
  }
  
  public String j() {
    return this.codSequencia;
  }
  
  public void j(String paramString) {
    this.codTabela = paramString;
  }
  
  public String k() {
    return this.codTabela;
  }
  
  public void k(String paramString) {
    this.idComprovante = paramString;
  }
  
  public String l() {
    return this.idComprovante;
  }
  
  public void l(String paramString) {
    this.canal = paramString;
  }
  
  public String m() {
    return this.canal;
  }
  
  public void m(String paramString) {
    this.cliente = paramString;
  }
  
  public String n() {
    return this.cliente;
  }
  
  public void n(String paramString) {
    this.codigoBarra = paramString;
  }
  
  public String o() {
    return this.codigoBarra;
  }
  
  public void o(String paramString) {
    this.dataHoraTransacao = paramString;
  }
  
  public String p() {
    return this.dataHoraTransacao;
  }
  
  public void p(String paramString) {
    this.dataPagamento = paramString;
  }
  
  public String q() {
    return this.dataPagamento;
  }
  
  public void q(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public String r() {
    return this.dataVencimento;
  }
  
  public void r(String paramString) {
    this.horaTransacao = paramString;
  }
  
  public String s() {
    return this.horaTransacao;
  }
  
  public void s(String paramString) {
    this.valorCobrado = paramString;
  }
  
  public String t() {
    return this.valorCobrado;
  }
  
  public void t(String paramString) {
    this.agenciaDestino = paramString;
  }
  
  public String u() {
    return this.agenciaDestino;
  }
  
  public void u(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public String v() {
    return this.agenciaOrigem;
  }
  
  public void v(String paramString) {
    this.bancoDestino = paramString;
  }
  
  public String w() {
    return this.bancoDestino;
  }
  
  public void w(String paramString) {
    this.contaDestino = paramString;
  }
  
  public String x() {
    return this.contaDestino;
  }
  
  public void x(String paramString) {
    this.contaOrigem = paramString;
  }
  
  public String y() {
    return this.contaOrigem;
  }
  
  public void y(String paramString) {
    this.tipoContaOrigem = paramString;
  }
  
  public String z() {
    return this.tipoContaOrigem;
  }
  
  public void z(String paramString) {
    this.cpfCnpjFavorecido = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */