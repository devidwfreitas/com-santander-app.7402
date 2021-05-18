package org.simpleframework.xml.strategy;

import java.util.Map;

class Allocate implements Value {
  private String key;
  
  private Map map;
  
  private Value value;
  
  public Allocate(Value paramValue, Map paramMap, String paramString) {
    this.value = paramValue;
    this.map = paramMap;
    this.key = paramString;
  }
  
  public int getLength() {
    return this.value.getLength();
  }
  
  public Class getType() {
    return this.value.getType();
  }
  
  public Object getValue() {
    return this.map.get(this.key);
  }
  
  public boolean isReference() {
    return false;
  }
  
  public void setValue(Object paramObject) {
    if (this.key != null)
      this.map.put(this.key, paramObject); 
    this.value.setValue(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Allocate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */