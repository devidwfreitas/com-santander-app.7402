package org.dom4j.tree;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

class ConcurrentReaderHashMap$EntrySet extends AbstractSet {
  private ConcurrentReaderHashMap$EntrySet() {}
  
  public void clear() {
    ConcurrentReaderHashMap.this.clear();
  }
  
  public boolean contains(Object paramObject) {
    if (paramObject instanceof Map.Entry) {
      paramObject = paramObject;
      Object object = ConcurrentReaderHashMap.this.get(paramObject.getKey());
      if (object != null && object.equals(paramObject.getValue()))
        return true; 
    } 
    return false;
  }
  
  public Iterator iterator() {
    return new ConcurrentReaderHashMap$HashIterator(ConcurrentReaderHashMap.this);
  }
  
  public boolean remove(Object paramObject) {
    return !(paramObject instanceof Map.Entry) ? false : ConcurrentReaderHashMap.this.findAndRemoveEntry((Map.Entry)paramObject);
  }
  
  public int size() {
    return ConcurrentReaderHashMap.this.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$EntrySet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */