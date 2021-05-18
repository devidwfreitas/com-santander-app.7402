package org.simpleframework.xml.core;

interface Creator {
  Object getInstance();
  
  Object getInstance(Criteria paramCriteria);
  
  double getScore(Criteria paramCriteria);
  
  Signature getSignature();
  
  Class getType();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Creator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */