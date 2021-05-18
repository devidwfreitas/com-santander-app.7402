import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "celular")
public class iuz implements Serializable {
  @Element(required = false)
  private String ddd;
  
  @Element(required = false)
  private String imei;
  
  @Element(required = false)
  private String numero;
  
  @Element(required = false)
  private String numeroFormatado;
  
  @Element(required = false)
  private String sequencia;
  
  @Element(required = false)
  private String timestamp;
  
  public iuz() {}
  
  public iuz(String paramString) {
    this.numeroFormatado = paramString;
  }
  
  public String a() {
    return this.ddd;
  }
  
  public void a(String paramString) {
    this.ddd = paramString;
  }
  
  public String b() {
    return this.imei;
  }
  
  public void b(String paramString) {
    this.imei = paramString;
  }
  
  public String c() {
    return this.numero;
  }
  
  public void c(String paramString) {
    this.numero = paramString;
  }
  
  public String d() {
    return this.numeroFormatado;
  }
  
  public void d(String paramString) {
    this.numeroFormatado = paramString;
  }
  
  public String e() {
    return this.sequencia;
  }
  
  public void e(String paramString) {
    this.sequencia = paramString;
  }
  
  public String f() {
    return this.timestamp;
  }
  
  public void f(String paramString) {
    this.timestamp = paramString;
  }
  
  public String toString() {
    return this.numeroFormatado;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iuz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */