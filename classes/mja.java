import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "entrada")
public class mja extends goe implements Serializable {
  @Element(required = false)
  private String agendamento;
  
  @Element(required = false)
  private String autenticacaoBancaria;
  
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
    return this.agendamento;
  }
  
  public void a(String paramString) {
    this.agendamento = paramString;
  }
  
  public String b() {
    return this.autenticacaoBancaria;
  }
  
  public void b(String paramString) {
    this.autenticacaoBancaria = paramString;
  }
  
  public String c() {
    return this.dataAgendamento;
  }
  
  public void c(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String d() {
    return this.dataAplicacao;
  }
  
  public void d(String paramString) {
    this.dataAplicacao = paramString;
  }
  
  public String e() {
    return this.dataContabil;
  }
  
  public void e(String paramString) {
    this.dataContabil = paramString;
  }
  
  public String f() {
    return this.listaEmail;
  }
  
  public void f(String paramString) {
    this.listaEmail = paramString;
  }
  
  public String g() {
    return this.numeroOperacao;
  }
  
  public void g(String paramString) {
    this.numeroOperacao = paramString;
  }
  
  public String h() {
    return this.percentual;
  }
  
  public void h(String paramString) {
    this.percentual = paramString;
  }
  
  public String i() {
    return this.penumper;
  }
  
  public void i(String paramString) {
    this.penumper = paramString;
  }
  
  public String j() {
    return this.prazo;
  }
  
  public void j(String paramString) {
    this.prazo = paramString;
  }
  
  public String k() {
    return this.produto;
  }
  
  public void k(String paramString) {
    this.produto = paramString;
  }
  
  public String l() {
    return this.subProduto;
  }
  
  public void l(String paramString) {
    this.subProduto = paramString;
  }
  
  public String m() {
    return this.taxaCDI;
  }
  
  public void m(String paramString) {
    this.taxaCDI = paramString;
  }
  
  public String n() {
    return this.tipoAplicacao;
  }
  
  public void n(String paramString) {
    this.tipoAplicacao = paramString;
  }
  
  public String o() {
    return this.tipoInteresse;
  }
  
  public void o(String paramString) {
    this.tipoInteresse = paramString;
  }
  
  public String p() {
    return this.valorAgendado;
  }
  
  public void p(String paramString) {
    this.valorAgendado = paramString;
  }
  
  public String q() {
    return this.valorAplicado;
  }
  
  public void q(String paramString) {
    this.valorAplicado = paramString;
  }
  
  public String r() {
    return this.valorInformado;
  }
  
  public void r(String paramString) {
    this.valorInformado = paramString;
  }
  
  public String s() {
    return this.valorParcial;
  }
  
  public void s(String paramString) {
    this.valorParcial = paramString;
  }
  
  public String t() {
    return this.valorTotal;
  }
  
  public void t(String paramString) {
    this.valorTotal = paramString;
  }
  
  public String u() {
    return this.valorResgate;
  }
  
  public void u(String paramString) {
    this.valorResgate = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */