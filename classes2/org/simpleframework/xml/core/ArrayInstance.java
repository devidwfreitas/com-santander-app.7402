package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Value;

class ArrayInstance implements Instance {
  private final int length;
  
  private final Class type;
  
  private final Value value;
  
  public ArrayInstance(Value paramValue) {
    this.length = paramValue.getLength();
    this.type = paramValue.getType();
    this.value = paramValue;
  }
  
  public Object getInstance() {
    if (this.value.isReference())
      return this.value.getValue(); 
    Object object2 = Array.newInstance(this.type, this.length);
    Object object1 = object2;
    if (this.value != null) {
      this.value.setValue(object2);
      return object2;
    } 
    return object1;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isReference() {
    return this.value.isReference();
  }
  
  public Object setInstance(Object paramObject) {
    if (this.value != null)
      this.value.setValue(paramObject); 
    return paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ArrayInstance.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */