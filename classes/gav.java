import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "telefones")
public class gav implements gkz, Serializable {
  @Element(required = false)
  private String ddd;
  
  @Element(required = false)
  private boolean isNovoNumero = false;
  
  @Element(required = false)
  private String numero;
  
  @Element(required = false)
  private String numeroFormatado;
  
  public String Y() {
    return this.numeroFormatado.trim();
  }
  
  public void a(String paramString) {
    this.numeroFormatado = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.isNovoNumero = paramBoolean;
  }
  
  public boolean a() {
    return this.isNovoNumero;
  }
  
  public String b() {
    return this.numeroFormatado;
  }
  
  public void b(String paramString) {
    this.numeroFormatado = paramString;
  }
  
  public String c() {
    return this.numeroFormatado;
  }
  
  public void c(String paramString) {
    this.numero = paramString;
  }
  
  public String d() {
    return this.numero;
  }
  
  public void d(String paramString) {
    this.ddd = paramString;
  }
  
  public String e() {
    return this.ddd;
  }
  
  public String toString() {
    return this.numeroFormatado.trim();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */