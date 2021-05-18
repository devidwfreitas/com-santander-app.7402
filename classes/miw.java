import java.io.Serializable;
import org.simpleframework.xml.Element;

public class miw extends gnb implements Serializable {
  @Element(required = false)
  private boolean aceito;
  
  @Element(required = false)
  private String descricaoDesenquadramento;
  
  @Element(required = false)
  private boolean desenquadramento;
  
  @Element(required = false)
  private boolean dispensado;
  
  public void a(String paramString) {
    this.descricaoDesenquadramento = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.aceito = paramBoolean;
  }
  
  public boolean a() {
    return this.aceito;
  }
  
  public void b(boolean paramBoolean) {
    this.desenquadramento = paramBoolean;
  }
  
  public boolean b() {
    return this.desenquadramento;
  }
  
  public String c() {
    return this.descricaoDesenquadramento;
  }
  
  public void c(boolean paramBoolean) {
    this.dispensado = paramBoolean;
  }
  
  public boolean d() {
    return this.dispensado;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\miw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */