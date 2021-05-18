import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mls extends gnb {
  private String a;
  
  @Element(required = false)
  private String isValid;
  
  public String a() {
    return this.isValid;
  }
  
  public void a(String paramString) {
    this.isValid = paramString;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.a = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */