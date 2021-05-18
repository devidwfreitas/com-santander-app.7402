import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "servicos")
public class hzo implements Serializable {
  @Element(required = false)
  private hzp servicosModel;
  
  public hzp a() {
    return this.servicosModel;
  }
  
  public void a(hzp paramhzp) {
    this.servicosModel = paramhzp;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */