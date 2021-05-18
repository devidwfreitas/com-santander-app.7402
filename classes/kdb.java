import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "beneficiario")
public class kdb extends gnb implements Serializable {
  @Element(required = false)
  private String dataNascimentoBeneficiario;
  
  @Element(required = false)
  private String nome;
  
  @Element(required = false)
  private String parentesco;
  
  @Element(required = false)
  private String percentualRateio;
  
  @Element(required = false)
  private String sexo;
  
  public String a() {
    return this.dataNascimentoBeneficiario;
  }
  
  public void a(String paramString) {
    this.dataNascimentoBeneficiario = paramString;
  }
  
  public String b() {
    return this.nome;
  }
  
  public void b(String paramString) {
    this.nome = paramString;
  }
  
  public String c() {
    return this.parentesco;
  }
  
  public void c(String paramString) {
    this.parentesco = paramString;
  }
  
  public String d() {
    return this.percentualRateio;
  }
  
  public void d(String paramString) {
    this.percentualRateio = paramString;
  }
  
  public String e() {
    return this.sexo;
  }
  
  public void e(String paramString) {
    this.sexo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kdb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */