import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mkz extends gnb {
  @Element(required = false)
  private String agenciaDestino;
  
  @Element(required = false)
  private String agenciaOrigem;
  
  @Element(required = false)
  private String bancoDestino;
  
  @Element(required = false)
  private String contaDestino;
  
  @Element(required = false)
  private String contaOrigem;
  
  @Element(required = false)
  private String cpfCnpj;
  
  @Element(required = false)
  private String dataInicio;
  
  @Element(required = false)
  private String favorecido;
  
  @Element(required = false)
  private String finalidade;
  
  @Element(required = false)
  private String historico;
  
  @Element(required = false)
  private String ispb;
  
  @Element(required = false)
  private String periodicidade;
  
  @Element(required = false)
  private String quantidadeRecorrencia;
  
  @Element(required = false)
  private String tipoContaDestino;
  
  @Element(required = false)
  private String tipoTransferencia;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.agenciaDestino;
  }
  
  public void a(String paramString) {
    this.agenciaDestino = paramString;
  }
  
  public String b() {
    return this.agenciaOrigem;
  }
  
  public void b(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public String c() {
    return this.bancoDestino;
  }
  
  public void c(String paramString) {
    this.bancoDestino = paramString;
  }
  
  public String d() {
    return this.contaDestino;
  }
  
  public void d(String paramString) {
    this.contaDestino = paramString;
  }
  
  public String e() {
    return this.contaOrigem;
  }
  
  public void e(String paramString) {
    this.contaOrigem = paramString;
  }
  
  public String f() {
    return this.cpfCnpj;
  }
  
  public void f(String paramString) {
    this.cpfCnpj = paramString;
  }
  
  public String g() {
    return this.dataInicio;
  }
  
  public void g(String paramString) {
    this.dataInicio = paramString;
  }
  
  public String h() {
    return this.favorecido;
  }
  
  public void h(String paramString) {
    this.favorecido = paramString;
  }
  
  public String i() {
    return this.finalidade;
  }
  
  public void i(String paramString) {
    this.finalidade = paramString;
  }
  
  public String j() {
    return this.ispb;
  }
  
  public void j(String paramString) {
    this.ispb = paramString;
  }
  
  public String k() {
    return this.historico;
  }
  
  public void k(String paramString) {
    this.historico = paramString;
  }
  
  public String l() {
    return this.periodicidade;
  }
  
  public void l(String paramString) {
    this.periodicidade = paramString;
  }
  
  public String m() {
    return this.quantidadeRecorrencia;
  }
  
  public void m(String paramString) {
    this.quantidadeRecorrencia = paramString;
  }
  
  public String n() {
    return this.tipoContaDestino;
  }
  
  public void n(String paramString) {
    this.tipoContaDestino = paramString;
  }
  
  public String o() {
    return this.tipoTransferencia;
  }
  
  public void o(String paramString) {
    this.tipoTransferencia = paramString;
  }
  
  public String p() {
    return this.valor;
  }
  
  public void p(String paramString) {
    this.valor = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mkz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */