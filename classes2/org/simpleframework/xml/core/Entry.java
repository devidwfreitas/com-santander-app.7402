package org.simpleframework.xml.core;

import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;

class Entry {
  private static final String DEFAULT_NAME = "entry";
  
  private boolean attribute;
  
  private Contact contact;
  
  private String entry;
  
  private String key;
  
  private Class keyType;
  
  private ElementMap label;
  
  private String value;
  
  private Class valueType;
  
  public Entry(Contact paramContact, ElementMap paramElementMap) {
    this.attribute = paramElementMap.attribute();
    this.entry = paramElementMap.entry();
    this.value = paramElementMap.value();
    this.key = paramElementMap.key();
    this.contact = paramContact;
    this.label = paramElementMap;
  }
  
  private Class getDependent(int paramInt) {
    Class[] arrayOfClass = this.contact.getDependents();
    return (arrayOfClass.length < paramInt) ? Object.class : ((arrayOfClass.length == 0) ? Object.class : arrayOfClass[paramInt]);
  }
  
  private boolean isEmpty(String paramString) {
    return (paramString.length() == 0);
  }
  
  public Contact getContact() {
    return this.contact;
  }
  
  public String getEntry() {
    if (this.entry == null)
      return this.entry; 
    if (isEmpty(this.entry))
      this.entry = "entry"; 
    return this.entry;
  }
  
  public String getKey() {
    if (this.key == null)
      return this.key; 
    if (isEmpty(this.key))
      this.key = null; 
    return this.key;
  }
  
  public Converter getKey(Context paramContext) {
    Type type = getKeyType();
    return (Converter)(paramContext.isPrimitive(type) ? new PrimitiveKey(paramContext, this, type) : new CompositeKey(paramContext, this, type));
  }
  
  protected Type getKeyType() {
    if (this.keyType == null) {
      this.keyType = this.label.keyType();
      if (this.keyType == void.class)
        this.keyType = getDependent(0); 
    } 
    return new ClassType(this.keyType);
  }
  
  public String getValue() {
    if (this.value == null)
      return this.value; 
    if (isEmpty(this.value))
      this.value = null; 
    return this.value;
  }
  
  public Converter getValue(Context paramContext) {
    Type type = getValueType();
    return (Converter)(paramContext.isPrimitive(type) ? new PrimitiveValue(paramContext, this, type) : new CompositeValue(paramContext, this, type));
  }
  
  protected Type getValueType() {
    if (this.valueType == null) {
      this.valueType = this.label.valueType();
      if (this.valueType == void.class)
        this.valueType = getDependent(1); 
    } 
    return new ClassType(this.valueType);
  }
  
  public boolean isAttribute() {
    return this.attribute;
  }
  
  public boolean isInline() {
    return isAttribute();
  }
  
  public String toString() {
    return String.format("%s on %s", new Object[] { this.label, this.contact });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */