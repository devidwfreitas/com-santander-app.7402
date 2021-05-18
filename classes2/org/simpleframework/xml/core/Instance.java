package org.simpleframework.xml.core;

interface Instance {
  Object getInstance();
  
  Class getType();
  
  boolean isReference();
  
  Object setInstance(Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Instance.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */