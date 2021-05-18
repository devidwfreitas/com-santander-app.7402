import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class miy extends gnb implements Serializable {
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String dataContabil;
  
  @Element(required = false)
  private String descricaoSubProduto;
  
  @ElementList(inline = true, required = false)
  private List<miz> listPrazo;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String prazoMaximo;
  
  @Element(required = false)
  private String rentabilidade100M;
  
  @Element(required = false)
  private String rentabilidade10M;
  
  @Element(required = false)
  private String rentabilidadeFuncionario;
  
  @Element(required = false)
  private String valorMinimo;
  
  public String a() {
    return this.dataContabil;
  }
  
  public void a(String paramString) {
    this.dataContabil = paramString;
  }
  
  public void a(List<miz> paramList) {
    this.listPrazo = paramList;
  }
  
  public String b() {
    return this.descricaoSubProduto;
  }
  
  public void b(String paramString) {
    this.descricaoSubProduto = paramString;
  }
  
  public String c() {
    return this.prazoMaximo;
  }
  
  public void c(String paramString) {
    this.prazoMaximo = paramString;
  }
  
  public String d() {
    return this.valorMinimo;
  }
  
  public void d(String paramString) {
    this.valorMinimo = paramString;
  }
  
  public String e() {
    return this.codigoRetorno;
  }
  
  public void e(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public String f() {
    return this.mensagemRetorno;
  }
  
  public void f(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public String g() {
    return this.rentabilidade100M;
  }
  
  public void g(String paramString) {
    this.rentabilidade100M = paramString;
  }
  
  public String h() {
    return this.rentabilidade10M;
  }
  
  public void h(String paramString) {
    this.rentabilidade10M = paramString;
  }
  
  public List<miz> i() {
    return this.listPrazo;
  }
  
  public String j() {
    return this.rentabilidadeFuncionario;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\miy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */