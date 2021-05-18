package org.simpleframework.xml.core;

enum KeyBuilder$KeyType {
  ATTRIBUTE, ELEMENT, TEXT;
  
  static {
    ATTRIBUTE = new KeyBuilder$KeyType("ATTRIBUTE", 1);
    ELEMENT = new KeyBuilder$KeyType("ELEMENT", 2);
    $VALUES = new KeyBuilder$KeyType[] { TEXT, ATTRIBUTE, ELEMENT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\KeyBuilder$KeyType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */