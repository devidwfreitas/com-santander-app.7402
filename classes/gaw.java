import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gaw extends gnb implements Serializable {
  @ElementList(name = "telefones", required = false)
  private List<gav> celularModelList;
  
  @Element(required = false)
  private String dataDebito;
  
  @Element(required = false)
  private String dataEnvio;
  
  @Element(required = false)
  private String mensagemInformativa;
  
  @Element(required = false)
  private String mensagemModal;
  
  @Element(required = false)
  private String mensagemRestricao;
  
  @ElementList(name = "motivos", required = false)
  private ArrayList<gbb> motivoEnvioModelList;
  
  @Element(required = false)
  private String possuiRestricoes;
  
  public String a() {
    return this.mensagemModal;
  }
  
  public void a(String paramString) {
    this.mensagemModal = paramString;
  }
  
  public void a(ArrayList<gbb> paramArrayList) {
    this.motivoEnvioModelList = paramArrayList;
  }
  
  public void a(List<gav> paramList) {
    this.celularModelList = paramList;
  }
  
  public String b() {
    return this.mensagemRestricao;
  }
  
  public void b(String paramString) {
    this.mensagemRestricao = paramString;
  }
  
  public String c() {
    return this.possuiRestricoes;
  }
  
  public void c(String paramString) {
    this.possuiRestricoes = paramString;
  }
  
  public String d() {
    return this.mensagemInformativa;
  }
  
  public void d(String paramString) {
    this.mensagemInformativa = paramString;
  }
  
  public List<gav> e() {
    return this.celularModelList;
  }
  
  public void e(String paramString) {
    this.dataDebito = paramString;
  }
  
  public ArrayList<gbb> f() {
    return this.motivoEnvioModelList;
  }
  
  public void f(String paramString) {
    this.dataEnvio = paramString;
  }
  
  public String g() {
    return this.dataDebito;
  }
  
  public String h() {
    return this.dataEnvio;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gaw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */