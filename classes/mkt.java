import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mkt extends gnb {
  @ElementList(inline = true, name = "listaContaCadastrada", required = false)
  private List<mle> listaContaCadastrada;
  
  @ElementList(inline = true, name = "listaFavorecidoSantander", required = false)
  private List<mlf> listaFavorecidoSantander;
  
  public List<mlf> a() {
    return this.listaFavorecidoSantander;
  }
  
  public void a(List<mlf> paramList) {
    this.listaFavorecidoSantander = paramList;
  }
  
  public List<mle> b() {
    return this.listaContaCadastrada;
  }
  
  public void b(List<mle> paramList) {
    this.listaContaCadastrada = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mkt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */