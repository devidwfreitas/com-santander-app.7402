package org.dom4j.tree;

import java.util.Map;

public class ConcurrentReaderHashMap$Entry implements Map.Entry {
  protected final int hash;
  
  protected final Object key;
  
  protected final ConcurrentReaderHashMap$Entry next;
  
  protected volatile Object value;
  
  ConcurrentReaderHashMap$Entry(int paramInt, Object paramObject1, Object paramObject2, ConcurrentReaderHashMap$Entry paramConcurrentReaderHashMap$Entry) {
    this.hash = paramInt;
    this.key = paramObject1;
    this.next = paramConcurrentReaderHashMap$Entry;
    this.value = paramObject2;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof Map.Entry) {
      paramObject = paramObject;
      if (this.key.equals(paramObject.getKey()) && this.value.equals(paramObject.getValue()))
        return true; 
    } 
    return false;
  }
  
  public Object getKey() {
    return this.key;
  }
  
  public Object getValue() {
    return this.value;
  }
  
  public int hashCode() {
    return this.key.hashCode() ^ this.value.hashCode();
  }
  
  public Object setValue(Object paramObject) {
    if (paramObject == null)
      throw new NullPointerException(); 
    Object object = this.value;
    this.value = paramObject;
    return object;
  }
  
  public String toString() {
    return this.key + "=" + this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */