package org.simpleframework.xml.core;

enum MethodType {
  GET(3),
  IS(2),
  NONE(2),
  SET(3);
  
  private int prefix;
  
  static {
    NONE = new MethodType("NONE", 3, 0);
    $VALUES = new MethodType[] { GET, IS, SET, NONE };
  }
  
  MethodType(int paramInt1) {
    this.prefix = paramInt1;
  }
  
  public int getPrefix() {
    return this.prefix;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MethodType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */