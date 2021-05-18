import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "pais")
public class gbd implements gkz, Serializable, Comparable<gbd> {
  @Element(required = false)
  private String codigoPais;
  
  @Element(required = false)
  private boolean demaisPaises;
  
  @Element(required = false)
  private String nomePais;
  
  @Element(required = false)
  private int ordem;
  
  @Element(required = false)
  private String preferencial;
  
  public String Y() {
    return this.nomePais.trim();
  }
  
  public int a() {
    return this.ordem;
  }
  
  public int a(gbd paramgbd) {
    boolean bool = false;
    return (this.ordem > paramgbd.ordem) ? 1 : ((this.ordem < paramgbd.ordem) ? -1 : ((this.ordem == paramgbd.ordem) ? 0 : bool));
  }
  
  public void a(int paramInt) {
    this.ordem = paramInt;
  }
  
  public void a(String paramString) {
    this.codigoPais = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.demaisPaises = paramBoolean;
  }
  
  public void b(String paramString) {
    this.nomePais = paramString;
  }
  
  public boolean b() {
    return this.demaisPaises;
  }
  
  public String c() {
    return this.codigoPais;
  }
  
  public void c(String paramString) {
    this.preferencial = paramString;
  }
  
  public String d() {
    return this.nomePais;
  }
  
  public String e() {
    return this.preferencial;
  }
  
  public String toString() {
    return Y();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gbd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */