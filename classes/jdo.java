import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;

public class jdo extends gnb implements Serializable {
  @ElementList(name = "legendas", required = false)
  private List<jdz> legendas;
  
  public List<jdz> a() {
    return this.legendas;
  }
  
  public void a(List<jdz> paramList) {
    this.legendas = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */