import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "field")
public class gku extends gnb implements Serializable {
  @Element(required = false)
  private String indicador;
  
  @ekq
  @eks(a = "label")
  @Element(required = false)
  private String label;
  
  @ekq
  @eks(a = "value")
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.indicador;
  }
  
  public void a(String paramString) {
    this.indicador = paramString;
  }
  
  public String b() {
    return this.label;
  }
  
  public void b(String paramString) {
    this.label = paramString;
  }
  
  public String c() {
    return this.valor;
  }
  
  public void c(String paramString) {
    this.valor = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */