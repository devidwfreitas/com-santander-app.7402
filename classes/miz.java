import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "listPrazo")
public class miz implements Serializable {
  @Element(required = false)
  private String prazo;
  
  public String a() {
    return this.prazo;
  }
  
  public void a(String paramString) {
    this.prazo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\miz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */