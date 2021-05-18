import java.io.Serializable;
import java.util.ArrayList;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class ivf extends gnb implements Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @ElementList(entry = "listaCelulares", name = "listaCelulares", required = false)
  private ArrayList<iuz> listaCelulares;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String quantidadeCelulares;
  
  public String a() {
    return this.codigoRetorno;
  }
  
  public void a(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public void a(ArrayList<iuz> paramArrayList) {
    this.listaCelulares = paramArrayList;
  }
  
  public String b() {
    return this.mensagemRetorno;
  }
  
  public void b(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public ArrayList<iuz> c() {
    return this.listaCelulares;
  }
  
  public void c(String paramString) {
    this.quantidadeCelulares = paramString;
  }
  
  public String d() {
    return this.quantidadeCelulares;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ivf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */