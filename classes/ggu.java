import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "cartoes")
public class ggu implements Serializable {
  @Element(required = false)
  private String bandeira;
  
  @Element(required = false)
  private String imagem;
  
  @Element(required = false)
  private String limiteCredito;
  
  @Element(required = false)
  private String limiteFinal;
  
  @Element(required = false)
  private String limiteInicial;
  
  @Element(required = false)
  private String modalidade;
  
  @Element(required = false)
  private String numero;
  
  @Element(required = false)
  private String numeroFinal;
  
  @Element(required = false)
  private String plastico;
  
  @Element(required = false)
  private String situacao;
  
  @Element(required = false)
  private String textoCombo;
  
  @Element(required = false)
  private String titular;
  
  @Element(required = false)
  private String validade;
  
  @Element(required = false)
  private String vencimentoFatura;
  
  public String a() {
    return this.bandeira;
  }
  
  public void a(String paramString) {
    this.bandeira = paramString;
  }
  
  public String b() {
    return this.limiteCredito;
  }
  
  public void b(String paramString) {
    this.limiteCredito = paramString;
  }
  
  public String c() {
    return this.limiteFinal;
  }
  
  public void c(String paramString) {
    this.limiteFinal = paramString;
  }
  
  public String d() {
    return this.limiteInicial;
  }
  
  public void d(String paramString) {
    this.limiteInicial = paramString;
  }
  
  public String e() {
    return this.modalidade;
  }
  
  public void e(String paramString) {
    this.modalidade = paramString;
  }
  
  public String f() {
    return this.numero;
  }
  
  public void f(String paramString) {
    this.numero = paramString;
  }
  
  public String g() {
    return this.numeroFinal;
  }
  
  public void g(String paramString) {
    this.numeroFinal = paramString;
  }
  
  public String h() {
    return this.situacao;
  }
  
  public void h(String paramString) {
    this.situacao = paramString;
  }
  
  public String i() {
    return this.textoCombo;
  }
  
  public void i(String paramString) {
    this.textoCombo = paramString;
  }
  
  public String j() {
    return this.titular;
  }
  
  public void j(String paramString) {
    this.titular = paramString;
  }
  
  public String k() {
    return this.validade;
  }
  
  public void k(String paramString) {
    this.validade = paramString;
  }
  
  public String l() {
    return this.vencimentoFatura;
  }
  
  public void l(String paramString) {
    this.vencimentoFatura = paramString;
  }
  
  public String m() {
    return this.imagem;
  }
  
  public void m(String paramString) {
    this.imagem = paramString;
  }
  
  public String n() {
    return this.plastico;
  }
  
  public void n(String paramString) {
    this.plastico = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ggu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */