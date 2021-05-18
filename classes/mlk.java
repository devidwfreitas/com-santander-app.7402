import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mlk extends gnb {
  @ElementList(inline = true, name = "programacoes")
  private List<mlr> programacoes;
  
  public List<mlr> a() {
    return this.programacoes;
  }
  
  public void a(List<mlr> paramList) {
    this.programacoes = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */