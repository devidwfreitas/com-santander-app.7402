package org.dom4j.io;

import java.util.Iterator;
import javax.xml.namespace.QName;
import org.dom4j.Attribute;

class STAXEventWriter$AttributeIterator implements Iterator {
  private Iterator iter;
  
  public STAXEventWriter$AttributeIterator(Iterator paramIterator) {
    this.iter = paramIterator;
  }
  
  public boolean hasNext() {
    return this.iter.hasNext();
  }
  
  public Object next() {
    Attribute attribute = this.iter.next();
    QName qName = STAXEventWriter.this.createQName(attribute.getQName());
    String str = attribute.getValue();
    return STAXEventWriter.access$000(STAXEventWriter.this).createAttribute(qName, str);
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\STAXEventWriter$AttributeIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */