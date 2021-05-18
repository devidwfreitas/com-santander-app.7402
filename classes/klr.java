import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "fields")
public class klr implements Serializable {
  @Element(required = false)
  private String indicador;
  
  @Element(required = false)
  private String label;
  
  @Element(required = false)
  private String linhasParaPular;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.label;
  }
  
  public void a(String paramString) {
    this.linhasParaPular = paramString;
  }
  
  public String b() {
    return this.valor;
  }
  
  public String c() {
    return this.indicador;
  }
  
  public String d() {
    return this.linhasParaPular;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */