import java.io.Serializable;
import org.simpleframework.xml.Element;

public class huk implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String contratoContaCorrente;
  
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String numero;
  
  @Element(required = false)
  private String taxa;
  
  @Element(required = false)
  private String tipo;
  
  @Element(required = false)
  private String valor;
  
  public huk() {}
  
  public huk(String paramString1, String paramString2) {
    this.descricao = paramString1;
    this.valor = paramString2;
  }
  
  public String a() {
    return this.contratoContaCorrente;
  }
  
  public String b() {
    return (this.agencia != null) ? this.agencia : "";
  }
  
  public String c() {
    return (this.conta != null) ? this.conta : "";
  }
  
  public String d() {
    return this.descricao;
  }
  
  public String e() {
    return this.numero;
  }
  
  public String f() {
    return this.taxa;
  }
  
  public String g() {
    return this.tipo;
  }
  
  public String h() {
    return this.valor;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\huk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */