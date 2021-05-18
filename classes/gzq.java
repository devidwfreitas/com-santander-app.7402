import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gzq extends goe implements Serializable {
  @Element(required = false)
  private String idDispositivo;
  
  public String a() {
    return this.idDispositivo;
  }
  
  public void a(String paramString) {
    this.idDispositivo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gzq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */