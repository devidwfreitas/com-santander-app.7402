package org.simpleframework.xml.core;

import java.util.Iterator;

class Collector implements Criteria {
  private final Collector$Registry alias = new Collector$Registry(null);
  
  private final Collector$Registry registry = new Collector$Registry(null);
  
  public void commit(Object paramObject) {
    for (Variable variable : this.registry.values())
      variable.getContact().set(paramObject, variable.getValue()); 
  }
  
  public Variable get(Object paramObject) {
    return this.registry.get(paramObject);
  }
  
  public Variable get(Label paramLabel) {
    if (paramLabel != null) {
      Object object = paramLabel.getKey();
      return this.registry.get(object);
    } 
    return null;
  }
  
  public Iterator<Object> iterator() {
    return this.registry.iterator();
  }
  
  public Variable remove(Object paramObject) {
    return this.registry.remove(paramObject);
  }
  
  public Variable resolve(String paramString) {
    return this.alias.get(paramString);
  }
  
  public void set(Label paramLabel, Object paramObject) {
    paramObject = new Variable(paramLabel, paramObject);
    if (paramLabel != null) {
      String[] arrayOfString = paramLabel.getPaths();
      Object object = paramLabel.getKey();
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++) {
        String str = arrayOfString[i];
        this.alias.put(str, (Variable)paramObject);
      } 
      this.registry.put(object, (Variable)paramObject);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Collector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */