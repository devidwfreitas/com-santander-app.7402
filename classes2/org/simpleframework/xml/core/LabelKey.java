package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;

class LabelKey {
  private final Class label;
  
  private final String name;
  
  private final Class owner;
  
  private final Class type;
  
  public LabelKey(Contact paramContact, Annotation paramAnnotation) {
    this.owner = paramContact.getDeclaringClass();
    this.label = paramAnnotation.annotationType();
    this.name = paramContact.getName();
    this.type = paramContact.getType();
  }
  
  private boolean equals(LabelKey paramLabelKey) {
    boolean bool2 = false;
    if (paramLabelKey == this)
      return true; 
    boolean bool1 = bool2;
    if (paramLabelKey.label == this.label) {
      bool1 = bool2;
      if (paramLabelKey.owner == this.owner) {
        bool1 = bool2;
        if (paramLabelKey.type == this.type)
          return paramLabelKey.name.equals(this.name); 
      } 
    } 
    return bool1;
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof LabelKey) ? equals((LabelKey)paramObject) : false;
  }
  
  public int hashCode() {
    return this.name.hashCode() ^ this.owner.hashCode();
  }
  
  public String toString() {
    return String.format("key '%s' for %s", new Object[] { this.name, this.owner });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\LabelKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */