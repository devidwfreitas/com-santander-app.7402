import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kca extends goe implements Serializable {
  @Element(required = false)
  private String numeroContrato;
  
  public String a() {
    return this.numeroContrato;
  }
  
  public void a(String paramString) {
    this.numeroContrato = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */