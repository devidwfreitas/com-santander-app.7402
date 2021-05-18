package org.simpleframework.xml.strategy;

class ArrayValue implements Value {
  private int size;
  
  private Class type;
  
  private Object value;
  
  public ArrayValue(Class paramClass, int paramInt) {
    this.type = paramClass;
    this.size = paramInt;
  }
  
  public int getLength() {
    return this.size;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public Object getValue() {
    return this.value;
  }
  
  public boolean isReference() {
    return false;
  }
  
  public void setValue(Object paramObject) {
    this.value = paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\ArrayValue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */