import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jdi extends gnb implements Serializable {
  @Element(required = false)
  private String cnpjFundo;
  
  @Element(required = false)
  private String codigoFundo;
  
  @Element(required = false)
  private String contaFundo;
  
  @Element(required = false)
  private String data;
  
  @Element(required = false)
  private String dataDebitoCredito;
  
  @Element(required = false)
  private String tipoTermo;
  
  @Element(required = false)
  private String valorAplicacao;
  
  public String a() {
    return this.dataDebitoCredito;
  }
  
  public void a(String paramString) {
    this.dataDebitoCredito = paramString;
  }
  
  public String b() {
    return this.cnpjFundo;
  }
  
  public void b(String paramString) {
    this.cnpjFundo = paramString;
  }
  
  public String c() {
    return this.codigoFundo;
  }
  
  public void c(String paramString) {
    this.codigoFundo = paramString;
  }
  
  public String d() {
    return this.contaFundo;
  }
  
  public void d(String paramString) {
    this.contaFundo = paramString;
  }
  
  public String e() {
    return this.data;
  }
  
  public void e(String paramString) {
    this.data = paramString;
  }
  
  public String f() {
    return this.tipoTermo;
  }
  
  public void f(String paramString) {
    this.tipoTermo = paramString;
  }
  
  public String g() {
    return this.valorAplicacao;
  }
  
  public void g(String paramString) {
    this.valorAplicacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */