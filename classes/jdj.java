import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "request")
public class jdj extends goe implements Serializable {
  @Element(required = false)
  private boolean agendamento;
  
  @Element(required = false)
  private boolean assinaturaTermo;
  
  @Element(required = false)
  private String codigoFundo;
  
  @Element(required = false)
  private boolean consultiva;
  
  @Element(required = false)
  private String contaFundo;
  
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String tipoAplicacao;
  
  @Element(required = false)
  private String valorAplicacao;
  
  public String a() {
    return this.dataAgendamento;
  }
  
  public void a(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.agendamento = paramBoolean;
  }
  
  public void b(String paramString) {
    this.codigoFundo = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.assinaturaTermo = paramBoolean;
  }
  
  public boolean b() {
    return this.agendamento;
  }
  
  public void c(String paramString) {
    this.contaFundo = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.consultiva = paramBoolean;
  }
  
  public boolean c() {
    return this.assinaturaTermo;
  }
  
  public String d() {
    return this.codigoFundo;
  }
  
  public void d(String paramString) {
    this.tipoAplicacao = paramString;
  }
  
  public void e(String paramString) {
    this.valorAplicacao = paramString;
  }
  
  public boolean e() {
    return this.consultiva;
  }
  
  public String f() {
    return this.contaFundo;
  }
  
  public String g() {
    return this.tipoAplicacao;
  }
  
  public String h() {
    return this.valorAplicacao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */