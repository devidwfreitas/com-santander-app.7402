import java.io.Serializable;
import org.simpleframework.xml.Element;

public class kdk extends gnb implements Serializable {
  @Element(required = false)
  private String codigoErro;
  
  @Element(required = false)
  private kda contrato;
  
  @Element(required = false)
  private String descricaoOperacao;
  
  @Element(required = false)
  private String numeroSolicAporte;
  
  @Element(required = false)
  private String tokenSessao;
  
  @Element(required = false)
  private String valorAporte;
  
  @Element(required = false)
  private String valorDeRendaComAporte;
  
  @Element(required = false)
  private String valorDeRendaSemAporte;
  
  @Element(required = false)
  private String valorDeReservaComAporte;
  
  @Element(required = false)
  private String valorDeReservaSemAporte;
  
  public String a() {
    return this.tokenSessao;
  }
  
  public void a(String paramString) {
    this.tokenSessao = paramString;
  }
  
  public void a(kda paramkda) {
    this.contrato = paramkda;
  }
  
  public String b() {
    return this.codigoErro;
  }
  
  public void b(String paramString) {
    this.codigoErro = paramString;
  }
  
  public kda c() {
    return this.contrato;
  }
  
  public void c(String paramString) {
    this.descricaoOperacao = paramString;
  }
  
  public String d() {
    return this.descricaoOperacao;
  }
  
  public void d(String paramString) {
    this.numeroSolicAporte = paramString;
  }
  
  public String e() {
    return this.numeroSolicAporte;
  }
  
  public void e(String paramString) {
    this.valorAporte = paramString;
  }
  
  public String f() {
    return this.valorAporte;
  }
  
  public void f(String paramString) {
    this.valorDeRendaComAporte = paramString;
  }
  
  public String g() {
    return this.valorDeRendaComAporte;
  }
  
  public void g(String paramString) {
    this.valorDeRendaSemAporte = paramString;
  }
  
  public String h() {
    return this.valorDeRendaSemAporte;
  }
  
  public void h(String paramString) {
    this.valorDeReservaComAporte = paramString;
  }
  
  public String i() {
    return this.valorDeReservaComAporte;
  }
  
  public void i(String paramString) {
    this.valorDeReservaSemAporte = paramString;
  }
  
  public String j() {
    return this.valorDeReservaSemAporte;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */