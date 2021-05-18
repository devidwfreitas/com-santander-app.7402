import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class jch extends gnb implements Serializable {
  @Element(required = false)
  private String erro;
  
  @Element(required = false)
  private String ticket;
  
  @Element(required = false)
  private String token;
  
  public String a() {
    return this.erro;
  }
  
  public void a(String paramString) {
    this.erro = paramString;
  }
  
  public String b() {
    return this.ticket;
  }
  
  public void b(String paramString) {
    this.ticket = paramString;
  }
  
  public String c() {
    return this.token;
  }
  
  public void c(String paramString) {
    this.token = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */