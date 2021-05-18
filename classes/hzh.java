import java.io.Serializable;
import org.simpleframework.xml.Element;

public class hzh implements Serializable {
  @Element(name = "observacaoDescricao", required = false)
  private String observacao;
  
  @Element(required = false)
  private String titulo;
  
  public String a() {
    return this.observacao;
  }
  
  public void a(String paramString) {
    this.observacao = paramString;
  }
  
  public String b() {
    return this.titulo;
  }
  
  public void b(String paramString) {
    this.titulo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */