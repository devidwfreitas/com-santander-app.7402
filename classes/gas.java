import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gas extends gnb implements Serializable {
  @ElementList(name = "moedas", required = false)
  private List<gaz> moedas;
  
  public gas() {}
  
  public gas(List<gaz> paramList) {
    this.moedas = paramList;
  }
  
  public List<gaz> a() {
    return this.moedas;
  }
  
  public void a(List<gaz> paramList) {
    this.moedas = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gas.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */