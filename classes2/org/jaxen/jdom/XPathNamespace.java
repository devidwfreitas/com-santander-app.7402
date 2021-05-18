package org.jaxen.jdom;

import org.jdom.Element;
import org.jdom.Namespace;

public class XPathNamespace {
  private Element jdomElement;
  
  private Namespace jdomNamespace;
  
  public XPathNamespace(Element paramElement, Namespace paramNamespace) {
    this.jdomElement = paramElement;
    this.jdomNamespace = paramNamespace;
  }
  
  public XPathNamespace(Namespace paramNamespace) {
    this.jdomNamespace = paramNamespace;
  }
  
  public Element getJDOMElement() {
    return this.jdomElement;
  }
  
  public Namespace getJDOMNamespace() {
    return this.jdomNamespace;
  }
  
  public void setJDOMElement(Element paramElement) {
    this.jdomElement = paramElement;
  }
  
  public String toString() {
    return "[xmlns:" + this.jdomNamespace.getPrefix() + "=\"" + this.jdomNamespace.getURI() + "\", element=" + this.jdomElement.getName() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\jdom\XPathNamespace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */