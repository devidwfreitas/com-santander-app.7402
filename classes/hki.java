import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hki extends gnb implements Serializable {
  @Element(required = false)
  private hkl cetIR;
  
  public hkl a() {
    return this.cetIR;
  }
  
  public void a(hkl paramhkl) {
    this.cetIR = this.cetIR;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */