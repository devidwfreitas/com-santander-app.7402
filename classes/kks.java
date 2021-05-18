import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class kks extends gnb {
  @Element(required = false)
  private String appKey;
  
  @Element(required = false)
  private String clientPublicKey;
  
  @Element(required = false)
  private String system;
  
  public String a() {
    return this.clientPublicKey;
  }
  
  public void a(String paramString) {
    this.clientPublicKey = paramString;
  }
  
  public String b() {
    return this.system;
  }
  
  public void b(String paramString) {
    this.system = paramString;
  }
  
  public String c() {
    return this.appKey;
  }
  
  public void c(String paramString) {
    this.appKey = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */