import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gxc extends gnb implements Serializable {
  @ElementList(inline = false, required = false)
  private List<gxa> campanhas;
  
  public List<gxa> a() {
    return this.campanhas;
  }
  
  public void a(List<gxa> paramList) {
    this.campanhas = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gxc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */