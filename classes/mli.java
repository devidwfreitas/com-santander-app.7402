import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mli extends gnb {
  @ElementList(entry = "listaISPB", inline = true, name = "listaISPB", required = false)
  private List<mkq> listaISPB;
  
  @ElementList(entry = "listadoBancos", inline = true, name = "listadoBancos", required = false)
  private List<mkq> listadoBancos;
  
  public List<mkq> a() {
    return this.listadoBancos;
  }
  
  public void a(List<mkq> paramList) {
    this.listadoBancos = paramList;
  }
  
  public List<mkq> b() {
    return this.listaISPB;
  }
  
  public void b(List<mkq> paramList) {
    this.listaISPB = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mli.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */