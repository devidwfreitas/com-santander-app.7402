import org.simpleframework.xml.Element;

public class ipm {
  @eks(a = "indicador")
  @Element(required = false)
  private String indicador;
  
  @eks(a = "label")
  @Element(required = false)
  private String label;
  
  @eks(a = "valor")
  @Element(required = false)
  private String valor;
  
  public String a() {
    return (this.valor != null) ? this.valor : "";
  }
  
  public boolean b() {
    return (this.indicador != null && this.indicador.equalsIgnoreCase("S"));
  }
  
  public void c() {
    this.indicador = "S";
  }
  
  public void d() {
    this.indicador = "N";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ipm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */