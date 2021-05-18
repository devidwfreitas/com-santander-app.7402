import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class huq extends gnb {
  @Element(required = false)
  private String identificacaoProduto;
  
  @Element(required = false)
  private String possuiElegibilidade;
  
  public boolean a() {
    return this.identificacaoProduto.equalsIgnoreCase("CREDITO_UNIFICADO");
  }
  
  public boolean b() {
    return this.identificacaoProduto.equalsIgnoreCase("REORGANIZACAO");
  }
  
  public boolean c() {
    return this.possuiElegibilidade.equalsIgnoreCase("S");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\huq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */