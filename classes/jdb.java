import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "categoria")
public class jdb implements Serializable {
  @Element(required = false)
  private boolean button;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String corCategoria;
  
  @Element(required = false)
  private String descricaoCategoria;
  
  @Element(required = false)
  private String percentual;
  
  @Element(required = false)
  private String target;
  
  @Element(required = false)
  private String valorBruto;
  
  public void a(String paramString) {
    this.target = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.button = paramBoolean;
  }
  
  public boolean a() {
    return this.button;
  }
  
  public String b() {
    return this.target;
  }
  
  public void b(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String c() {
    return this.codigoProduto;
  }
  
  public void c(String paramString) {
    this.corCategoria = paramString;
  }
  
  public String d() {
    return this.corCategoria;
  }
  
  public void d(String paramString) {
    this.descricaoCategoria = paramString;
  }
  
  public String e() {
    return this.descricaoCategoria;
  }
  
  public void e(String paramString) {
    this.percentual = paramString;
  }
  
  public String f() {
    return this.percentual;
  }
  
  public void f(String paramString) {
    this.valorBruto = paramString;
  }
  
  public String g() {
    return this.valorBruto;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */