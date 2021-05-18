import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jdz implements Serializable {
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String nome;
  
  @Element(required = false)
  private String ordem;
  
  @Element(required = false)
  private String valor;
  
  public String a() {
    return this.valor;
  }
  
  public void a(String paramString) {
    this.valor = paramString;
  }
  
  public String b() {
    return this.descricao;
  }
  
  public void b(String paramString) {
    this.descricao = paramString;
  }
  
  public String c() {
    return this.nome;
  }
  
  public void c(String paramString) {
    this.nome = paramString;
  }
  
  public String d() {
    return this.ordem;
  }
  
  public void d(String paramString) {
    this.ordem = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */