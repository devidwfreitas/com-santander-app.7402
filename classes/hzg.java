import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;

public class hzg extends gnb implements Serializable {
  @ElementList(required = false)
  private List<hze> motivoList;
  
  public List<hze> a() {
    return this.motivoList;
  }
  
  public void a(List<hze> paramList) {
    this.motivoList = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */