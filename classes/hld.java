import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hld extends gnb implements Serializable {
  @ElementList(required = false)
  private List<hlb> CPsCancelaveis;
  
  public List<hlb> a() {
    return this.CPsCancelaveis;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */