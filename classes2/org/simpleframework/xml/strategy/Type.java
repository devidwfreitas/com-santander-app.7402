package org.simpleframework.xml.strategy;

public interface Type {
  <T extends java.lang.annotation.Annotation> T getAnnotation(Class<T> paramClass);
  
  Class getType();
  
  String toString();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Type.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */