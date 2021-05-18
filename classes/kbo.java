import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kbo extends gnb implements Serializable {
  @Element(required = false)
  private kbn dispositivo;
  
  public kbn a() {
    return this.dispositivo;
  }
  
  public void a(kbn paramkbn) {
    this.dispositivo = paramkbn;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */