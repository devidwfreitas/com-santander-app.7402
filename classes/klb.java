import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class klb extends gnb implements Serializable {
  private int a;
  
  private String b;
  
  private String c;
  
  @ElementList(inline = true, required = false)
  private List<klv> listaDetalhe;
  
  @ElementList(inline = true, required = false)
  private ArrayList<klr> listaFields;
  
  @Element(required = false)
  private String rodapeTela;
  
  @Element(required = false)
  private String tituloTela;
  
  public String a() {
    return this.b;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(List<klv> paramList) {
    this.listaDetalhe = paramList;
  }
  
  public int b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public List<klv> d() {
    return this.listaDetalhe;
  }
  
  public List<klr> e() {
    return this.listaFields;
  }
  
  public String f() {
    return this.rodapeTela;
  }
  
  public String g() {
    return this.tituloTela;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\klb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */