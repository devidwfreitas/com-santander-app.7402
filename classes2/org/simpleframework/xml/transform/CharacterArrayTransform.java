package org.simpleframework.xml.transform;

import java.lang.reflect.Array;

class CharacterArrayTransform implements Transform {
  private final Class entry;
  
  public CharacterArrayTransform(Class paramClass) {
    this.entry = paramClass;
  }
  
  private Object read(char[] paramArrayOfchar, int paramInt) {
    Object object = Array.newInstance(this.entry, paramInt);
    for (int i = 0; i < paramInt; i++)
      Array.set(object, i, Character.valueOf(paramArrayOfchar[i])); 
    return object;
  }
  
  private String write(Object paramObject, int paramInt) {
    StringBuilder stringBuilder = new StringBuilder(paramInt);
    for (int i = 0; i < paramInt; i++) {
      Object object = Array.get(paramObject, i);
      if (object != null)
        stringBuilder.append(object); 
    } 
    return stringBuilder.toString();
  }
  
  public Object read(String paramString) {
    char[] arrayOfChar = paramString.toCharArray();
    int i = arrayOfChar.length;
    return (this.entry == char.class) ? arrayOfChar : read(arrayOfChar, i);
  }
  
  public String write(Object paramObject) {
    int i = Array.getLength(paramObject);
    return (this.entry == char.class) ? new String((char[])paramObject) : write(paramObject, i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\CharacterArrayTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */