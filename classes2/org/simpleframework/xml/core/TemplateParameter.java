package org.simpleframework.xml.core;

abstract class TemplateParameter implements Parameter {
  public boolean isAttribute() {
    return false;
  }
  
  public boolean isText() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TemplateParameter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */