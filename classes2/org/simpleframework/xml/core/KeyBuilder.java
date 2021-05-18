package org.simpleframework.xml.core;

import java.util.Arrays;

class KeyBuilder {
  private final Label label;
  
  public KeyBuilder(Label paramLabel) {
    this.label = paramLabel;
  }
  
  private Object getKey(KeyBuilder$KeyType paramKeyBuilder$KeyType) {
    String str = getKey(this.label.getPaths());
    return (paramKeyBuilder$KeyType == null) ? str : new KeyBuilder$Key(paramKeyBuilder$KeyType, str);
  }
  
  private String getKey(String[] paramArrayOfString) {
    StringBuilder stringBuilder = new StringBuilder();
    if (paramArrayOfString.length > 0) {
      Arrays.sort((Object[])paramArrayOfString);
      int j = paramArrayOfString.length;
      for (int i = 0; i < j; i++) {
        stringBuilder.append(paramArrayOfString[i]);
        stringBuilder.append('>');
      } 
    } 
    return stringBuilder.toString();
  }
  
  public Object getKey() {
    return this.label.isAttribute() ? getKey(KeyBuilder$KeyType.ATTRIBUTE) : getKey(KeyBuilder$KeyType.ELEMENT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\KeyBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */