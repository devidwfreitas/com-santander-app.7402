package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;

class Collector$Registry extends LinkedHashMap<Object, Variable> {
  private Collector$Registry() {}
  
  public Iterator<Object> iterator() {
    return keySet().iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Collector$Registry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */