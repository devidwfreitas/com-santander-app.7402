package org.simpleframework.xml.stream;

import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

class DocumentReader$Start extends EventElement {
  private final Element element;
  
  public DocumentReader$Start(Node paramNode) {
    this.element = (Element)paramNode;
  }
  
  public NamedNodeMap getAttributes() {
    return this.element.getAttributes();
  }
  
  public String getName() {
    return this.element.getLocalName();
  }
  
  public String getPrefix() {
    return this.element.getPrefix();
  }
  
  public String getReference() {
    return this.element.getNamespaceURI();
  }
  
  public Object getSource() {
    return this.element;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\DocumentReader$Start.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */