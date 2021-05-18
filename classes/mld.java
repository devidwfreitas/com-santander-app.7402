import java.io.Serializable;
import org.simpleframework.xml.Element;

public class mld implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String autorizado;
  
  @Element(required = false)
  private String banco;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private Integer index;
  
  @Element(required = false)
  private String indicadorMesmoTitular;
  
  @Element(required = false)
  private String ispb;
  
  @Element(required = false)
  private String nomeBanco;
  
  @Element(required = false)
  private String numeroDocumento;
  
  @Element(required = false)
  private String tipoConta;
  
  @Element(required = false)
  private String tipoDocumento;
  
  public String a() {
    return this.tipoDocumento;
  }
  
  public void a(Integer paramInteger) {
    this.index = paramInteger;
  }
  
  public void a(String paramString) {
    this.tipoDocumento = paramString;
  }
  
  public String b() {
    return this.autorizado;
  }
  
  public void b(String paramString) {
    this.autorizado = paramString;
  }
  
  public String c() {
    return this.numeroDocumento;
  }
  
  public void c(String paramString) {
    this.numeroDocumento = paramString;
  }
  
  public String d() {
    return this.indicadorMesmoTitular;
  }
  
  public void d(String paramString) {
    this.indicadorMesmoTitular = paramString;
  }
  
  public String e() {
    return this.descricao;
  }
  
  public void e(String paramString) {
    this.descricao = paramString;
  }
  
  public String f() {
    return this.tipoConta;
  }
  
  public void f(String paramString) {
    this.tipoConta = paramString;
  }
  
  public String g() {
    return this.banco;
  }
  
  public void g(String paramString) {
    this.banco = paramString;
  }
  
  public String h() {
    return this.agencia;
  }
  
  public void h(String paramString) {
    this.agencia = paramString;
  }
  
  public String i() {
    return this.nomeBanco;
  }
  
  public void i(String paramString) {
    this.nomeBanco = paramString;
  }
  
  public String j() {
    return this.ispb;
  }
  
  public void j(String paramString) {
    this.ispb = paramString;
  }
  
  public String k() {
    return this.conta;
  }
  
  public void k(String paramString) {
    this.conta = paramString;
  }
  
  public Integer l() {
    return this.index;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */