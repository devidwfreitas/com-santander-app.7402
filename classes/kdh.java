import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "contratoPrevidencia")
public class kdh implements Serializable {
  private String a;
  
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
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.agencia;
  }
  
  public void b(String paramString) {
    this.agencia = paramString;
  }
  
  public String c() {
    return this.conta;
  }
  
  public void c(String paramString) {
    this.conta = paramString;
  }
  
  public String d() {
    return this.controleLegado;
  }
  
  public void d(String paramString) {
    this.controleLegado = paramString;
  }
  
  public String e() {
    return this.dataContratacao;
  }
  
  public void e(String paramString) {
    this.dataContratacao = paramString;
  }
  
  public String f() {
    return this.nome;
  }
  
  public void f(String paramString) {
    this.nome = paramString;
  }
  
  public String g() {
    return this.numeroProposta;
  }
  
  public void g(String paramString) {
    this.numeroProposta = paramString;
  }
  
  public String h() {
    return this.saldoBruto;
  }
  
  public void h(String paramString) {
    this.saldoBruto = paramString;
  }
  
  public String i() {
    return this.situacao;
  }
  
  public void i(String paramString) {
    this.situacao = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */