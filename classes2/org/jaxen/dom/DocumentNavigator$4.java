package org.jaxen.dom;

import org.w3c.dom.Node;

class DocumentNavigator$4 extends DocumentNavigator$NodeIterator {
  private final DocumentNavigator this$0;
  
  DocumentNavigator$4(DocumentNavigator paramDocumentNavigator, Node paramNode) {
    super(paramDocumentNavigator, paramNode);
    this.this$0 = paramDocumentNavigator;
  }
  
  protected Node getFirstNode(Node paramNode) {
    return getNextNode(paramNode);
  }
  
  protected Node getNextNode(Node paramNode) {
    return paramNode.getNextSibling();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */