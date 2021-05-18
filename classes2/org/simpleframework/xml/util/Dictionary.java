package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.Iterator;

public class Dictionary<T extends Entry> extends AbstractSet<T> {
  protected final Dictionary$Table<T> map = new Dictionary$Table<T>();
  
  public boolean add(T paramT) {
    return (this.map.put(paramT.getName(), paramT) != null);
  }
  
  public T get(String paramString) {
    return this.map.get(paramString);
  }
  
  public Iterator<T> iterator() {
    return this.map.values().iterator();
  }
  
  public T remove(String paramString) {
    return this.map.remove(paramString);
  }
  
  public int size() {
    return this.map.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\Dictionary.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */