import java.io.Serializable;
import org.simpleframework.xml.Element;

public class jdq extends gnb implements Serializable {
  @Element(required = false)
  private String descricaoPerfil;
  
  @Element(required = false)
  private String expirado;
  
  @Element(required = false)
  private String mensagemTextoAPI;
  
  @Element(required = false)
  private boolean questionario;
  
  @Element(required = false)
  private boolean recusado;
  
  public void a(String paramString) {
    this.expirado = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.recusado = paramBoolean;
  }
  
  public boolean a() {
    return this.recusado;
  }
  
  public String b() {
    return this.expirado;
  }
  
  public void b(String paramString) {
    this.descricaoPerfil = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.questionario = paramBoolean;
  }
  
  public String c() {
    return this.descricaoPerfil;
  }
  
  public void c(String paramString) {
    this.mensagemTextoAPI = paramString;
  }
  
  public boolean d() {
    return this.questionario;
  }
  
  public String e() {
    return this.mensagemTextoAPI;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\jdq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */