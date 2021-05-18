import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mlb extends gnb {
  @Element(required = false)
  private String codNSU;
  
  public String a() {
    return this.codNSU;
  }
  
  public void a(String paramString) {
    this.codNSU = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */