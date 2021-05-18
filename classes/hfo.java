import android.support.annotation.NonNull;
import java.io.Serializable;
import org.simpleframework.xml.Element;

public class hfo implements Serializable, Comparable<hfo> {
  @Element(required = false)
  private String descricao;
  
  @Element(required = false)
  private String flHeader;
  
  @Element(required = false)
  private String ordem;
  
  @Element(required = false)
  private String valorItem;
  
  public int a(@NonNull hfo paramhfo) {
    return this.ordem.compareTo(paramhfo.ordem);
  }
  
  public boolean a() {
    return (this.flHeader != null && this.flHeader.equalsIgnoreCase("S"));
  }
  
  public String b() {
    return this.valorItem;
  }
  
  public String c() {
    return this.descricao;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */