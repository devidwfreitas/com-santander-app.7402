import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class mjf extends gnb implements Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String dataVencimento;
  
  @Element(required = false)
  private String descricaoSubProduto;
  
  @ElementList(inline = true, required = false)
  private List<mjd> listaRemuneracao;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String percentual;
  
  @Element(required = false)
  private String prazo;
  
  @Element(required = false)
  private String taxaCDI;
  
  @Element(required = false)
  private String tipoInteresse;
  
  @Element(required = false)
  private String valorAplicado;
  
  public String a() {
    return this.dataVencimento;
  }
  
  public void a(String paramString) {
    this.dataVencimento = paramString;
  }
  
  public void a(List<mjd> paramList) {
    this.listaRemuneracao = paramList;
  }
  
  public String b() {
    return this.descricaoSubProduto;
  }
  
  public void b(String paramString) {
    this.descricaoSubProduto = paramString;
  }
  
  public String c() {
    return this.percentual;
  }
  
  public void c(String paramString) {
    this.percentual = paramString;
  }
  
  public String d() {
    return this.prazo;
  }
  
  public void d(String paramString) {
    this.prazo = paramString;
  }
  
  public String e() {
    return this.taxaCDI;
  }
  
  public void e(String paramString) {
    this.taxaCDI = paramString;
  }
  
  public String f() {
    return this.tipoInteresse;
  }
  
  public void f(String paramString) {
    this.tipoInteresse = paramString;
  }
  
  public String g() {
    return this.valorAplicado;
  }
  
  public void g(String paramString) {
    this.valorAplicado = paramString;
  }
  
  public List<mjd> h() {
    return this.listaRemuneracao;
  }
  
  public void h(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public String i() {
    return this.codigoRetorno;
  }
  
  public void i(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public String j() {
    return this.mensagemRetorno;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mjf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */