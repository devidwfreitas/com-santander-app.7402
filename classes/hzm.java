import java.io.Serializable;
import java.util.ArrayList;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class hzm extends gnb implements Serializable {
  private ArrayList<gky> a;
  
  @Element(required = false)
  private String assunto;
  
  @Element(required = false)
  private String cpf;
  
  @Element(required = false)
  private String dataHora;
  
  @Element(required = false)
  private String mensagem;
  
  @Element(required = false)
  private String mensagemContato;
  
  @Element(required = false)
  private String motivo;
  
  @Element(required = false)
  private String protocolo;
  
  public ArrayList<gky> a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.assunto = paramString;
  }
  
  public void a(ArrayList<gky> paramArrayList) {
    this.a = paramArrayList;
  }
  
  public String b() {
    return this.assunto;
  }
  
  public void b(String paramString) {
    this.cpf = paramString;
  }
  
  public String c() {
    return this.cpf;
  }
  
  public void c(String paramString) {
    this.dataHora = paramString;
  }
  
  public String d() {
    return this.dataHora;
  }
  
  public void d(String paramString) {
    this.mensagem = paramString;
  }
  
  public String e() {
    return this.mensagem;
  }
  
  public void e(String paramString) {
    this.mensagemContato = paramString;
  }
  
  public String f() {
    return this.mensagemContato;
  }
  
  public void f(String paramString) {
    this.motivo = paramString;
  }
  
  public String g() {
    return this.motivo;
  }
  
  public void g(String paramString) {
    this.protocolo = paramString;
  }
  
  public String h() {
    return this.protocolo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hzm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */