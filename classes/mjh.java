import java.io.Serializable;
import org.simpleframework.xml.Element;

public class mjh extends gnb implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String codigoCanal;
  
  @Element(required = false)
  private String codigoFormulario;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String codigoTerminal;
  
  @Element(required = false)
  private String codigoUsuario;
  
  @Element(required = false)
  private String dataInclusaoDocumento;
  
  @Element(required = false)
  private String descricaoErro;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String nomeTabela;
  
  @Element(required = false)
  private String numeroConta;
  
  @Element(required = false)
  private String numeroVersao;
  
  @Element(required = false)
  private String penumpe;
  
  @Element(required = false)
  private String sqlCode;
  
  @Element(required = false)
  private String tipoAceite;
  
  @Element(required = false)
  private String tipoDocumento;
  
  @Element(required = false)
  private String tipoOperacao;
  
  public String a() {
    return this.tipoOperacao;
  }
  
  public void a(String paramString) {
    this.tipoOperacao = paramString;
  }
  
  public String b() {
    return this.agencia;
  }
  
  public void b(String paramString) {
    this.agencia = paramString;
  }
  
  public String c() {
    return this.codigoBanco;
  }
  
  public void c(String paramString) {
    this.codigoBanco = paramString;
  }
  
  public String d() {
    return this.numeroConta;
  }
  
  public void d(String paramString) {
    this.numeroConta = paramString;
  }
  
  public String e() {
    return this.codigoProduto;
  }
  
  public void e(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String f() {
    return this.codigoSubProduto;
  }
  
  public void f(String paramString) {
    this.codigoSubProduto = paramString;
  }
  
  public String g() {
    return this.penumpe;
  }
  
  public void g(String paramString) {
    this.penumpe = paramString;
  }
  
  public String h() {
    return this.tipoDocumento;
  }
  
  public void h(String paramString) {
    this.tipoDocumento = paramString;
  }
  
  public String i() {
    return this.tipoAceite;
  }
  
  public void i(String paramString) {
    this.tipoAceite = paramString;
  }
  
  public String j() {
    return this.codigoFormulario;
  }
  
  public void j(String paramString) {
    this.codigoFormulario = paramString;
  }
  
  public String k() {
    return this.numeroVersao;
  }
  
  public void k(String paramString) {
    this.numeroVersao = paramString;
  }
  
  public String l() {
    return this.dataInclusaoDocumento;
  }
  
  public void l(String paramString) {
    this.dataInclusaoDocumento = paramString;
  }
  
  public String m() {
    return this.codigoUsuario;
  }
  
  public void m(String paramString) {
    this.codigoUsuario = paramString;
  }
  
  public String n() {
    return this.codigoCanal;
  }
  
  public void n(String paramString) {
    this.codigoCanal = paramString;
  }
  
  public String o() {
    return this.codigoTerminal;
  }
  
  public void o(String paramString) {
    this.codigoTerminal = paramString;
  }
  
  public String p() {
    return this.codigoRetorno;
  }
  
  public void p(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public String q() {
    return this.sqlCode;
  }
  
  public void q(String paramString) {
    this.sqlCode = paramString;
  }
  
  public String r() {
    return this.descricaoErro;
  }
  
  public void r(String paramString) {
    this.descricaoErro = paramString;
  }
  
  public String s() {
    return this.nomeTabela;
  }
  
  public void s(String paramString) {
    this.nomeTabela = paramString;
  }
  
  public String t() {
    return this.mensagemRetorno;
  }
  
  public void t(String paramString) {
    this.mensagemRetorno = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mjh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */