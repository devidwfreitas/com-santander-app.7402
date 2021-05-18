package org.dom4j.tree;

import java.util.AbstractSet;
import java.util.Iterator;

class ConcurrentReaderHashMap$KeySet extends AbstractSet {
  private ConcurrentReaderHashMap$KeySet() {}
  
  public void clear() {
    ConcurrentReaderHashMap.this.clear();
  }
  
  public boolean contains(Object paramObject) {
    return ConcurrentReaderHashMap.this.containsKey(paramObject);
  }
  
  public Iterator iterator() {
    return new ConcurrentReaderHashMap$KeyIterator(ConcurrentReaderHashMap.this);
  }
  
  public boolean remove(Object paramObject) {
    return (ConcurrentReaderHashMap.this.remove(paramObject) != null);
  }
  
  public int size() {
    return ConcurrentReaderHashMap.this.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$KeySet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */