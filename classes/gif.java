import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "listaParcela")
public class gif implements Serializable {
  @Element(required = false)
  private String idParcela;
  
  @Element(required = false)
  private String parcelaSelecionada;
  
  @Element(required = false)
  private String quantidadeParcela;
  
  @Element(required = false)
  private String valorParcela;
  
  public String a() {
    return this.idParcela;
  }
  
  public void a(String paramString) {
    this.idParcela = paramString;
  }
  
  public String b() {
    return this.parcelaSelecionada;
  }
  
  public void b(String paramString) {
    this.parcelaSelecionada = paramString;
  }
  
  public String c() {
    return this.quantidadeParcela;
  }
  
  public void c(String paramString) {
    this.quantidadeParcela = paramString;
  }
  
  public String d() {
    return this.valorParcela;
  }
  
  public void d(String paramString) {
    this.valorParcela = paramString;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof gif) {
      paramObject = paramObject;
      return this.quantidadeParcela.equals(((gif)paramObject).quantidadeParcela);
    } 
    return false;
  }
  
  public String toString() {
    return Integer.parseInt(this.quantidadeParcela) + "x " + naj.f(this.valorParcela);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */