import java.io.Serializable;
import java.util.ArrayList;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class gar extends gnb implements Serializable {
  @ElementList(name = "dadosComprovantes", required = false)
  private ArrayList<gku> dadosComprovantes;
  
  @Element(required = false)
  private String headerMensagem;
  
  @Element(required = false)
  private String mensagemCancelamento;
  
  @Element(required = false)
  private String numeroOperacao;
  
  public ArrayList<gku> a() {
    return this.dadosComprovantes;
  }
  
  public void a(String paramString) {
    this.headerMensagem = paramString;
  }
  
  public void a(ArrayList<gku> paramArrayList) {
    this.dadosComprovantes = paramArrayList;
  }
  
  public String b() {
    return this.headerMensagem;
  }
  
  public void b(String paramString) {
    this.mensagemCancelamento = paramString;
  }
  
  public String c() {
    return this.mensagemCancelamento;
  }
  
  public void c(String paramString) {
    this.numeroOperacao = paramString;
  }
  
  public String d() {
    return this.numeroOperacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */