package org.simpleframework.xml.core;

interface Criteria extends Iterable<Object> {
  void commit(Object paramObject);
  
  Variable get(Object paramObject);
  
  Variable get(Label paramLabel);
  
  Variable remove(Object paramObject);
  
  Variable resolve(String paramString);
  
  void set(Label paramLabel, Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Criteria.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */