import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gko extends gnb {
  @Element(required = false)
  private String ticket;
  
  public String a() {
    return this.ticket;
  }
  
  public void a(String paramString) {
    this.ticket = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */