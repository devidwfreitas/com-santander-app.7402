package org.jaxen.xom;

import java.util.Iterator;

abstract class DocumentNavigator$IndexIterator implements Iterator {
  private int end = -1;
  
  private Object o = null;
  
  private int pos = 0;
  
  public DocumentNavigator$IndexIterator(Object paramObject, int paramInt1, int paramInt2) {
    this.o = paramObject;
    this.pos = paramInt1;
    this.end = paramInt2;
  }
  
  public abstract Object get(Object paramObject, int paramInt);
  
  public boolean hasNext() {
    return (this.pos < this.end);
  }
  
  public Object next() {
    Object object = this.o;
    int i = this.pos;
    this.pos = i + 1;
    return get(object, i);
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\xom\DocumentNavigator$IndexIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */