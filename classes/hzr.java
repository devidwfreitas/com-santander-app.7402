import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hzr extends gnb implements Serializable {
  @ElementList(name = "servicos", required = false)
  private List<hzp> servicosModelList;
  
  public List<hzp> a() {
    return this.servicosModelList;
  }
  
  public void a(List<hzp> paramList) {
    this.servicosModelList = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */