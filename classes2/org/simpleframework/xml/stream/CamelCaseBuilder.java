package org.simpleframework.xml.stream;

class CamelCaseBuilder implements Style {
  protected final boolean attribute;
  
  protected final boolean element;
  
  public CamelCaseBuilder(boolean paramBoolean1, boolean paramBoolean2) {
    this.attribute = paramBoolean2;
    this.element = paramBoolean1;
  }
  
  public String getAttribute(String paramString) {
    String str = null;
    if (paramString != null)
      str = (new CamelCaseBuilder$Attribute(this, paramString, null)).process(); 
    return str;
  }
  
  public String getElement(String paramString) {
    String str = null;
    if (paramString != null)
      str = (new CamelCaseBuilder$Element(this, paramString, null)).process(); 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\CamelCaseBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */