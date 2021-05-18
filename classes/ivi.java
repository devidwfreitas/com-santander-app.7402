import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class ivi extends goe implements Serializable {
  @Element(required = false)
  private String ddd;
  
  @Element(required = false)
  private String idDispositivo;
  
  @Element(required = false)
  private String telefone;
  
  public String a() {
    return this.idDispositivo;
  }
  
  public void a(String paramString) {
    this.idDispositivo = paramString;
  }
  
  public String b() {
    return this.ddd;
  }
  
  public void b(String paramString) {
    this.ddd = paramString;
  }
  
  public String c() {
    return this.telefone;
  }
  
  public void c(String paramString) {
    this.telefone = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ivi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */