import java.io.Serializable;
import java.util.LinkedList;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class ibr extends gnb implements Serializable {
  @ElementList(required = false)
  private LinkedList<ibo> faqList;
  
  public LinkedList<ibo> a() {
    return this.faqList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ibr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */