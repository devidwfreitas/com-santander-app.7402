package org.dom4j.io;

import java.util.Iterator;
import org.dom4j.Namespace;

class STAXEventWriter$NamespaceIterator implements Iterator {
  private Iterator iter;
  
  public STAXEventWriter$NamespaceIterator(Iterator paramIterator) {
    this.iter = paramIterator;
  }
  
  public boolean hasNext() {
    return this.iter.hasNext();
  }
  
  public Object next() {
    Namespace namespace = this.iter.next();
    String str1 = namespace.getPrefix();
    String str2 = namespace.getURI();
    return STAXEventWriter.access$000(STAXEventWriter.this).createNamespace(str1, str2);
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\STAXEventWriter$NamespaceIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */