import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "listaProdutos")
public class mjc implements Serializable {
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String nomeProduto;
  
  public String a() {
    return this.codigoProduto;
  }
  
  public void a(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String b() {
    return this.nomeProduto;
  }
  
  public void b(String paramString) {
    this.nomeProduto = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mjc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */