package org.jaxen.dom;

import org.w3c.dom.Attr;
import org.w3c.dom.Node;

class DocumentNavigator$2 extends DocumentNavigator$NodeIterator {
  private final DocumentNavigator this$0;
  
  DocumentNavigator$2(DocumentNavigator paramDocumentNavigator, Node paramNode) {
    super(paramDocumentNavigator, paramNode);
    this.this$0 = paramDocumentNavigator;
  }
  
  protected Node getFirstNode(Node paramNode) {
    return ((Attr)paramNode).getOwnerElement();
  }
  
  protected Node getNextNode(Node paramNode) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */