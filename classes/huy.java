import org.simpleframework.xml.Element;

public class huy extends gnb {
  @Element(required = false)
  private String textoDocumento;
  
  public String a() {
    return this.textoDocumento;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\huy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */