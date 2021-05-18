package org.simpleframework.xml.convert;

import org.simpleframework.xml.strategy.Value;

class Reference implements Value {
  private Class actual;
  
  private Object data;
  
  private Value value;
  
  public Reference(Value paramValue, Object paramObject, Class paramClass) {
    this.actual = paramClass;
    this.value = paramValue;
    this.data = paramObject;
  }
  
  public int getLength() {
    return 0;
  }
  
  public Class getType() {
    return (this.data != null) ? this.data.getClass() : this.actual;
  }
  
  public Object getValue() {
    return this.data;
  }
  
  public boolean isReference() {
    return true;
  }
  
  public void setValue(Object paramObject) {
    if (this.value != null)
      this.value.setValue(paramObject); 
    this.data = paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\Reference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */