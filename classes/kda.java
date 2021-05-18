import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "contrato")
public class kda implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String controleLegado;
  
  @Element(required = false)
  private String dataContratacao;
  
  @Element(required = false)
  private String nome;
  
  @Element(required = false)
  private String numeroProposta;
  
  @Element(required = false)
  private String saldoBruto;
  
  @Element(required = false)
  private String situacao;
  
  public String a() {
    return this.agencia;
  }
  
  public void a(String paramString) {
    this.agencia = paramString;
  }
  
  public String b() {
    return this.conta;
  }
  
  public void b(String paramString) {
    this.conta = paramString;
  }
  
  public String c() {
    return this.controleLegado;
  }
  
  public void c(String paramString) {
    this.controleLegado = paramString;
  }
  
  public String d() {
    return this.dataContratacao;
  }
  
  public void d(String paramString) {
    this.dataContratacao = paramString;
  }
  
  public String e() {
    return this.nome;
  }
  
  public void e(String paramString) {
    this.nome = paramString;
  }
  
  public String f() {
    return this.numeroProposta;
  }
  
  public void f(String paramString) {
    this.numeroProposta = paramString;
  }
  
  public String g() {
    return this.saldoBruto;
  }
  
  public void g(String paramString) {
    this.saldoBruto = paramString;
  }
  
  public String h() {
    return this.situacao;
  }
  
  public void h(String paramString) {
    this.situacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kda.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */