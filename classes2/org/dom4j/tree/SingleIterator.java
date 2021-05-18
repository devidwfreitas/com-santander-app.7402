package org.dom4j.tree;

import java.util.Iterator;

public class SingleIterator<T> implements Iterator<T> {
  private boolean first = true;
  
  private T object;
  
  public SingleIterator(T paramT) {
    this.object = paramT;
  }
  
  public boolean hasNext() {
    return this.first;
  }
  
  public T next() {
    T t = this.object;
    this.object = null;
    this.first = false;
    return t;
  }
  
  public void remove() {
    throw new UnsupportedOperationException("remove() is not supported by this iterator");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\SingleIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */