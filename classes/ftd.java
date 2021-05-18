import java.io.Serializable;
import java.util.Vector;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class ftd extends fvu implements Serializable {
  private static final long a = 1L;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String dataContabil;
  
  @Element(required = false)
  private String descricaoSubProduto;
  
  @ElementList(required = false)
  private Vector<String> listPrazo = new Vector<String>();
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String prazoMaximo;
  
  @Element(required = false)
  private String rentabilidade100M;
  
  @Element(required = false)
  private String rentabilidade10M;
  
  @Element(required = false)
  private String valorMinimo;
  
  public String a() {
    return this.mensagemRetorno;
  }
  
  public void a(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public void a(Vector<String> paramVector) {
    this.listPrazo = paramVector;
  }
  
  public String b() {
    return this.rentabilidade100M;
  }
  
  public void b(String paramString) {
    this.rentabilidade100M = paramString;
  }
  
  public void b(Vector<String> paramVector) {
    this.listPrazo = paramVector;
  }
  
  public String c() {
    return this.rentabilidade10M;
  }
  
  public void c(String paramString) {
    this.rentabilidade10M = paramString;
  }
  
  public String d() {
    return this.codigoRetorno;
  }
  
  public void d(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public Vector<String> e() {
    return this.listPrazo;
  }
  
  public void e(String paramString) {
    this.dataContabil = paramString;
  }
  
  public Vector<String> f() {
    return this.listPrazo;
  }
  
  public void f(String paramString) {
    this.descricaoSubProduto = paramString;
  }
  
  public String g() {
    return this.dataContabil;
  }
  
  public void g(String paramString) {
    this.prazoMaximo = paramString;
  }
  
  public String h() {
    return this.descricaoSubProduto;
  }
  
  public void h(String paramString) {
    this.valorMinimo = paramString;
  }
  
  public String i() {
    return this.prazoMaximo;
  }
  
  public String j() {
    return this.valorMinimo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ftd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */