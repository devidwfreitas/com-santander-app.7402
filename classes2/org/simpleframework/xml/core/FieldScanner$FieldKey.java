package org.simpleframework.xml.core;

import java.lang.reflect.Field;

class FieldScanner$FieldKey {
  private final String name;
  
  private final Class type;
  
  public FieldScanner$FieldKey(Field paramField) {
    this.type = paramField.getDeclaringClass();
    this.name = paramField.getName();
  }
  
  private boolean equals(FieldScanner$FieldKey paramFieldScanner$FieldKey) {
    return (paramFieldScanner$FieldKey.type != this.type) ? false : paramFieldScanner$FieldKey.name.equals(this.name);
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof FieldScanner$FieldKey) ? equals((FieldScanner$FieldKey)paramObject) : false;
  }
  
  public int hashCode() {
    return this.name.hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\FieldScanner$FieldKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */