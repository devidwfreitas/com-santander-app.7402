package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

interface Contact extends Type {
  Object get(Object paramObject);
  
  Annotation getAnnotation();
  
  Class getDeclaringClass();
  
  Class getDependent();
  
  Class[] getDependents();
  
  String getName();
  
  boolean isReadOnly();
  
  void set(Object paramObject1, Object paramObject2);
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Contact.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */