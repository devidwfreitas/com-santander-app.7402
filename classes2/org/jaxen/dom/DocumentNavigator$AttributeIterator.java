package org.jaxen.dom;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

class DocumentNavigator$AttributeIterator implements Iterator {
  private int lastAttribute = -1;
  
  private NamedNodeMap map;
  
  private int pos;
  
  DocumentNavigator$AttributeIterator(Node paramNode) {
    this.map = paramNode.getAttributes();
    this.pos = 0;
    for (int i = this.map.getLength() - 1;; i--) {
      if (i >= 0) {
        if (!"http://www.w3.org/2000/xmlns/".equals(this.map.item(i).getNamespaceURI())) {
          this.lastAttribute = i;
          return;
        } 
      } else {
        return;
      } 
    } 
  }
  
  public boolean hasNext() {
    return (this.pos <= this.lastAttribute);
  }
  
  public Object next() {
    NamedNodeMap namedNodeMap = this.map;
    int i = this.pos;
    this.pos = i + 1;
    Node node = namedNodeMap.item(i);
    if (node == null)
      throw new NoSuchElementException(); 
    Object object = node;
    if ("http://www.w3.org/2000/xmlns/".equals(node.getNamespaceURI()))
      object = next(); 
    return object;
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom\DocumentNavigator$AttributeIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */