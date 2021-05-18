import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "plano")
public class kdj implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String banco;
  
  @ElementList(required = false)
  private List<kdb> beneficiarios;
  
  @ElementList(required = false)
  private List<kcv> coberturas;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String dataContratacao;
  
  @Element(required = false)
  private String dataInicioRenda;
  
  @Element(required = false)
  private String dataInicioVigencia;
  
  @Element(required = false)
  private String dataNascimento;
  
  @Element(required = false)
  private String diaPagamento;
  
  @Element(required = false)
  private String formaCobranca;
  
  @Element(required = false)
  private String nomeProduto;
  
  @Element(required = false)
  private String numeroBeneficio;
  
  @Element(required = false)
  private String numeroCertificado;
  
  @Element(required = false)
  private String periodicidade;
  
  @Element(required = false)
  private String situacaoPlano;
  
  @Element(required = false)
  private String tipoPlano;
  
  @Element(required = false)
  private String tipoRenda;
  
  @Element(required = false)
  private String valorBeneficio;
  
  @Element(required = false)
  private String valorContribuicaoPremio;
  
  @Element(required = false)
  private String valorSaldoBruto;
  
  public String a() {
    return this.banco;
  }
  
  public void a(String paramString) {
    this.banco = paramString;
  }
  
  public void a(List<kdb> paramList) {
    this.beneficiarios = paramList;
  }
  
  public String b() {
    return this.agencia;
  }
  
  public void b(String paramString) {
    this.agencia = paramString;
  }
  
  public void b(List<kcv> paramList) {
    this.coberturas = paramList;
  }
  
  public String c() {
    return this.conta;
  }
  
  public void c(String paramString) {
    this.conta = paramString;
  }
  
  public String d() {
    return this.dataContratacao;
  }
  
  public void d(String paramString) {
    this.dataContratacao = paramString;
  }
  
  public String e() {
    return this.dataInicioRenda;
  }
  
  public void e(String paramString) {
    this.dataInicioRenda = paramString;
  }
  
  public String f() {
    return this.dataInicioVigencia;
  }
  
  public void f(String paramString) {
    this.dataInicioVigencia = paramString;
  }
  
  public String g() {
    return this.dataNascimento;
  }
  
  public void g(String paramString) {
    this.dataNascimento = paramString;
  }
  
  public String h() {
    return this.diaPagamento;
  }
  
  public void h(String paramString) {
    this.diaPagamento = paramString;
  }
  
  public String i() {
    return this.formaCobranca;
  }
  
  public void i(String paramString) {
    this.formaCobranca = paramString;
  }
  
  public String j() {
    return this.nomeProduto;
  }
  
  public void j(String paramString) {
    this.nomeProduto = paramString;
  }
  
  public String k() {
    return this.numeroBeneficio;
  }
  
  public void k(String paramString) {
    this.numeroBeneficio = paramString;
  }
  
  public String l() {
    return this.numeroCertificado;
  }
  
  public void l(String paramString) {
    this.numeroCertificado = paramString;
  }
  
  public String m() {
    return this.periodicidade;
  }
  
  public void m(String paramString) {
    this.periodicidade = paramString;
  }
  
  public String n() {
    return this.situacaoPlano;
  }
  
  public void n(String paramString) {
    this.situacaoPlano = paramString;
  }
  
  public String o() {
    return this.tipoPlano;
  }
  
  public void o(String paramString) {
    this.tipoPlano = paramString;
  }
  
  public String p() {
    return this.tipoRenda;
  }
  
  public void p(String paramString) {
    this.tipoRenda = paramString;
  }
  
  public String q() {
    return this.valorBeneficio;
  }
  
  public void q(String paramString) {
    this.valorBeneficio = paramString;
  }
  
  public String r() {
    return this.valorContribuicaoPremio;
  }
  
  public void r(String paramString) {
    this.valorContribuicaoPremio = paramString;
  }
  
  public String s() {
    return this.valorSaldoBruto;
  }
  
  public void s(String paramString) {
    this.valorSaldoBruto = paramString;
  }
  
  public List<kdb> t() {
    return this.beneficiarios;
  }
  
  public List<kcv> u() {
    return this.coberturas;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */