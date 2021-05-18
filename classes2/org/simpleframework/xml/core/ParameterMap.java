package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

class ParameterMap extends LinkedHashMap<Object, Parameter> implements Iterable<Parameter> {
  public Parameter get(int paramInt) {
    return getAll().get(paramInt);
  }
  
  public List<Parameter> getAll() {
    Collection<Parameter> collection = values();
    return !collection.isEmpty() ? new ArrayList<Parameter>(collection) : Collections.emptyList();
  }
  
  public Iterator<Parameter> iterator() {
    return values().iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ParameterMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */