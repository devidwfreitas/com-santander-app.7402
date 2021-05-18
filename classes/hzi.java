import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class hzi extends goe implements Serializable {
  @Element(required = false)
  private String cpf;
  
  public String a() {
    return this.cpf;
  }
  
  public void a(String paramString) {
    this.cpf = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */