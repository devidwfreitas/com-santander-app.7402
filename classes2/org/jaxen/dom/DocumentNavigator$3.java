package org.jaxen.dom;

import org.w3c.dom.Node;

class DocumentNavigator$3 extends DocumentNavigator$NodeIterator {
  private final DocumentNavigator this$0;
  
  DocumentNavigator$3(DocumentNavigator paramDocumentNavigator, Node paramNode) {
    super(paramDocumentNavigator, paramNode);
    this.this$0 = paramDocumentNavigator;
  }
  
  protected Node getFirstNode(Node paramNode) {
    return paramNode.getParentNode();
  }
  
  protected Node getNextNode(Node paramNode) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */