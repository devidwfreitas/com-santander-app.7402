package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;

class ClassType implements Type {
  private final Class type;
  
  public ClassType(Class paramClass) {
    this.type = paramClass;
  }
  
  public <T extends java.lang.annotation.Annotation> T getAnnotation(Class<T> paramClass) {
    return null;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public String toString() {
    return this.type.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ClassType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */