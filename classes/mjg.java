import java.io.Serializable;
import org.simpleframework.xml.Element;

public class mjg extends goe implements Serializable {
  @Element(required = false)
  private String codigoBanco;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String numeroConta;
  
  public String a() {
    return this.codigoBanco;
  }
  
  public void a(String paramString) {
    this.codigoBanco = paramString;
  }
  
  public String b() {
    return this.codigoSubProduto;
  }
  
  public void b(String paramString) {
    this.codigoSubProduto = paramString;
  }
  
  public String c() {
    return this.numeroConta;
  }
  
  public void c(String paramString) {
    this.numeroConta = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mjg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */