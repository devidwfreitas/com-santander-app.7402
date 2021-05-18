import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kbv extends goe implements Serializable {
  @Element(required = false)
  private String apelido;
  
  @Element(required = false)
  private String codigoIMEI;
  
  @Element(required = false)
  private String tipoDispositivo;
  
  public String a() {
    return this.codigoIMEI;
  }
  
  public void a(String paramString) {
    this.codigoIMEI = paramString;
  }
  
  public String b() {
    return this.tipoDispositivo;
  }
  
  public void b(String paramString) {
    this.tipoDispositivo = paramString;
  }
  
  public String c() {
    return this.apelido;
  }
  
  public void c(String paramString) {
    this.apelido = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */