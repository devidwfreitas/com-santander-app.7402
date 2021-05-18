import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;

public class hzn implements Serializable {
  @ElementList(required = false)
  private List<hyy> anexos;
  
  public List<hyy> a() {
    return this.anexos;
  }
  
  public void a(List<hyy> paramList) {
    this.anexos = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */