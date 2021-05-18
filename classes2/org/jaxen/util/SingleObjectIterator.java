package org.jaxen.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class SingleObjectIterator implements Iterator {
  private Object object;
  
  private boolean seen;
  
  public SingleObjectIterator(Object paramObject) {
    this.object = paramObject;
    this.seen = false;
  }
  
  public boolean hasNext() {
    return !this.seen;
  }
  
  public Object next() {
    if (hasNext()) {
      this.seen = true;
      return this.object;
    } 
    throw new NoSuchElementException();
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\SingleObjectIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */