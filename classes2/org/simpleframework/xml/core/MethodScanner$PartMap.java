package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;

class MethodScanner$PartMap extends LinkedHashMap<String, MethodPart> implements Iterable<String> {
  private MethodScanner$PartMap() {}
  
  public Iterator<String> iterator() {
    return keySet().iterator();
  }
  
  public MethodPart take(String paramString) {
    return remove(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MethodScanner$PartMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */