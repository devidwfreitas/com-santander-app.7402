package org.simpleframework.xml.core;

import java.lang.reflect.Method;

class MethodName {
  private Method method;
  
  private String name;
  
  private MethodType type;
  
  public MethodName(Method paramMethod, MethodType paramMethodType, String paramString) {
    this.method = paramMethod;
    this.type = paramMethodType;
    this.name = paramString;
  }
  
  public Method getMethod() {
    return this.method;
  }
  
  public String getName() {
    return this.name;
  }
  
  public MethodType getType() {
    return this.type;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\MethodName.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */