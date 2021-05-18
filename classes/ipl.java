import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "seguroCancelavel")
public class ipl {
  @Element(required = false)
  private String codigoAgencia;
  
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String codigoCanalProposta;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String contaCorrente;
  
  @Element(required = false)
  private String cpfOuCnpj;
  
  @Element(required = false)
  private String dataContratacao;
  
  @Element(required = false)
  private String descricaoCanalProposta;
  
  @Element(required = false)
  private String grupoCanal;
  
  @Element(required = false)
  private String indicadorAdesao;
  
  @Element(required = false)
  private String nomeProduto;
  
  @Element(required = false)
  private String numeroApolice;
  
  @Element(required = false)
  private String numeroCertificado;
  
  @Element(required = false)
  private String numeroProposta;
  
  @Element(required = false)
  private String valorPremioPago;
  
  public String a() {
    return this.numeroProposta;
  }
  
  public void a(String paramString) {
    this.numeroProposta = paramString;
  }
  
  public String b() {
    return this.cpfOuCnpj;
  }
  
  public void b(String paramString) {
    this.cpfOuCnpj = paramString;
  }
  
  public String c() {
    return this.numeroApolice;
  }
  
  public void c(String paramString) {
    this.numeroApolice = paramString;
  }
  
  public String d() {
    return this.numeroCertificado;
  }
  
  public void d(String paramString) {
    this.numeroCertificado = paramString;
  }
  
  public String e() {
    return this.nomeProduto;
  }
  
  public void e(String paramString) {
    this.nomeProduto = paramString;
  }
  
  public String f() {
    return this.dataContratacao;
  }
  
  public void f(String paramString) {
    this.dataContratacao = paramString;
  }
  
  public String g() {
    return this.valorPremioPago;
  }
  
  public void g(String paramString) {
    this.valorPremioPago = paramString;
  }
  
  public String h() {
    return this.codigoProduto;
  }
  
  public void h(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String i() {
    return this.codigoBanco;
  }
  
  public void i(String paramString) {
    this.codigoBanco = paramString;
  }
  
  public String j() {
    return this.codigoAgencia;
  }
  
  public void j(String paramString) {
    this.codigoAgencia = paramString;
  }
  
  public String k() {
    return this.contaCorrente;
  }
  
  public void k(String paramString) {
    this.contaCorrente = paramString;
  }
  
  public String l() {
    return this.codigoCanalProposta;
  }
  
  public void l(String paramString) {
    this.codigoCanalProposta = paramString;
  }
  
  public String m() {
    return this.descricaoCanalProposta;
  }
  
  public void m(String paramString) {
    this.descricaoCanalProposta = paramString;
  }
  
  public String n() {
    return this.grupoCanal;
  }
  
  public void n(String paramString) {
    this.grupoCanal = paramString;
  }
  
  public String o() {
    return this.indicadorAdesao;
  }
  
  public void o(String paramString) {
    this.indicadorAdesao = paramString;
  }
  
  public String toString() {
    return "SeguroCancelavel [numeroProposta=" + this.numeroProposta + ", cpfOuCnpj=" + this.cpfOuCnpj + ", numeroApolice=" + this.numeroApolice + ", numeroCertificado=" + this.numeroCertificado + ", nomeProduto=" + this.nomeProduto + ", dataContratacao=" + this.dataContratacao + ", valorPremioPago=" + this.valorPremioPago + ", codigoProduto=" + this.codigoProduto + ", codigoBanco=" + this.codigoBanco + ", codigoAgencia=" + this.codigoAgencia + ", contaCorrente=" + this.contaCorrente + ", codigoCanalProposta=" + this.codigoCanalProposta + ", descricaoCanalProposta=" + this.descricaoCanalProposta + ", grupoCanal=" + this.grupoCanal + ", indicadorAdesao=" + this.indicadorAdesao + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */