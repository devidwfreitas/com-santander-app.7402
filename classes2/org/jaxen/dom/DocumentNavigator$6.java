package org.jaxen.dom;

import org.w3c.dom.Node;

class DocumentNavigator$6 extends DocumentNavigator$NodeIterator {
  private final DocumentNavigator this$0;
  
  DocumentNavigator$6(DocumentNavigator paramDocumentNavigator, Node paramNode) {
    super(paramDocumentNavigator, paramNode);
    this.this$0 = paramDocumentNavigator;
  }
  
  protected Node getFirstNode(Node paramNode) {
    if (paramNode == null)
      return null; 
    Node node2 = paramNode.getNextSibling();
    Node node1 = node2;
    return (node2 == null) ? getFirstNode(paramNode.getParentNode()) : node1;
  }
  
  protected Node getNextNode(Node paramNode) {
    if (paramNode == null)
      return null; 
    Node node2 = paramNode.getFirstChild();
    Node node1 = node2;
    if (node2 == null)
      node1 = paramNode.getNextSibling(); 
    node2 = node1;
    return (node1 == null) ? getFirstNode(paramNode.getParentNode()) : node2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */