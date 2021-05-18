import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "HabilitarTIDNMRequest")
public class ifa extends goe implements Serializable {
  @Element(required = false)
  private String habilitar;
  
  public String a() {
    return this.habilitar;
  }
  
  public void a(String paramString) {
    this.habilitar = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ifa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */