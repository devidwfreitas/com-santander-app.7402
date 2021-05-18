package org.jaxen.xom;

import nu.xom.Element;

class DocumentNavigator$XPathNamespace {
  private Element element;
  
  private String prefix;
  
  private String uri;
  
  public DocumentNavigator$XPathNamespace(Element paramElement, String paramString1, String paramString2) {
    this.element = paramElement;
    this.uri = paramString1;
    this.prefix = paramString2;
  }
  
  public Element getElement() {
    return this.element;
  }
  
  public String getNamespacePrefix() {
    return this.prefix;
  }
  
  public String getNamespaceURI() {
    return this.uri;
  }
  
  public String toString() {
    return "[xmlns:" + this.prefix + "=\"" + this.uri + "\", element=" + this.element.getLocalName() + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\xom\DocumentNavigator$XPathNamespace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */