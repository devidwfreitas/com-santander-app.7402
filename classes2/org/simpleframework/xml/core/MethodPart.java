package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

interface MethodPart {
  Annotation getAnnotation();
  
  <T extends Annotation> T getAnnotation(Class<T> paramClass);
  
  Class getDeclaringClass();
  
  Class getDependent();
  
  Class[] getDependents();
  
  Method getMethod();
  
  MethodType getMethodType();
  
  String getName();
  
  Class getType();
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MethodPart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */