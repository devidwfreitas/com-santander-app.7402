import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gkg extends gnb {
  @ElementList(inline = false, required = false)
  private List<ioz> cartoes;
  
  public List<ioz> a() {
    return this.cartoes;
  }
  
  public void a(List<ioz> paramList) {
    this.cartoes = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gkg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */