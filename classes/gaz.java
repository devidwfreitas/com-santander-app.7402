import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "moeda")
public class gaz implements gkz, Serializable {
  @Element(required = false)
  private String centavos;
  
  @Element(required = false)
  private String codigo;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private gba moeda;
  
  @Element(required = false)
  private String sigla;
  
  public gaz() {}
  
  public gaz(gba paramgba, String paramString1, String paramString2) {
    this.moeda = paramgba;
    this.descricao = paramString1;
    this.sigla = paramString2;
  }
  
  public String Y() {
    return this.sigla + " - " + this.descricao;
  }
  
  public String a() {
    return this.descricao;
  }
  
  public void a(gba paramgba) {
    this.moeda = paramgba;
  }
  
  public void a(String paramString) {
    this.descricao = paramString;
  }
  
  public gba b() {
    return this.moeda;
  }
  
  public void b(String paramString) {
    this.sigla = paramString;
  }
  
  public String c() {
    return this.sigla;
  }
  
  public void c(String paramString) {
    this.codigo = paramString;
  }
  
  public String d() {
    return this.codigo;
  }
  
  public void d(String paramString) {
    this.centavos = paramString;
  }
  
  public String e() {
    return this.centavos;
  }
  
  public String toString() {
    return Y();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gaz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */