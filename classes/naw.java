import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class naw extends goe implements Serializable {
  @Element(required = false)
  private String otp;
  
  public String a() {
    return this.otp;
  }
  
  public void a(String paramString) {
    this.otp = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\naw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */