import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "listaDispositivos")
public class kbq implements Serializable {
  @Element(required = false)
  private String apelido;
  
  @Element(required = false)
  private String autenticacao;
  
  @Element(required = false)
  private String codigoIMEI;
  
  @Element(required = false)
  private String dataDesbloqueio;
  
  @Element(required = false)
  private String dataHoraTransacao;
  
  @Element(required = false)
  private String dataInclusao;
  
  @Element(required = false)
  private String descricaoStatus;
  
  @Element(required = false)
  private String descricaoTipoDispositivo;
  
  @Element(required = false)
  private String status;
  
  @Element(required = false)
  private String tipoDispositivo;
  
  public String a() {
    return this.autenticacao;
  }
  
  public void a(String paramString) {
    this.apelido = paramString;
  }
  
  public String b() {
    return this.apelido;
  }
  
  public void b(String paramString) {
    this.codigoIMEI = paramString;
  }
  
  public String c() {
    return this.codigoIMEI;
  }
  
  public void c(String paramString) {
    this.dataDesbloqueio = paramString;
  }
  
  public String d() {
    return this.dataDesbloqueio;
  }
  
  public void d(String paramString) {
    this.dataInclusao = paramString;
  }
  
  public String e() {
    return this.dataInclusao;
  }
  
  public void e(String paramString) {
    this.status = paramString;
  }
  
  public String f() {
    return this.status;
  }
  
  public void f(String paramString) {
    this.tipoDispositivo = paramString;
  }
  
  public String g() {
    return this.tipoDispositivo;
  }
  
  public void g(String paramString) {
    this.autenticacao = paramString;
  }
  
  public String h() {
    return this.dataHoraTransacao;
  }
  
  public void h(String paramString) {
    this.dataHoraTransacao = paramString;
  }
  
  public String i() {
    return this.descricaoStatus;
  }
  
  public void i(String paramString) {
    this.descricaoStatus = paramString;
  }
  
  public String j() {
    return this.descricaoTipoDispositivo;
  }
  
  public void j(String paramString) {
    this.descricaoTipoDispositivo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */