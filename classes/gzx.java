import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class gzx extends goe implements Serializable {
  @Element(required = false)
  private String infoMobile;
  
  public String a() {
    return this.infoMobile;
  }
  
  public void a(String paramString) {
    this.infoMobile = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gzx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */