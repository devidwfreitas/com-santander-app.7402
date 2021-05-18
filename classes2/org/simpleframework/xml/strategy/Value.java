package org.simpleframework.xml.strategy;

public interface Value {
  int getLength();
  
  Class getType();
  
  Object getValue();
  
  boolean isReference();
  
  void setValue(Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Value.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */