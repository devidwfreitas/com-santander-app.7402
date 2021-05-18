import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "programacoes")
public class mlr implements Serializable {
  @Element(required = false)
  private String banco;
  
  @Element(required = false)
  private String dataAgendamento;
  
  @Element(required = false)
  private String favorecido;
  
  @Element(required = false)
  private String horaAgendamento;
  
  @Element(required = false)
  private String numeroProtocolo;
  
  @Element(required = false)
  private String tipoTransferencia;
  
  @Element(required = false)
  private String valor;
  
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
    return this.favorecido;
  }
  
  public void c(String paramString) {
    this.favorecido = paramString;
  }
  
  public String d() {
    return this.banco;
  }
  
  public void d(String paramString) {
    this.banco = paramString;
  }
  
  public String e() {
    return this.numeroProtocolo;
  }
  
  public void e(String paramString) {
    this.numeroProtocolo = paramString;
  }
  
  public String f() {
    return this.tipoTransferencia;
  }
  
  public void f(String paramString) {
    this.tipoTransferencia = paramString;
  }
  
  public String g() {
    return this.valor;
  }
  
  public void g(String paramString) {
    this.valor = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mlr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */