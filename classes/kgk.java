import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "programacoesRecargaResultListResponse")
public class kgk extends gnb implements Serializable {
  @Element(required = false)
  private String mensagemAEA = "";
  
  @ElementList(inline = true, required = false)
  private List<kgm> programacoesRecarga;
  
  public List<kgm> a() {
    return this.programacoesRecarga;
  }
  
  public void a(String paramString) {
    this.mensagemAEA = paramString;
  }
  
  public void a(List<kgm> paramList) {
    this.programacoesRecarga = paramList;
  }
  
  public String b() {
    return this.mensagemAEA;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */