package org.simpleframework.xml.stream;

enum Formatter$Tag {
  COMMENT, END, START, TEXT;
  
  static {
    END = new Formatter$Tag("END", 3);
    $VALUES = new Formatter$Tag[] { COMMENT, START, TEXT, END };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Formatter$Tag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */