package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;

class OverrideType implements Type {
  private final Class override;
  
  private final Type type;
  
  public OverrideType(Type paramType, Class paramClass) {
    this.override = paramClass;
    this.type = paramType;
  }
  
  public <T extends java.lang.annotation.Annotation> T getAnnotation(Class<T> paramClass) {
    return (T)this.type.getAnnotation(paramClass);
  }
  
  public Class getType() {
    return this.override;
  }
  
  public String toString() {
    return this.type.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\OverrideType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */