import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "motivo")
public class gbb implements Serializable {
  @Element(required = false)
  private String codNatureza;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private boolean editavel = false;
  
  @Element(required = false)
  private String txObservacao;
  
  @Element(required = false)
  private String txPergAdic;
  
  @Element(required = false)
  private String valorEditavel;
  
  public void a(String paramString) {
    this.valorEditavel = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.editavel = paramBoolean;
  }
  
  public boolean a() {
    return this.editavel;
  }
  
  public String b() {
    return this.valorEditavel;
  }
  
  public void b(String paramString) {
    this.codNatureza = paramString;
  }
  
  public String c() {
    return this.codNatureza;
  }
  
  public void c(String paramString) {
    this.descricao = paramString;
  }
  
  public String d() {
    return this.descricao;
  }
  
  public void d(String paramString) {
    this.txObservacao = paramString;
  }
  
  public String e() {
    return this.txObservacao;
  }
  
  public void e(String paramString) {
    this.txPergAdic = paramString;
  }
  
  public String f() {
    return this.txPergAdic;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gbb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */