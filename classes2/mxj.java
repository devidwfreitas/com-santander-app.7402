import android.util.Log;
import java.io.StringReader;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

public class mxj {
  public static final boolean a = true;
  
  public static String a(String paramString1, String paramString2) {
    List<Node> list = (new SAXReader()).read(new StringReader(paramString1)).selectNodes(paramString2);
    return (list != null && !list.isEmpty()) ? ((Node)list.get(0)).getText() : "";
  }
  
  public static StringBuilder a(String paramString1, String paramString2, Set<String> paramSet) {
    try {
      List<Node> list = (new SAXReader()).read(new StringReader(paramString1)).selectNodes(paramString2);
      if (list != null && !list.isEmpty()) {
        Node node = list.get(0);
        if (node instanceof Element) {
          StringBuilder stringBuilder = new StringBuilder();
          a((Element)node, stringBuilder, paramSet);
          return stringBuilder;
        } 
      } 
    } catch (DocumentException documentException) {
      Log.e("Error", documentException.toString());
    } 
    return new StringBuilder();
  }
  
  private static void a(Element paramElement, StringBuilder paramStringBuilder, Set<String> paramSet) {
    List<?> list = paramElement.elements();
    Collections.sort(list, new mxk());
    for (Element element : list) {
      if (!element.elements().isEmpty()) {
        a(element, paramStringBuilder, paramSet);
        continue;
      } 
      if (!paramSet.contains(element.getName()))
        paramStringBuilder.append(element.getText()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */