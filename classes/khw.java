import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "operadoraRecarga")
public class khw implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String banco;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String mensagemPromocional;
  
  @Element(required = false)
  private String valores;
  
  public String a() {
    return this.agencia;
  }
  
  public String b() {
    return this.banco;
  }
  
  public String c() {
    return this.conta;
  }
  
  public String d() {
    return this.descricao;
  }
  
  public String e() {
    return this.mensagemPromocional;
  }
  
  public String f() {
    return this.valores;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\khw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */