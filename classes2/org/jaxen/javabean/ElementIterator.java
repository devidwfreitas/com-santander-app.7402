package org.jaxen.javabean;

import java.util.Iterator;

public class ElementIterator implements Iterator {
  private Iterator iterator;
  
  private String name;
  
  private Element parent;
  
  public ElementIterator(Element paramElement, String paramString, Iterator paramIterator) {
    this.parent = paramElement;
    this.name = paramString;
    this.iterator = paramIterator;
  }
  
  public boolean hasNext() {
    return this.iterator.hasNext();
  }
  
  public Object next() {
    return new Element(this.parent, this.name, this.iterator.next());
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\javabean\ElementIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */