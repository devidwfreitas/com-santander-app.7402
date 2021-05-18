import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class frf extends goe implements Serializable {
  @Element(required = false)
  private String dataSolicitada;
  
  @Element(required = false)
  private String horaSolicitada;
  
  @Element(required = false)
  private String indiceAgendamento;
  
  @Element(required = false)
  private String numProtocoloAgendamento;
  
  public String a() {
    return this.indiceAgendamento;
  }
  
  public void a(String paramString) {
    this.indiceAgendamento = paramString;
  }
  
  public String b() {
    return this.dataSolicitada;
  }
  
  public void b(String paramString) {
    this.dataSolicitada = paramString;
  }
  
  public String c() {
    return this.horaSolicitada;
  }
  
  public void c(String paramString) {
    this.horaSolicitada = paramString;
  }
  
  public String d() {
    return this.numProtocoloAgendamento;
  }
  
  public void d(String paramString) {
    this.numProtocoloAgendamento = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\frf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */