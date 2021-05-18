package org.simpleframework.xml.core;

interface Extractor<T extends java.lang.annotation.Annotation> {
  T[] getAnnotations();
  
  Label getLabel(T paramT);
  
  Class getType(T paramT);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Extractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */