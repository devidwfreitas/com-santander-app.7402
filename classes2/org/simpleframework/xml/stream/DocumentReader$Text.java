package org.simpleframework.xml.stream;

import org.w3c.dom.Node;

class DocumentReader$Text extends EventToken {
  private final Node node;
  
  public DocumentReader$Text(Node paramNode) {
    this.node = paramNode;
  }
  
  public Object getSource() {
    return this.node;
  }
  
  public String getValue() {
    return this.node.getNodeValue();
  }
  
  public boolean isText() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\DocumentReader$Text.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */