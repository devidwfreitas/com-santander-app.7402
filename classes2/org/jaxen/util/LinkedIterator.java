package org.jaxen.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class LinkedIterator implements Iterator {
  private int cur = 0;
  
  private List iterators = new ArrayList();
  
  public void addIterator(Iterator paramIterator) {
    this.iterators.add(paramIterator);
  }
  
  public boolean hasNext() {
    if (this.cur < this.iterators.size()) {
      boolean bool2 = ((Iterator)this.iterators.get(this.cur)).hasNext();
      boolean bool1 = bool2;
      if (!bool2) {
        bool1 = bool2;
        if (this.cur < this.iterators.size()) {
          this.cur++;
          bool1 = hasNext();
        } 
      } 
      return bool1;
    } 
    return false;
  }
  
  public Object next() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    return ((Iterator)this.iterators.get(this.cur)).next();
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxe\\util\LinkedIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */