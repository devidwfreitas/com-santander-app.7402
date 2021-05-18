import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hiy extends gnb {
  @Element(required = false)
  private String dataSolicitacao;
  
  @Element(required = false)
  private String dataTransacao;
  
  @Element(required = false)
  private String horaSolicitacao;
  
  @Element(required = false)
  private String horaTransacao;
  
  public String a() {
    return this.dataTransacao;
  }
  
  public void a(String paramString) {
    this.dataTransacao = paramString;
  }
  
  public String b() {
    return this.horaTransacao;
  }
  
  public void b(String paramString) {
    this.horaTransacao = paramString;
  }
  
  public String c() {
    return this.dataSolicitacao;
  }
  
  public void c(String paramString) {
    this.dataSolicitacao = paramString;
  }
  
  public String d() {
    return this.horaSolicitacao;
  }
  
  public void d(String paramString) {
    this.horaSolicitacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hiy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */