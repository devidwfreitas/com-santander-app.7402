package org.simpleframework.xml.core;

class KeyBuilder$Key {
  private final KeyBuilder$KeyType type;
  
  private final String value;
  
  public KeyBuilder$Key(KeyBuilder$KeyType paramKeyBuilder$KeyType, String paramString) {
    this.value = paramString;
    this.type = paramKeyBuilder$KeyType;
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof KeyBuilder$Key) ? equals((KeyBuilder$Key)paramObject) : false;
  }
  
  public boolean equals(KeyBuilder$Key paramKeyBuilder$Key) {
    return (this.type == paramKeyBuilder$Key.type) ? paramKeyBuilder$Key.value.equals(this.value) : false;
  }
  
  public int hashCode() {
    return this.value.hashCode();
  }
  
  public String toString() {
    return this.value;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\KeyBuilder$Key.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */