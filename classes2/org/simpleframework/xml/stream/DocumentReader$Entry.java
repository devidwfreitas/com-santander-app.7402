package org.simpleframework.xml.stream;

import org.w3c.dom.Node;

class DocumentReader$Entry extends EventAttribute {
  private final Node node;
  
  public DocumentReader$Entry(Node paramNode) {
    this.node = paramNode;
  }
  
  public String getName() {
    return this.node.getLocalName();
  }
  
  public String getPrefix() {
    return this.node.getPrefix();
  }
  
  public String getReference() {
    return this.node.getNamespaceURI();
  }
  
  public Object getSource() {
    return this.node;
  }
  
  public String getValue() {
    return this.node.getNodeValue();
  }
  
  public boolean isReserved() {
    String str1 = getPrefix();
    String str2 = getName();
    return (str1 != null) ? str1.startsWith("xml") : str2.startsWith("xml");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\DocumentReader$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */