import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
class hyq extends gnb {
  @Element(required = false)
  private String codProduto;
  
  @Element(required = false)
  private String codSubProduto;
  
  @Element(required = false)
  private String dataLimiteContrato;
  
  @Element(required = false)
  private String elegivel;
  
  public boolean a() {
    return (this.elegivel != null && this.elegivel.equalsIgnoreCase("S"));
  }
  
  public String b() {
    return this.codProduto;
  }
  
  public String c() {
    return this.codSubProduto;
  }
  
  public String d() {
    return this.dataLimiteContrato;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hyq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */