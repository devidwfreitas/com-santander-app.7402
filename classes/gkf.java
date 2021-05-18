import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class gkf extends goe {
  @ElementList(name = "cartoes")
  private List<ioz> cartoes;
  
  public List<ioz> a() {
    return this.cartoes;
  }
  
  public void a(List<ioz> paramList) {
    this.cartoes = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gkf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */