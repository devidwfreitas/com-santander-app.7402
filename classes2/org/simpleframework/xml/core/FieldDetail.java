package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

class FieldDetail {
  private final Field field;
  
  private final Annotation[] list;
  
  private final String name;
  
  public FieldDetail(Field paramField) {
    this.list = paramField.getDeclaredAnnotations();
    this.name = paramField.getName();
    this.field = paramField;
  }
  
  public Annotation[] getAnnotations() {
    return this.list;
  }
  
  public Field getField() {
    return this.field;
  }
  
  public String getName() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\FieldDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */