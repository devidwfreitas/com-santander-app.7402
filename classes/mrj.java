import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mrj {
  @Element(required = false)
  private mrp transfer;
  
  public mrp a() {
    return this.transfer;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mrj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */