import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class kbu extends gnb implements Serializable {
  @Element(required = false)
  private String agencia;
  
  @Element(required = false)
  private String codNSU;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoSubproduto;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String descricaoIndicadorExtratoATM;
  
  @Element(required = false)
  private String indicadorExtratoATM;
  
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
    return this.descricaoIndicadorExtratoATM;
  }
  
  public void c(String paramString) {
    this.descricaoIndicadorExtratoATM = paramString;
  }
  
  public String d() {
    return this.codNSU;
  }
  
  public void d(String paramString) {
    this.codNSU = paramString;
  }
  
  public String e() {
    return this.codigoSubproduto;
  }
  
  public void e(String paramString) {
    this.codigoSubproduto = paramString;
  }
  
  public String f() {
    return this.codigoProduto;
  }
  
  public void f(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public String g() {
    return this.indicadorExtratoATM;
  }
  
  public void g(String paramString) {
    this.indicadorExtratoATM = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kbu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */