package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

class ObjectInstance implements Instance {
  private final Context context;
  
  private final Class type;
  
  private final Value value;
  
  public ObjectInstance(Context paramContext, Value paramValue) {
    this.type = paramValue.getType();
    this.context = paramContext;
    this.value = paramValue;
  }
  
  public Object getInstance() {
    if (this.value.isReference())
      return this.value.getValue(); 
    Object object2 = getInstance(this.type);
    Object object1 = object2;
    if (this.value != null) {
      this.value.setValue(object2);
      return object2;
    } 
    return object1;
  }
  
  public Object getInstance(Class paramClass) {
    return this.context.getInstance(paramClass).getInstance();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ObjectInstance.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */