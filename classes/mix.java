import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "entrada")
public class mix extends goe implements Serializable {
  @Element(required = false)
  private String agendamento;
  
  @Element(required = false)
  private String autenticacaoBancaria;
  
  @Element(required = false)
  private String codProduto;
  
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String dataAplicacao;
  
  @Element(required = false)
  private String dataContabil;
  
  @Element(required = false)
  private String listaEmail;
  
  @Element(required = false)
  private String numeroOperacao;
  
  @Element(required = false)
  private String penumper;
  
  @Element(required = false)
  private String percentual;
  
  @Element(required = false)
  private String prazo;
  
  @Element(required = false)
  private String produto;
  
  @Element(required = false)
  private String subProduto;
  
  @Element(required = false)
  private String taxaCDI;
  
  @Element(required = false)
  private String tipoAplicacao;
  
  @Element(required = false)
  private String tipoInteresse;
  
  @Element(required = false)
  private String valorAgendado;
  
  @Element(required = false)
  private String valorAplicado;
  
  @Element(required = false)
  private String valorInformado;
  
  @Element(required = false)
  private String valorParcial;
  
  @Element(required = false)
  private String valorResgate;
  
  @Element(required = false)
  private String valorTotal;
  
  public String a() {
    return this.codProduto;
  }
  
  public void a(String paramString) {
    this.codProduto = paramString;
  }
  
  public String b() {
    return this.agendamento;
  }
  
  public void b(String paramString) {
    this.agendamento = paramString;
  }
  
  public String c() {
    return this.autenticacaoBancaria;
  }
  
  public void c(String paramString) {
    this.autenticacaoBancaria = paramString;
  }
  
  public String d() {
    return this.dataAgendamento;
  }
  
  public void d(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String e() {
    return this.dataAplicacao;
  }
  
  public void e(String paramString) {
    this.dataAplicacao = paramString;
  }
  
  public String f() {
    return this.dataContabil;
  }
  
  public void f(String paramString) {
    this.dataContabil = paramString;
  }
  
  public String g() {
    return this.listaEmail;
  }
  
  public void g(String paramString) {
    this.listaEmail = paramString;
  }
  
  public String h() {
    return this.numeroOperacao;
  }
  
  public void h(String paramString) {
    this.numeroOperacao = paramString;
  }
  
  public String i() {
    return this.penumper;
  }
  
  public void i(String paramString) {
    this.penumper = paramString;
  }
  
  public String j() {
    return this.percentual;
  }
  
  public void j(String paramString) {
    this.percentual = paramString;
  }
  
  public String k() {
    return this.prazo;
  }
  
  public void k(String paramString) {
    this.prazo = paramString;
  }
  
  public String l() {
    return this.produto;
  }
  
  public void l(String paramString) {
    this.produto = paramString;
  }
  
  public String m() {
    return this.subProduto;
  }
  
  public void m(String paramString) {
    this.subProduto = paramString;
  }
  
  public String n() {
    return this.taxaCDI;
  }
  
  public void n(String paramString) {
    this.taxaCDI = paramString;
  }
  
  public String o() {
    return this.tipoAplicacao;
  }
  
  public void o(String paramString) {
    this.tipoAplicacao = paramString;
  }
  
  public String p() {
    return this.tipoInteresse;
  }
  
  public void p(String paramString) {
    this.tipoInteresse = paramString;
  }
  
  public String q() {
    return this.valorAgendado;
  }
  
  public void q(String paramString) {
    this.valorAgendado = paramString;
  }
  
  public String r() {
    return this.valorAplicado;
  }
  
  public void r(String paramString) {
    this.valorAplicado = paramString;
  }
  
  public String s() {
    return this.valorInformado;
  }
  
  public void s(String paramString) {
    this.valorInformado = paramString;
  }
  
  public String t() {
    return this.valorParcial;
  }
  
  public void t(String paramString) {
    this.valorParcial = paramString;
  }
  
  public String u() {
    return this.valorResgate;
  }
  
  public void u(String paramString) {
    this.valorResgate = paramString;
  }
  
  public String v() {
    return this.valorTotal;
  }
  
  public void v(String paramString) {
    this.valorTotal = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */