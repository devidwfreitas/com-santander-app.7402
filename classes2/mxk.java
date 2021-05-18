import java.util.Comparator;
import org.dom4j.Element;

final class mxk implements Comparator<Element> {
  public int a(Element paramElement1, Element paramElement2) {
    return paramElement1.getName().toLowerCase().compareTo(paramElement2.getName().toLowerCase());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */