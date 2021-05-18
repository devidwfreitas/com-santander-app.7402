import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "grupoContratoPrevidencia")
public class kdf implements Serializable {
  @ElementList(inline = true, required = false)
  private List<kdh> listaContratoPrevidenciaModels;
  
  @Element(required = false)
  private String saldoTotalGrupo;
  
  @Element(required = false)
  private String tituloGrupo;
  
  public String a() {
    return this.tituloGrupo;
  }
  
  public void a(String paramString) {
    this.tituloGrupo = paramString;
  }
  
  public void a(List<kdh> paramList) {
    this.listaContratoPrevidenciaModels = paramList;
  }
  
  public String b() {
    return this.saldoTotalGrupo;
  }
  
  public void b(String paramString) {
    this.saldoTotalGrupo = paramString;
  }
  
  public List<kdh> c() {
    return this.listaContratoPrevidenciaModels;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */