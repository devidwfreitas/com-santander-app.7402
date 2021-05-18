import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class iuw extends goe implements Serializable {
  @Element(required = false)
  private String celular;
  
  @Element(required = false)
  private String ddd;
  
  public String a() {
    return this.ddd;
  }
  
  public void a(String paramString) {
    this.ddd = paramString;
  }
  
  public String b() {
    return this.celular;
  }
  
  public void b(String paramString) {
    this.celular = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iuw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */