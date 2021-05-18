import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mla extends goe {
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String horaAgendamento;
  
  @Element(required = false)
  private String numeroProtocolo;
  
  public String a() {
    return this.dataAgendamento;
  }
  
  public void a(String paramString) {
    this.dataAgendamento = paramString;
  }
  
  public String b() {
    return this.horaAgendamento;
  }
  
  public void b(String paramString) {
    this.horaAgendamento = paramString;
  }
  
  public String c() {
    return this.numeroProtocolo;
  }
  
  public void c(String paramString) {
    this.numeroProtocolo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */