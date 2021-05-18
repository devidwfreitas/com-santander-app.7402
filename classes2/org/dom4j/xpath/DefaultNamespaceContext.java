package org.dom4j.xpath;

import java.io.Serializable;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.jaxen.NamespaceContext;

public class DefaultNamespaceContext implements Serializable, NamespaceContext {
  private final Element element;
  
  public DefaultNamespaceContext(Element paramElement) {
    this.element = paramElement;
  }
  
  public static DefaultNamespaceContext create(Object paramObject) {
    DefaultNamespaceContext defaultNamespaceContext = null;
    if (paramObject instanceof Element) {
      paramObject = paramObject;
    } else if (paramObject instanceof Document) {
      paramObject = ((Document)paramObject).getRootElement();
    } else if (paramObject instanceof Node) {
      paramObject = ((Node)paramObject).getParent();
    } else {
      paramObject = null;
    } 
    if (paramObject != null)
      defaultNamespaceContext = new DefaultNamespaceContext((Element)paramObject); 
    return defaultNamespaceContext;
  }
  
  public String translateNamespacePrefixToUri(String paramString) {
    if (paramString != null && paramString.length() > 0) {
      Namespace namespace = this.element.getNamespaceForPrefix(paramString);
      if (namespace != null)
        return namespace.getURI(); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\xpath\DefaultNamespaceContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */