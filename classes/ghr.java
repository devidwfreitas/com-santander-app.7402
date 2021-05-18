import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class ghr extends goe implements Serializable {
  @Element(required = false)
  private String codFunc;
  
  public String a() {
    return this.codFunc;
  }
  
  public void a(String paramString) {
    this.codFunc = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ghr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */