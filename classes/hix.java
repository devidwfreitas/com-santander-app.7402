import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hix extends gnb implements Serializable {
  @Element(required = false)
  private hja cet13;
  
  public hja a() {
    return this.cet13;
  }
  
  public void a(hja paramhja) {
    this.cet13 = paramhja;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */