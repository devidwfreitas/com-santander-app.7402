import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mky extends goe {
  @Element(required = false)
  private String codigoAgencia;
  
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String contaCorrente;
  
  public String a() {
    return this.contaCorrente;
  }
  
  public void a(String paramString) {
    this.contaCorrente = paramString;
  }
  
  public String b() {
    return this.codigoAgencia;
  }
  
  public void b(String paramString) {
    this.codigoAgencia = paramString;
  }
  
  public String c() {
    return this.codigoBanco;
  }
  
  public void c(String paramString) {
    this.codigoBanco = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */