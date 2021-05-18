package org.dom4j.tree;

import java.util.AbstractCollection;
import java.util.Iterator;

class ConcurrentReaderHashMap$Values extends AbstractCollection {
  private ConcurrentReaderHashMap$Values() {}
  
  public void clear() {
    ConcurrentReaderHashMap.this.clear();
  }
  
  public boolean contains(Object paramObject) {
    return ConcurrentReaderHashMap.this.containsValue(paramObject);
  }
  
  public Iterator iterator() {
    return new ConcurrentReaderHashMap$ValueIterator(ConcurrentReaderHashMap.this);
  }
  
  public int size() {
    return ConcurrentReaderHashMap.this.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$Values.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */