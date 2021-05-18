package org.dom4j;

import org.dom4j.tree.AbstractNode;
import org.dom4j.tree.DefaultNamespace;
import org.dom4j.tree.NamespaceCache;

public class Namespace extends AbstractNode {
  protected static final NamespaceCache CACHE = new NamespaceCache();
  
  public static final Namespace NO_NAMESPACE;
  
  public static final Namespace XML_NAMESPACE = CACHE.get("xml", "http://www.w3.org/XML/1998/namespace");
  
  private int hashCode;
  
  private String prefix;
  
  private String uri;
  
  static {
    NO_NAMESPACE = CACHE.get("", "");
  }
  
  public Namespace(String paramString1, String paramString2) {
    if (paramString1 == null)
      paramString1 = ""; 
    this.prefix = paramString1;
    if (paramString2 == null)
      paramString2 = ""; 
    this.uri = paramString2;
  }
  
  public static Namespace get(String paramString) {
    return CACHE.get(paramString);
  }
  
  public static Namespace get(String paramString1, String paramString2) {
    return CACHE.get(paramString1, paramString2);
  }
  
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    StringBuffer stringBuffer = new StringBuffer(10);
    String str = getPrefix();
    if (str != null && str.length() > 0) {
      stringBuffer.append("xmlns:");
      stringBuffer.append(str);
      stringBuffer.append("=\"");
      stringBuffer.append(getURI());
      stringBuffer.append("\"");
      return stringBuffer.toString();
    } 
    stringBuffer.append("xmlns=\"");
    stringBuffer.append(getURI());
    stringBuffer.append("\"");
    return stringBuffer.toString();
  }
  
  public int createHashCode() {
    int j = this.uri.hashCode() ^ this.prefix.hashCode();
    int i = j;
    if (j == 0)
      i = 47806; 
    return i;
  }
  
  protected Node createXPathResult(Element paramElement) {
    return (Node)new DefaultNamespace(paramElement, getPrefix(), getURI());
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject instanceof Namespace) {
        paramObject = paramObject;
        if (hashCode() == paramObject.hashCode())
          return !(!this.uri.equals(paramObject.getURI()) || !this.prefix.equals(paramObject.getPrefix())); 
      } 
      return false;
    } 
    return true;
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.NAMESPACE_NODE;
  }
  
  public String getPath(Element paramElement) {
    StringBuffer stringBuffer = new StringBuffer(10);
    Element element = getParent();
    if (element != null && element != paramElement) {
      stringBuffer.append(element.getPath(paramElement));
      stringBuffer.append('/');
    } 
    stringBuffer.append(getXPathNameStep());
    return stringBuffer.toString();
  }
  
  public String getPrefix() {
    return this.prefix;
  }
  
  public String getStringValue() {
    return this.uri;
  }
  
  public String getText() {
    return this.uri;
  }
  
  public String getURI() {
    return this.uri;
  }
  
  public String getUniquePath(Element paramElement) {
    StringBuffer stringBuffer = new StringBuffer(10);
    Element element = getParent();
    if (element != null && element != paramElement) {
      stringBuffer.append(element.getUniquePath(paramElement));
      stringBuffer.append('/');
    } 
    stringBuffer.append(getXPathNameStep());
    return stringBuffer.toString();
  }
  
  public String getXPathNameStep() {
    return (this.prefix != null && !"".equals(this.prefix)) ? ("namespace::" + this.prefix) : "namespace::*[name()='']";
  }
  
  public int hashCode() {
    if (this.hashCode == 0)
      this.hashCode = createHashCode(); 
    return this.hashCode;
  }
  
  public String toString() {
    return super.toString() + " [Namespace: prefix " + getPrefix() + " mapped to URI \"" + getURI() + "\"]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Namespace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */