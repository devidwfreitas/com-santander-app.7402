package org.simpleframework.xml.core;

class InstanceFactory$ClassInstance implements Instance {
  private Class type;
  
  private Object value;
  
  public InstanceFactory$ClassInstance(Class paramClass) {
    this.type = paramClass;
  }
  
  public Object getInstance() {
    if (this.value == null)
      this.value = InstanceFactory.this.getObject(this.type); 
    return this.value;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isReference() {
    return false;
  }
  
  public Object setInstance(Object paramObject) {
    this.value = paramObject;
    return paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\InstanceFactory$ClassInstance.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */