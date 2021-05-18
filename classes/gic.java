import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class gic extends goe {
  @Element(required = false)
  private boolean agendamento;
  
  @Element(required = false)
  private String contratoCartao;
  
  @Element(required = false)
  private String entidade;
  
  @Element(required = false)
  private String numeroCartao;
  
  public String a() {
    return this.contratoCartao;
  }
  
  public void a(String paramString) {
    this.contratoCartao = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.agendamento = paramBoolean;
  }
  
  public String b() {
    return this.numeroCartao;
  }
  
  public void b(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public void c(String paramString) {
    this.entidade = paramString;
  }
  
  public boolean c() {
    return this.agendamento;
  }
  
  public String d() {
    return this.entidade;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */