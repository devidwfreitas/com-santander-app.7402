package org.simpleframework.xml.transform;

import java.lang.reflect.Array;

class ArrayTransform implements Transform {
  private final Transform delegate;
  
  private final Class entry;
  
  private final StringArrayTransform split = new StringArrayTransform();
  
  public ArrayTransform(Transform paramTransform, Class paramClass) {
    this.delegate = paramTransform;
    this.entry = paramClass;
  }
  
  private Object read(String[] paramArrayOfString, int paramInt) {
    Object object = Array.newInstance(this.entry, paramInt);
    for (int i = 0; i < paramInt; i++) {
      Object object1 = this.delegate.read(paramArrayOfString[i]);
      if (object1 != null)
        Array.set(object, i, object1); 
    } 
    return object;
  }
  
  private String write(Object paramObject, int paramInt) {
    String[] arrayOfString = new String[paramInt];
    for (int i = 0; i < paramInt; i++) {
      Object object = Array.get(paramObject, i);
      if (object != null)
        arrayOfString[i] = this.delegate.write(object); 
    } 
    return this.split.write(arrayOfString);
  }
  
  public Object read(String paramString) {
    String[] arrayOfString = this.split.read(paramString);
    return read(arrayOfString, arrayOfString.length);
  }
  
  public String write(Object paramObject) {
    return write(paramObject, Array.getLength(paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\ArrayTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */