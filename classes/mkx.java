import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mkx implements Serializable {
  @Element(required = false)
  private String valorMaximoDoc;
  
  @Element(required = false)
  private String valorMaximoTed;
  
  @Element(required = false)
  private String valorMinimoDoc;
  
  @Element(required = false)
  private String valorMinimoTed;
  
  public String a() {
    return this.valorMaximoDoc;
  }
  
  public void a(String paramString) {
    this.valorMaximoDoc = paramString;
  }
  
  public String b() {
    return this.valorMaximoTed;
  }
  
  public void b(String paramString) {
    this.valorMaximoTed = paramString;
  }
  
  public String c() {
    return this.valorMinimoDoc;
  }
  
  public void c(String paramString) {
    this.valorMinimoDoc = paramString;
  }
  
  public String d() {
    return this.valorMinimoTed;
  }
  
  public void d(String paramString) {
    this.valorMinimoTed = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mkx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */