import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mlc extends goe {
  @Element(required = false)
  private String agenciaOrigem;
  
  @Element(required = false)
  private String contaOrigem;
  
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String horaAgendamento;
  
  @Element(required = false)
  private String numeroProtocolo;
  
  public String a() {
    return this.agenciaOrigem;
  }
  
  public void a(String paramString) {
    this.agenciaOrigem = paramString;
  }
  
  public String b() {
    return this.contaOrigem;
  }
  
  public void b(String paramString) {
    this.contaOrigem = paramString;
  }
  
  public String c() {
    return this.dataAgendamento;
  }
  
  public void c(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String d() {
    return this.horaAgendamento;
  }
  
  public void d(String paramString) {
    this.horaAgendamento = paramString;
  }
  
  public String e() {
    return this.numeroProtocolo;
  }
  
  public void e(String paramString) {
    this.numeroProtocolo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */