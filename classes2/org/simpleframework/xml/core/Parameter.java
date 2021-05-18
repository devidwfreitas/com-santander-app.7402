package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;

interface Parameter {
  Annotation getAnnotation();
  
  Expression getExpression();
  
  int getIndex();
  
  Object getKey();
  
  String getName();
  
  String getPath();
  
  Class getType();
  
  boolean isAttribute();
  
  boolean isPrimitive();
  
  boolean isRequired();
  
  boolean isText();
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Parameter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */