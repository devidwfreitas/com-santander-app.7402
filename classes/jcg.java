import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jcg extends gnb implements Serializable {
  @Element(required = false)
  private String action;
  
  @Element(required = false)
  private iow autenticarUsuario;
  
  @Element(required = false)
  private String connUuid;
  
  @Element(required = false)
  private String cpf;
  
  @Element(required = false)
  private String nome;
  
  @Element(required = false)
  private String numeroCartao;
  
  @Element(required = false)
  private String tokenSession;
  
  @Element(required = false)
  private jcj usuarioCpfSimplificado;
  
  public String a() {
    return this.numeroCartao;
  }
  
  public void a(iow paramiow) {
    this.autenticarUsuario = paramiow;
  }
  
  public void a(String paramString) {
    this.numeroCartao = paramString;
  }
  
  public void a(jcj paramjcj) {
    this.usuarioCpfSimplificado = paramjcj;
  }
  
  public String b() {
    return this.tokenSession;
  }
  
  public void b(String paramString) {
    this.tokenSession = paramString;
  }
  
  public jcj c() {
    return this.usuarioCpfSimplificado;
  }
  
  public void c(String paramString) {
    this.connUuid = paramString;
  }
  
  public String d() {
    return this.connUuid;
  }
  
  public void d(String paramString) {
    this.cpf = paramString;
  }
  
  public iow e() {
    return this.autenticarUsuario;
  }
  
  public void e(String paramString) {
    this.nome = paramString;
  }
  
  public String f() {
    return this.cpf;
  }
  
  public void f(String paramString) {
    this.action = paramString;
  }
  
  public String g() {
    return this.nome;
  }
  
  public String h() {
    return this.action;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jcg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */