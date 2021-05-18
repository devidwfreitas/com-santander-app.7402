package org.dom4j.util;

import java.util.HashMap;
import java.util.Map;
import org.dom4j.QName;

public class DoubleNameMap<T> {
  private Map<String, T> namedMap = new HashMap<String, T>();
  
  private Map<QName, T> qNamedMap = new HashMap<QName, T>();
  
  public T get(String paramString) {
    return this.namedMap.get(paramString);
  }
  
  public T get(QName paramQName) {
    return this.qNamedMap.get(paramQName);
  }
  
  public void put(QName paramQName, T paramT) {
    this.qNamedMap.put(paramQName, paramT);
    this.namedMap.put(paramQName.getName(), paramT);
  }
  
  public void remove(QName paramQName) {
    this.qNamedMap.remove(paramQName);
    this.namedMap.remove(paramQName.getName());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\DoubleNameMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */