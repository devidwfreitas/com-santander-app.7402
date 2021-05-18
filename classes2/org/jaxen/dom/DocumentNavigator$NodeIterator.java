package org.jaxen.dom;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.w3c.dom.Node;

abstract class DocumentNavigator$NodeIterator implements Iterator {
  private Node node;
  
  private final DocumentNavigator this$0;
  
  public DocumentNavigator$NodeIterator(DocumentNavigator paramDocumentNavigator, Node paramNode) {
    this.this$0 = paramDocumentNavigator;
    this.node = getFirstNode(paramNode);
    while (!isXPathNode(this.node))
      this.node = getNextNode(this.node); 
  }
  
  private boolean isXPathNode(Node paramNode) {
    if (paramNode == null)
      return true; 
    switch (paramNode.getNodeType()) {
      default:
        return true;
      case 5:
      case 6:
      case 10:
      case 11:
      case 12:
        break;
    } 
    return false;
  }
  
  protected abstract Node getFirstNode(Node paramNode);
  
  protected abstract Node getNextNode(Node paramNode);
  
  public boolean hasNext() {
    return (this.node != null);
  }
  
  public Object next() {
    if (this.node == null)
      throw new NoSuchElementException(); 
    Node node = this.node;
    this.node = getNextNode(this.node);
    while (!isXPathNode(this.node))
      this.node = getNextNode(this.node); 
    return node;
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator$NodeIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */