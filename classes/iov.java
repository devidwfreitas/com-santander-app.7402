import org.simpleframework.xml.Element;

public class iov {
  @Element(required = false)
  private String codProduto;
  
  @Element(required = false)
  private String codSubProduto;
  
  @Element(required = false)
  private String dataLimiteContrato;
  
  @Element(required = false)
  private String elegivel;
  
  public String a() {
    return this.codProduto;
  }
  
  public void a(String paramString) {
    this.codProduto = paramString;
  }
  
  public String b() {
    return this.codSubProduto;
  }
  
  public void b(String paramString) {
    this.codSubProduto = paramString;
  }
  
  public String c() {
    return this.elegivel;
  }
  
  public void c(String paramString) {
    this.elegivel = paramString;
  }
  
  public String d() {
    return this.dataLimiteContrato;
  }
  
  public void d(String paramString) {
    this.dataLimiteContrato = paramString;
  }
  
  public String toString() {
    return "AntecipacaoModel [codProduto=" + this.codProduto + ", codSubProduto=" + this.codSubProduto + ", elegivel=" + this.elegivel + ", dataLimiteContrato=" + this.dataLimiteContrato + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */