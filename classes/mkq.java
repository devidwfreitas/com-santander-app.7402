import java.io.Serializable;
import org.simpleframework.xml.Element;

public class mkq implements gkz, Serializable {
  @Element(required = false)
  private String banco;
  
  @Element(required = false)
  private String codigo;
  
  @Element(required = false)
  private String descripcao;
  
  @Element(required = false)
  private String ispb;
  
  @Element(required = false)
  private String nome;
  
  public String Y() {
    return "".equalsIgnoreCase(this.nome) ? (this.banco.trim() + " - " + this.descripcao.trim()) : (this.codigo.equalsIgnoreCase("99999") ? this.nome.trim() : (this.codigo.trim() + " - " + this.nome.trim()));
  }
  
  public String a() {
    return this.codigo;
  }
  
  public void a(String paramString) {
    this.codigo = paramString;
  }
  
  public String b() {
    return this.nome;
  }
  
  public void b(String paramString) {
    this.nome = paramString;
  }
  
  public String c() {
    return this.ispb;
  }
  
  public void c(String paramString) {
    this.ispb = paramString;
  }
  
  public String d() {
    return this.banco;
  }
  
  public void d(String paramString) {
    this.banco = paramString;
  }
  
  public String e() {
    return this.descripcao;
  }
  
  public void e(String paramString) {
    this.descripcao = paramString;
  }
  
  public String toString() {
    return "".equalsIgnoreCase(this.nome) ? (this.banco.trim() + " - " + this.descripcao.trim()) : (this.codigo.equalsIgnoreCase("99999") ? this.nome.trim() : (this.codigo.trim() + " - " + this.nome.trim()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mkq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */